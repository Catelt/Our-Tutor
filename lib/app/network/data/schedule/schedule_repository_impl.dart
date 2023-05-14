part of 'schedule_repository.dart';

class ScheduleRepositoryImpl extends ScheduleRepository {
  static final perPage = 20;

  @override
  Future<MResult<List<MBooking>>> getBookedClasses(int page, int time,
      {bool isSchedule = false}) async {
    try {
      final response =
          await XHttp().get('/booking/list/student', queryParameters: {
        'perPage': perPage,
        'page': page,
        isSchedule ? 'dateTimeGte' : 'dateTimeLte': time,
        'orderBy': 'meeting',
        'sortBy': isSchedule ? 'asc' : 'desc',
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

  @override
  Future<MResult<List<MScheduleInfo>>> getScheduleForTutor(String id) async {
    try {
      final response = await XHttp().post('/schedule', data: {
        "tutorId": id,
      });
      final data = jsonDecode(response)['data'];
      List<MScheduleInfo> list = [];
      for (var value in data) {
        list.add(MScheduleInfo.fromJson(value));
      }
      return MResult.success(list);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<bool>> booking(List<String> id, String note) async {
    try {
      final response = await XHttp().post('/booking', data: {
        "scheduleDetailIds": id,
        "note": note,
      });
      return MResult.success(jsonDecode(response)['total']);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<List<MScheduleInfo>>> getScheduleForDate(
      String id, DateTime time) async {
    try {
      final response = await XHttp().get('/schedule', queryParameters: {
        "tutorId": id,
        "startTimestamp": time.getBeginDate.millisecondsSinceEpoch,
        "endTimestamp": time.getEndDate.millisecondsSinceEpoch,
      });
      final data = jsonDecode(response)['scheduleOfTutor'];
      List<MScheduleInfo> list = [];
      for (var value in data) {
        list.add(MScheduleInfo.fromJson(value));
      }
      list.sort((a, b) => a.startTimestamp.compareTo(b.startTimestamp));
      return MResult.success(list);
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }

  @override
  Future<MResult<bool>> cancelBooking(List<String> id, String note) async {
    try {
      final response = await XHttp().delete('/booking', data: {
        "scheduleDetailIds": id,
      });
      return MResult.success(
          jsonDecode(response)['message'].toString().contains("successful"));
    } catch (e) {
      if (e is Exception) return MResult.error(e.message);
      return MResult.error(e.toString());
    }
  }
}
