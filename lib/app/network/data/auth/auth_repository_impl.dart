part of 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  static final _baseUrl = '/auth';
  @override
  Future<MResult<MUser>> login(String email, String password) async {
    final response = await XHttp()
        .post('$_baseUrl/login', data: {'email': email, 'password': password});
    final data = MAuthResponse.fromJson(jsonDecode(response));
    XHttp().setTokenApi(data.tokens.access.token);
    UserPrefs.I.setToken(data.tokens.access);
    return MResult.success(data.user);
  }
}
