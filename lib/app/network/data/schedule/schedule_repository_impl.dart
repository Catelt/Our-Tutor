part of 'schedule_repository.dart';

class ScheduleRepositoryImpl extends ScheduleRepository {
  static final perPage = 10;

  @override
  Future<MResult<List<MBooking>>> getBookedClasses(int page, int time) async {
    try {
      final response =
          await XHttp().get('/booking/list/student', queryParameters: {
        'perPage': perPage,
        'page': page,
        'dateTimeLte': time,
        'orderBy': 'meeting',
        'sortBy': 'desc',
      });
      final data = MHistoryResponse.fromJson(jsonDecode(response)['data']);
      return MResult.success(data.list);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
