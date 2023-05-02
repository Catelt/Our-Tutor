import 'dart:convert';

import '../../../utils/extension/exception .dart';
import '../../model/api/history_response/history_response.dart';
import '../../model/booking/booking.dart';
import '../../model/common/result.dart';
import '../common/http.dart';

part 'schedule_repository_impl.dart';

abstract class ScheduleRepository {
  Future<MResult<List<MBooking>>> getBookedClasses(int page, int time);
  Future<MResult<List<MBooking>>> getNextBooked(int time);
  Future<MResult<int>> getTotalTimeLearn();
}
