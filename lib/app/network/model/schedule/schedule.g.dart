// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MSchedule _$$_MScheduleFromJson(Map<String, dynamic> json) => _$_MSchedule(
      createdAtTimeStamp: (json['createdAtTimeStamp'] as num?)?.toDouble() ?? 0,
      updatedAtTimeStamp: (json['updatedAtTimeStamp'] as num?)?.toDouble() ?? 0,
      id: json['id'] as String? ?? "",
      scheduleId: json['scheduleId'] as String? ?? "",
      startPeriod: json['startPeriod'] as String? ?? "",
      endPeriod: json['endPeriod'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      scheduleInfo: json['scheduleInfo'] == null
          ? null
          : MScheduleInfo.fromJson(
              json['scheduleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MScheduleToJson(_$_MSchedule instance) =>
    <String, dynamic>{
      'createdAtTimeStamp': instance.createdAtTimeStamp,
      'updatedAtTimeStamp': instance.updatedAtTimeStamp,
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'startPeriod': instance.startPeriod,
      'endPeriod': instance.endPeriod,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'scheduleInfo': instance.scheduleInfo?.toJson(),
    };
