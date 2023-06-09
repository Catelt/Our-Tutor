part of 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  static final _baseUrl = '/auth';
  @override
  Future<MResult<MUser>> login(String email, String password) async {
    try {
      final response = await XHttp().post('$_baseUrl/login',
          data: {'email': email, 'password': password});
      final data = MAuthResponse.fromJson(jsonDecode(response));
      return MResult.success(MUser.userFromAuthResponse(data));
    } catch (e) {
      if (e is Exception) {
        return MResult.error(e.message);
      }
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<MUser>> register(String email, String password) async {
    try {
      final response = await XHttp().post('$_baseUrl/register',
          data: {'email': email, 'password': password});
      final data = MAuthResponse.fromJson(jsonDecode(response));
      return MResult.success(MUser.userFromAuthResponse(data));
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<MUser>> refreshToken(String token, {int timezone = 7}) async {
    try {
      final response = await XHttp().post('$_baseUrl/refresh-token',
          data: {'refreshToken': token, 'timezone': timezone});
      final data = MAuthResponse.fromJson(jsonDecode(response));
      return MResult.success(MUser.userFromAuthResponse(data));
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<MUser>> loginGG(String token) async {
    try {
      final response = await XHttp()
          .post('$_baseUrl/google', data: jsonEncode({"access_token": token}));
      final data = MAuthResponse.fromJson(jsonDecode(response));
      return MResult.success(MUser.userFromAuthResponse(data));
    } catch (e) {
      return MResult.error(e.toString());
    }
  }
}
