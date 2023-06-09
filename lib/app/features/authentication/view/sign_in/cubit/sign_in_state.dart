part of 'sign_in_cubit.dart';

class SignInState extends Equatable {
  final Email email;
  final Password password;
  final bool isPress;
  final MHandle<MUser> handle;

  const SignInState({
    required this.email,
    required this.password,
    required this.isPress,
    required this.handle,
  });

  factory SignInState.ds() => SignInState(
        email: Email.pure(),
        password: Password.pure(),
        isPress: false,
        handle: MHandle(),
      );

  SignInState copyWith({
    Email? email,
    Password? password,
    bool? isPress,
    MHandle<MUser>? handle,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isPress: isPress ?? this.isPress,
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props => [email, password, isPress, handle];
}
