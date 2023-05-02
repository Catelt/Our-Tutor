import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/tutor.dart';

part 'schedule_info.freezed.dart';
part 'schedule_info.g.dart';

@unfreezed
class MScheduleInfo with _$MScheduleInfo {
  factory MScheduleInfo({
    @Default("") String date,
    @Default(0) double createdAtTimeStamp,
    @Default(0) double updatedAtTimeStamp,
    @Default("") String id,
    @Default("") String tutorId,
    @Default("") String startTime,
    @Default("") String endTime,
    @Default(false) bool isDeleted,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    MTutor? tutorInfo,
  }) = _MScheduleInfo;

  factory MScheduleInfo.fromJson(Map<String, Object?> json) =>
      _$MScheduleInfoFromJson(json);
}
