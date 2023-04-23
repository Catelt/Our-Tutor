part of 'forgot_password_cubit.dart';

class ForgotPasswordState extends Equatable {
  final MHandle<bool> handle;
  final Email email;
  final bool isPress;

  const ForgotPasswordState(
      {required this.handle, required this.email, required this.isPress});

  factory ForgotPasswordState.ds() => ForgotPasswordState(
      handle: MHandle(), email: Email.pure(), isPress: false);

  ForgotPasswordState copyWith({
    MHandle<bool>? handle,
    Email? email,
    bool? isPress,
  }) {
    return ForgotPasswordState(
      handle: handle ?? this.handle,
      email: email ?? this.email,
      isPress: isPress ?? this.isPress,
    );
  }

  @override
  List<Object?> get props => [handle, email, isPress];
}
