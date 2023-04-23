part of 'tutor_repository.dart';

class TutorRepositoryImpl extends TutorRepository {
  static final _baseUrl = '/tutor';
  static final perPage = 10;

  @override
  Future<MResult<List<MTutor>>> getList(int page) async {
    try {
      final response = await XHttp().get('$_baseUrl/more', queryParameters: {
        'perPage': perPage,
        'page': page,
      });
      final data = MTutorResponse.fromJson(jsonDecode(response));
      return MResult.success(data.tutors.rows);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
