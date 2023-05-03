import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../dialogs/alert_wrapper.dart';
import '../../../dialogs/widgets/alert_dialog.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/data/common/http.dart';
import '../../../network/domain_manager.dart';
import '../../../network/model/user/user.dart';
import '../../../services/user_prefs.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState.ds()) {
    checkRefreshToken();
  }

  final domain = DomainManager();

  void onLoginSuccess(MUser user) {
    onUserChange(state.login(user));
    updateProfile();
  }

  void updateProfile() async {
    final response = await domain.user.getInfo();
    if (response.isSuccess && response.data != null) {
      final user = response.data;
      if (user != null) {
        onUserChange(state.login(user));
      }
    }
  }

  void checkRefreshToken() async {
    if (state.isLogin) {
      final access = state.user.accessToken;
      final refresh = state.user.refreshToken;
      if (access != null && refresh != null) {
        final now = DateTime.now();
        final refreshDate = DateTime.parse(refresh.expires);
        if (refreshDate.isBefore(now)) {
          onUserChange(state.logOut());
          return;
        }
        final accessDate = DateTime.parse(access.expires);
        if (accessDate.isBefore(now)) {
          final response = await domain.auth.refreshToken(refresh.id);
          if (response.isSuccess) {
            final user = response.data;
            if (user == null) return;
            onUserChange(state.login(user));
          }
        }
      }
    }
  }

  Future onLogOut() async {
    final key = await XAlert.show(
      title: 'Logout',
      body: 'Are you sure you would like to logout?',
      actions: [
        XAlertButton(
          title: S.text.common_yes,
          isDestructiveAction: true,
          key: 'yes',
        ),
        XAlertButton(title: S.text.common_no),
      ],
    );
    if (key == 'yes') {
      onUserChange(state.logOut());
      return true;
    }
    return false;
  }

  void onUserChange(AccountState newState) {
    UserPrefs.instance.setUser(newState.user);
    if (newState.isLogin) {
      final token = newState.user.accessToken?.id;
      if (token != null) {
        XHttp().setTokenApi(token);
      }
    } else {
      XHttp().setTokenApi('');
    }
    emit(newState);
  }

  void onChangeLanguage(String value) {
    if (value.isNotEmpty) {
      UserPrefs.instance.setLocale(value);
      emit(state.copyWith(locale: value));
    }
  }
}
