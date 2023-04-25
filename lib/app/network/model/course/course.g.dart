// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MCourse _$$_MCourseFromJson(Map<String, dynamic> json) => _$_MCourse(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      level: json['level'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      purpose: json['purpose'] as String? ?? "",
      other_details: json['other_details'] as String? ?? "",
      default_price: (json['default_price'] as num?)?.toDouble() ?? 0,
      course_price: (json['course_price'] as num?)?.toDouble() ?? 0,
      courseType: json['courseType'] as String?,
      sectionType: json['sectionType'] as String?,
      visible: json['visible'] as bool? ?? false,
      displayOrder: json['displayOrder'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      topics: (json['topics'] as List<dynamic>?)
              ?.map((e) => MTopic.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MCourseToJson(_$_MCourse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'level': instance.level,
      'reason': instance.reason,
      'purpose': instance.purpose,
      'other_details': instance.other_details,
      'default_price': instance.default_price,
      'course_price': instance.course_price,
      'courseType': instance.courseType,
      'sectionType': instance.sectionType,
      'visible': instance.visible,
      'displayOrder': instance.displayOrder,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'topics': instance.topics.map((e) => e.toJson()).toList(),
    };
