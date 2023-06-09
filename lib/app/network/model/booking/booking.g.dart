// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MBooking _$$_MBookingFromJson(Map<String, dynamic> json) => _$_MBooking(
      createdAtTimeStamp: (json['createdAtTimeStamp'] as num?)?.toDouble() ?? 0,
      updatedAtTimeStamp: (json['updatedAtTimeStamp'] as num?)?.toDouble() ?? 0,
      id: json['id'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      scheduleDetailId: json['scheduleDetailId'] as String? ?? "",
      tutorMeetingLink: json['tutorMeetingLink'] as String? ?? "",
      studentMeetingLink: json['studentMeetingLink'] as String? ?? "",
      studentRequest: json['studentRequest'] ?? "",
      tutorReview: json['tutorReview'],
      scoreByTutor: json['scoreByTutor'],
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      recordUrl: json['recordUrl'] as String? ?? "",
      cancelReasonId: json['cancelReasonId'] as String? ?? "",
      lessonPlanId: json['lessonPlanId'],
      calendarId: json['calendarId'] as String? ?? "",
      isDeleted: json['isDeleted'] as bool? ?? false,
      classReview: json['classReview'] == null
          ? null
          : MClassReview.fromJson(json['classReview'] as Map<String, dynamic>),
      showRecordUrl: json['showRecordUrl'] as bool? ?? false,
      studentMaterials: json['studentMaterials'] as List<dynamic>? ?? const [],
      feedbacks: (json['feedbacks'] as List<dynamic>?)
              ?.map((e) => MFeedback.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      scheduleDetailInfo: MSchedule.fromJson(
          json['scheduleDetailInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MBookingToJson(_$_MBooking instance) =>
    <String, dynamic>{
      'createdAtTimeStamp': instance.createdAtTimeStamp,
      'updatedAtTimeStamp': instance.updatedAtTimeStamp,
      'id': instance.id,
      'userId': instance.userId,
      'scheduleDetailId': instance.scheduleDetailId,
      'tutorMeetingLink': instance.tutorMeetingLink,
      'studentMeetingLink': instance.studentMeetingLink,
      'studentRequest': instance.studentRequest,
      'tutorReview': instance.tutorReview,
      'scoreByTutor': instance.scoreByTutor,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'recordUrl': instance.recordUrl,
      'cancelReasonId': instance.cancelReasonId,
      'lessonPlanId': instance.lessonPlanId,
      'calendarId': instance.calendarId,
      'isDeleted': instance.isDeleted,
      'classReview': instance.classReview?.toJson(),
      'showRecordUrl': instance.showRecordUrl,
      'studentMaterials': instance.studentMaterials,
      'feedbacks': instance.feedbacks.map((e) => e.toJson()).toList(),
      'scheduleDetailInfo': instance.scheduleDetailInfo.toJson(),
    };
