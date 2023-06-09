part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final bool isPress;
  final MHandle<MUser> handle;

  const SignUpState({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.isPress,
    required this.handle,
  });

  factory SignUpState.ds() => SignUpState(
        email: Email.pure(),
        password: Password.pure(),
        confirmPassword: ConfirmPassword.pure(),
        isPress: false,
        handle: MHandle(),
      );

  SignUpState copyWith({
    Email? email,
    Password? password,
    ConfirmPassword? confirmPassword,
    bool? isPress,
    MHandle<MUser>? handle,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      isPress: isPress ?? this.isPress,
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props =>
      [email, password, isPress, handle, confirmPassword];
}
