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

  @override
  Future<MResult<MUser>> updateProfile(
      {String? name,
      String? country,
      String? phone,
      String? birthday,
      String? level,
      List<String>? learnTopics,
      String? studySchedule}) async {
    try {
      final response = await XHttp().put('$_baseUrl/info', data: {
        "name": name,
        "country": country,
        "phone": phone,
        "birthday": birthday,
        "level": level,
        "studySchedule": studySchedule
      });
      final data = MUser.fromJson(jsonDecode(response)["user"]);
      return MResult.success(data);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<MUser>> changeAvatar(String path, {String? name}) async {
    try {
      String fileName = name ?? path.split('/').last;
      FormData formData = FormData.fromMap({
        "avatar": await MultipartFile.fromFile(path, filename: fileName),
      });
      final response =
          await XHttp().post('$_baseUrl/uploadAvatar', data: formData);
      final data = MUser.fromJson(jsonDecode(response));
      return MResult.success(data);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
