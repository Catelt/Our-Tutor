part of 'account_cubit.dart';

class AccountState extends Equatable {
  const AccountState({
    required this.user,
    this.locale = 'vi',
  });

  final MUser user;
  final String locale;

  factory AccountState.ds() {
    final user = UserPrefs.I.getUser();
    if (user != null) {
      XHttp().setTokenApi(user.token?.id ?? "");
    }
    return AccountState(
      user: user ?? MUser.empty(),
    );
  }

  bool get isLogin => user.id.isNotEmpty; // && token.isNotEmpty

  @override
  List<Object?> get props => [user, locale];

  AccountState login(MUser user) {
    return copyWith(user: user);
  }

  AccountState logOut() {
    return copyWith(user: MUser.empty());
  }

  AccountState copyWith({
    MUser? user,
    String? locale,
  }) {
    return AccountState(
      user: user ?? this.user,
      locale: locale ?? this.locale,
    );
  }
}
