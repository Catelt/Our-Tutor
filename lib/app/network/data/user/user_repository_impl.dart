part of 'user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  static final _baseUrl = '/user';

  @override
  Future<MResult<bool>> forgotPassword(String email) async {
    try {
      final response = await XHttp()
          .post('$_baseUrl/forgotPassword', data: {'email': email});
      return MResult.success(response.contains('200'));
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<MUser>> getInfo() async {
    try {
      final response = await XHttp().get('$_baseUrl/info');
      final data = MUser.fromJson(jsonDecode(response)["user"]);
      return MResult.success(data);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
