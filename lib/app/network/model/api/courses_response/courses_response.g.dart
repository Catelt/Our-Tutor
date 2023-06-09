// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MCourseResponse _$$_MCourseResponseFromJson(Map<String, dynamic> json) =>
    _$_MCourseResponse(
      count: json['count'] as int? ?? 0,
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => MCourse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MCourseResponseToJson(_$_MCourseResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows.map((e) => e.toJson()).toList(),
    };
