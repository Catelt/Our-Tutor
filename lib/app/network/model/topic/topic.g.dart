// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MTopic _$$_MTopicFromJson(Map<String, dynamic> json) => _$_MTopic(
      id: json['id'] as String? ?? "",
      courseId: json['courseId'] as String? ?? "",
      orderCourse: (json['orderCourse'] as num?)?.toDouble() ?? 0,
      name: json['name'] as String? ?? "",
      nameFile: json['nameFile'] as String? ?? "",
      numberOfPages: (json['numberOfPages'] as num?)?.toDouble() ?? 0,
      description: json['description'] as String? ?? "",
      videoUrl: json['videoUrl'] as String? ?? "",
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_MTopicToJson(_$_MTopic instance) => <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'orderCourse': instance.orderCourse,
      'name': instance.name,
      'nameFile': instance.nameFile,
      'numberOfPages': instance.numberOfPages,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
