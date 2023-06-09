// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MLessonStatus _$$_MLessonStatusFromJson(Map<String, dynamic> json) =>
    _$_MLessonStatus(
      id: json['id'] as int? ?? 0,
      status: json['status'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
    );

Map<String, dynamic> _$$_MLessonStatusToJson(_$_MLessonStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
