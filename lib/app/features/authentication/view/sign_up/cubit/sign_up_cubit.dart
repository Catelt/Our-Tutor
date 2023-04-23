import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/user/user.dart';
import '../../../models/models.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpState.ds());

  final domain = DomainManager.I;

  void onChangEmail(String value) {
    emit(state.copyWith(email: Email.dirty(value)));
  }

  void onChangPassword(String value) {
    emit(state.copyWith(password: Password.dirty(value)));
  }

  void register() async {
    emit(state.copyWith(isPress: true));
    if (state.email.isValid && state.password.isValid) {
      emit(state.copyWith(handle: MHandle.loading()));

      final response =
          await domain.auth.register(state.email.value, state.password.value);
      if (response.isSuccess) {
        final user = response.data;
        if (user != null) {
          emit(state.copyWith(handle: MHandle.completed(user)));
        }
      } else {
        emit(state.copyWith(handle: MHandle.error(response.error)));
      }
    }
  }
}
