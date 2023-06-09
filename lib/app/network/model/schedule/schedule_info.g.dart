// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MScheduleInfo _$$_MScheduleInfoFromJson(Map<String, dynamic> json) =>
    _$_MScheduleInfo(
      date: json['date'] as String? ?? "",
      startTimestamp: (json['startTimestamp'] as num?)?.toDouble() ?? 0,
      endTimestamp: (json['endTimestamp'] as num?)?.toDouble() ?? 0,
      id: json['id'] as String? ?? "",
      tutorId: json['tutorId'] as String? ?? "",
      startTime: json['startTime'] as String? ?? "",
      endTime: json['endTime'] as String? ?? "",
      isDeleted: json['isDeleted'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      isBooked: json['isBooked'] as bool? ?? false,
      tutorInfo: json['tutorInfo'] == null
          ? null
          : MTutor.fromJson(json['tutorInfo'] as Map<String, dynamic>),
      scheduleDetails: (json['scheduleDetails'] as List<dynamic>?)
              ?.map((e) => MSchedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MScheduleInfoToJson(_$_MScheduleInfo instance) =>
    <String, dynamic>{
      'date': instance.date,
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'id': instance.id,
      'tutorId': instance.tutorId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'isDeleted': instance.isDeleted,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isBooked': instance.isBooked,
      'tutorInfo': instance.tutorInfo?.toJson(),
      'scheduleDetails':
          instance.scheduleDetails.map((e) => e.toJson()).toList(),
    };
