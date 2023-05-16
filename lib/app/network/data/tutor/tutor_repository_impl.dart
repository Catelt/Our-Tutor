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
      Map<String, bool> nationality = const {},
      String? search}) async {
    try {
      final response = await XHttp().post('$_baseUrl/search', data: {
        'perPage': perPage,
        'page': page,
        'search': search,
        'filters': {'specialties': specialties, 'nationality': nationality},
      });
      final data = MTutors.fromJson(jsonDecode(response));
      return MResult.success(data.rows);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<bool>> favoriteTutor(String id) async {
    try {
      final response = await XHttp().post('/user/manageFavoriteTutor', data: {
        "tutorId": id,
      });

      final data = jsonDecode(response);
      return MResult.success(data['message'] == 'Manage success');
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<List<MFeedback>>> getFeedbackTutor(String id, int page) async {
    try {
      final response = await XHttp().get('/feedback/v2/$id', queryParameters: {
        'perPage': perPage,
        'page': page,
      });
      final data = MFeedbackResponse.fromJson(jsonDecode(response)['data']);
      return MResult.success(data.list);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<bool>> reportTutor(String id, String content) async {
    try {
      final response = await XHttp().post('/report', data: {
        "content": content,
        "tutorId": id,
      });
      final data = jsonDecode(response);
      return MResult.success(data['message'] == 'Report successfully');
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
