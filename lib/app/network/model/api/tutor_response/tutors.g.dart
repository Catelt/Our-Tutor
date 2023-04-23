// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MTutors _$$_MTutorsFromJson(Map<String, dynamic> json) => _$_MTutors(
      count: json['count'] as int? ?? 0,
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => MTutor.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MTutorsToJson(_$_MTutors instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows.map((e) => e.toJson()).toList(),
    };
