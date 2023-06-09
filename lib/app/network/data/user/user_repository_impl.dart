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
        "learnTopics": learnTopics?.map((e) => e.id).toList() ?? [],
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
  Future<MResult<MTutor>> becomeTutor(
      {required String name,
      required String country,
      required String birthday,
      required String interests,
      required String education,
      required String experience,
      required String profession,
      List<String> languages = const [],
      required String bio,
      required String targetStudent,
      List<String> specialties = const [],
      required String avatar,
      String? video,
      int? price = 50000}) async {
    try {
      String fileName = avatar.split('/').last;
      FormData formData = FormData.fromMap({
        "avatar": await MultipartFile.fromFile(
          avatar,
          filename: fileName,
          contentType: new MediaType("image", "jpeg"),
        ),
        "name": name,
        "country": country,
        "birthday": birthday,
        "interests": interests,
        "education": education,
        "experience": experience,
        "profession": profession,
        "languages": languages.join(","),
        "bio": bio,
        "targetStudent": targetStudent,
        "specialties": specialties.join(","),
        "price": price,
      });
      final response = await XHttp().post('/tutor/register',
          data: formData,
          baseOptions: XHttp()
              .dio
              .options
              .copyWith(contentType: 'multipart/form-data', headers: {
            'Content-Type': 'multipart/form-data',
            'Authorization': '${XHttp().tokenType} ${XHttp().tokenApi}'
          }));
      final data = MTutor.fromJson(jsonDecode(response));
      return MResult.success(data);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
