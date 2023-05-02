// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MScheduleInfo _$$_MScheduleInfoFromJson(Map<String, dynamic> json) =>
    _$_MScheduleInfo(
      date: json['date'] as String? ?? "",
      createdAtTimeStamp: (json['createdAtTimeStamp'] as num?)?.toDouble() ?? 0,
      updatedAtTimeStamp: (json['updatedAtTimeStamp'] as num?)?.toDouble() ?? 0,
      id: json['id'] as String? ?? "",
      tutorId: json['tutorId'] as String? ?? "",
      startTime: json['startTime'] as String? ?? "",
      endTime: json['endTime'] as String? ?? "",
      isDeleted: json['isDeleted'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      tutorInfo: json['tutorInfo'] == null
          ? null
          : MTutor.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MScheduleInfoToJson(_$_MScheduleInfo instance) =>
    <String, dynamic>{
      'date': instance.date,
      'createdAtTimeStamp': instance.createdAtTimeStamp,
      'updatedAtTimeStamp': instance.updatedAtTimeStamp,
      'id': instance.id,
      'tutorId': instance.tutorId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'tutorInfo': instance.tutorInfo?.toJson(),
    };
