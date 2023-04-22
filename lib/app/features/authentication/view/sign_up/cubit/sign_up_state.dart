part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  final Email email;
  final Password password;
  final bool isPress;
  final MHandle<MUser> handle;

  const SignUpState({
    required this.email,
    required this.password,
    required this.isPress,
    required this.handle,
  });

  factory SignUpState.ds() => SignUpState(
        email: Email.pure(),
        password: Password.pure(),
        isPress: false,
        handle: MHandle(),
      );

  SignUpState copyWith({
    Email? email,
    Password? password,
    bool? isPress,
    MHandle<MUser>? handle,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      isPress: isPress ?? this.isPress,
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props => [email, password, isPress, handle];
}
