part of 'course_repository.dart';

class CourseRepositoryImpl extends CourseRepository {
  static final _baseUrl = '/course';
  static final perPage = 10;

  @override
  Future<MResult<List<MCourse>>> getList(int page) async {
    try {
      final response = await XHttp().get('$_baseUrl', queryParameters: {
        'size': perPage,
        'page': page,
      });
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
