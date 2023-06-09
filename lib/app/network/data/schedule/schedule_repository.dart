import 'dart:convert';

import '../../../utils/extension/datetime.dart';
import '../../../utils/extension/exception .dart';
import '../../model/api/history_response/history_response.dart';
import '../../model/booking/booking.dart';
import '../../model/common/result.dart';
import '../../model/schedule/schedule_info.dart';
import '../common/http.dart';

part 'schedule_repository_impl.dart';

abstract class ScheduleRepository {
  Future<MResult<List<MBooking>>> getBookedClasses(int page, int time,
      {bool isSchedule = false});
  Future<MResult<List<MBooking>>> getNextBooked(int time);
  Future<MResult<int>> getTotalTimeLearn();
  Future<MResult<List<MScheduleInfo>>> getScheduleForTutor(String id);
  Future<MResult<List<MScheduleInfo>>> getScheduleForDate(
      String id, DateTime time);
  Future<MResult<bool>> booking(List<String> id, String note);
  Future<MResult<bool>> cancelBooking(List<String> id, String note);
}
