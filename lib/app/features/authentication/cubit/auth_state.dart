// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final MHandle<MUser> handle;

  AuthState({required this.handle});

  factory AuthState.ds() {
    return AuthState(
      handle: MHandle(),
    );
  }

  @override
  List<Object?> get props => [handle];

  AuthState copyWith({
    MHandle<MUser>? handle,
  }) {
    return AuthState(
      handle: handle ?? this.handle,
    );
  }
}
