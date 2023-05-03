import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/extension/datetime.dart';
import '../feedback/feedback.dart';
import '../jitsi/jitsi.dart';
import '../schedule/schedule.dart';
import 'class_review.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@unfreezed
class MBooking with _$MBooking {
  MBooking._();

  factory MBooking({
    @Default(0) double createdAtTimeStamp,
    @Default(0) double updatedAtTimeStamp,
    @Default("") String id,
    @Default("") String userId,
    @Default("") String scheduleDetailId,
    @Default("") String tutorMeetingLink,
    @Default("") String studentMeetingLink,
    @Default("") studentRequest,
    Object? tutorReview,
    Object? scoreByTutor,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default("") String recordUrl,
    @Default("") String cancelReasonId,
    @Default("") String lessonPlanId,
    @Default("") String calendarId,
    @Default(false) bool isDeleted,
    MClassReview? classReview,
    @Default(false) bool showRecordUrl,
    @Default([]) List studentMaterials,
    @Default([]) List<MFeedback> feedbacks,
    required MSchedule scheduleDetailInfo,
  }) = _MBooking;

  factory MBooking.fromJson(Map<String, Object?> json) =>
      _$MBookingFromJson(json);

  MJitsi getInfoJitsi() {
    final data = utf8.decode(
        base64.decode(base64.normalize(tutorMeetingLink.split(".")[1])));
    return MJitsi.fromJson(jsonDecode(data));
  }

  DateTime getStartTime() {
    return DateTime.fromMillisecondsSinceEpoch(
        scheduleDetailInfo.startPeriodTimestamp.round());
  }

  String get startTime {
    return XDateFormat().time.format(getStartTime());
  }

  DateTime getEndTime() {
    return DateTime.fromMillisecondsSinceEpoch(
        scheduleDetailInfo.endPeriodTimestamp.round());
  }

  String get endTime {
    return XDateFormat().time.format(getEndTime());
  }
}
