import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/extension/datetime.dart';
import '../tutor/tutor.dart';
import 'schedule.dart';

part 'schedule_info.freezed.dart';
part 'schedule_info.g.dart';

@unfreezed
class MScheduleInfo with _$MScheduleInfo {
  MScheduleInfo._();
  factory MScheduleInfo({
    @Default("") String date,
    @Default(0) double startTimestamp,
    @Default(0) double endTimestamp,
    @Default("") String id,
    @Default("") String tutorId,
    @Default("") String startTime,
    @Default("") String endTime,
    @Default(false) bool isDeleted,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(false) bool isBooked,
    MTutor? tutorInfo,
    @Default([]) List<MSchedule> scheduleDetails,
  }) = _MScheduleInfo;

  DateTime getStartTime() {
    return DateTime.fromMillisecondsSinceEpoch(startTimestamp.round());
  }

  String get startTimeStr {
    return XDateFormat().time.format(getStartTime());
  }

  DateTime getEndTime() {
    return DateTime.fromMillisecondsSinceEpoch(endTimestamp.round());
  }

  String get endTimeStr {
    return XDateFormat().time.format(getEndTime());
  }

  factory MScheduleInfo.fromJson(Map<String, Object?> json) =>
      _$MScheduleInfoFromJson(json);
}
