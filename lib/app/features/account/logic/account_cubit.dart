import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../dialogs/alert_wrapper.dart';
import '../../../dialogs/widgets/alert_dialog.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/data/common/http.dart';
import '../../../network/model/user/user.dart';
import '../../../services/user_prefs.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState.ds());

  void onLoginSuccess(MUser user) {
    onUserChange(state.login(user));
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
      final token = newState.user.token?.id;
      if (token != null) {
        XHttp().setTokenApi(token);
      }
    } else {
      XHttp().setTokenApi('');
    }
    emit(newState);
  }
}
