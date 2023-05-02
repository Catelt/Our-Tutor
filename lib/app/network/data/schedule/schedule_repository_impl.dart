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

  @override
  Future<MResult<List<MBooking>>> getNextBooked(int time) async {
    try {
      final response = await XHttp().get('/booking/next', queryParameters: {
        'dateTime': time,
      });
      final data = jsonDecode(response)['data'];
      List<MBooking> list = [];
      for (var value in data) {
        list.add(MBooking.fromJson(value));
      }
      final now = DateTime.now();
      list = list.where((e) {
        final time = DateTime.fromMillisecondsSinceEpoch(
            e.scheduleDetailInfo.endPeriodTimestamp.round());
        return time.isAfter(now);
      }).toList();

      list.sort((a, b) => a.scheduleDetailInfo.endPeriodTimestamp
          .compareTo(b.scheduleDetailInfo.endPeriodTimestamp));
      return MResult.success(list);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<int>> getTotalTimeLearn() async {
    try {
      final response = await XHttp().get('/call/total');
      return MResult.success(jsonDecode(response)['total']);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
