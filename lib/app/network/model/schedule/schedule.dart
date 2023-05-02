import 'package:freezed_annotation/freezed_annotation.dart';

import 'schedule_info.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@unfreezed
class MSchedule with _$MSchedule {
  factory MSchedule({
    @Default(0) double createdAtTimeStamp,
    @Default(0) double updatedAtTimeStamp,
    @Default("") String id,
    @Default("") String scheduleId,
    @Default("") String startPeriod,
    @Default("") String endPeriod,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    MScheduleInfo? scheduleInfo,
  }) = _MSchedule;

  factory MSchedule.fromJson(Map<String, Object?> json) =>
      _$MScheduleFromJson(json);
}
