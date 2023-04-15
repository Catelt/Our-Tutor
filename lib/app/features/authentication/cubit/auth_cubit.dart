import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../network/domain_manager.dart';
import '../../../network/model/common/handle.dart';
import '../../../network/model/user/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.ds());
  final domain = DomainManager.I;

  void login() async {
    emit(state.copyWith(handle: MHandle.loading()));

    final response = await domain.auth.login("phhai@ymail.com", "123456");
    if (response.isSuccess) {
      final user = response.data;
      if (user != null) {
        emit(state.copyWith(handle: MHandle.completed(user)));
      }
    }
  }
}
