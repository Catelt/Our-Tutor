part of 'account_cubit.dart';

class AccountState extends Equatable {
  const AccountState({
    required this.user,
    required this.locale,
    required this.themeMode,
  });

  final MUser user;
  final String locale;
  final ThemeMode themeMode;

  factory AccountState.ds() {
    final user = UserPrefs.I.getUser();
    if (user != null) {
      XHttp().setTokenApi(user.accessToken?.id ?? "");
    }
    return AccountState(
      user: user ?? MUser.empty(),
      locale: UserPrefs.I.getLocale(),
      themeMode: UserPrefs.I.getTheme(),
    );
  }

  bool get isLogin => user.id.isNotEmpty; // && token.isNotEmpty

  @override
  List<Object?> get props => [user, locale, themeMode];

  AccountState login(MUser user) {
    return copyWith(user: user);
  }

  AccountState logOut() {
    return copyWith(user: MUser.empty());
  }

  AccountState copyWith({
    MUser? user,
    String? locale,
    ThemeMode? themeMode,
  }) {
    return AccountState(
      user: user ?? this.user,
      locale: locale ?? this.locale,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
