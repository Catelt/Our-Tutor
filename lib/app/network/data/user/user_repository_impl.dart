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
      List<MLearnTopic>? learnTopics,
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

  @override
  Future<MResult<MUser>> becomeTutor(
      {required String name,
      required String country,
      required String birthday,
      required String interests,
      required String education,
      required String experience,
      required String profession,
      required String languages,
      required String bio,
      required String targetStudent,
      required String specialties,
      String? avatar,
      String? video,
      required int price}) async {
    try {
      final response = await XHttp().put('/tutor/register', data: {
        "name": name,
        "country": country,
        "birthday": birthday,
        "interests": interests,
        "education": education,
        "experience": experience,
        "profession": profession,
        "languages": languages,
        "bio": bio,
        "targetStudent": targetStudent,
        "specialties": specialties,
        "price": price,
      });
      final data = MUser.fromJson(jsonDecode(response)["user"]);
      return MResult.success(data);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
