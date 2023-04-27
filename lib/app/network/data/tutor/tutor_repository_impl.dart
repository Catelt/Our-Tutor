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

  @override
  Future<MResult<MTutor>> getDetailTutor(String id) async {
    try {
      final response = await XHttp().get('$_baseUrl/$id');
      final data = MTutorDetailResponse.fromJson(jsonDecode(response));
      final tutor = MTutor.fromTutorDetailResponse(data);
      return MResult.success(tutor);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<List<MTutor>>> search(int page,
      {List<String>? specialties,
      List<bool>? nationality,
      String? search}) async {
    try {
      final response = await XHttp().post('$_baseUrl/search', data: {
        'perPage': perPage,
        'page': page,
        'search': search,
        'filters': {
          'specialties': specialties,
        },
      });
      final data = MTutors.fromJson(jsonDecode(response));
      return MResult.success(data.rows);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
