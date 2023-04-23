import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../models/models.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordState.ds());
  final domain = DomainManager.I;

  void onChangEmail(String value) {
    emit(state.copyWith(email: Email.dirty(value)));
  }

  void forgotPassword() async {
    emit(state.copyWith(isPress: true));
    if (state.email.isValid) {
      emit(state.copyWith(handle: MHandle.loading()));
      final response = await domain.user.forgotPassword(state.email.value);
      emit(state.copyWith(handle: MHandle.result(response)));
    }
  }
}
