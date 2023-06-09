part of 'course_repository.dart';

class CourseRepositoryImpl extends CourseRepository {
  static final _baseUrl = '/course';
  static final perPage = 10;

  @override
  Future<MResult<List<MCourse>>> getList(int page,
      {String? name,
      List<String> level = const [],
      List<String> categoryId = const [],
      bool? sort}) async {
    try {
      Map<String, dynamic> queryParam = {
        'size': perPage,
        'page': page,
        'q': name?.isNotEmpty == true ? name : null,
        'order[]': sort != null ? 'level' : null,
        'orderBy[]': sort != null
            ? sort == true
                ? 'ASC'
                : 'DESC'
            : null,
      };
      level.forEach((element) {
        Map<String, dynamic> data = {'level[]': element};
        queryParam = {...queryParam, ...data};
      });

      categoryId.forEach((element) {
        Map<String, dynamic> data = {'categoryId[]': element};
        queryParam = {...queryParam, ...data};
      });
      queryParam.removeWhere((key, value) => value == null);
      print(queryParam);
      final response =
          await XHttp().get('$_baseUrl', queryParameters: queryParam);
      final data = MCourseResponse.fromJson(jsonDecode(response)["data"]);
      return MResult.success(data.rows);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<MCourse>> getDetailCourse(String id) async {
    try {
      final response = await XHttp().get('$_baseUrl/$id');
      final data = MCourse.fromJson(jsonDecode(response)['data']);
      return MResult.success(data);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
