import 'package:freezed_annotation/freezed_annotation.dart';

import '../topic/topic.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@unfreezed
class MCourse with _$MCourse {
  factory MCourse({
    @Default("") String id,
    @Default("") String name,
    @Default("") String description,
    @Default("") String imageUrl,
    @Default("") String level,
    @Default("") String reason,
    @Default("") String purpose,
    @Default("") String other_details,
    @Default(0) double default_price,
    @Default(0) double course_price,
    String? courseType,
    String? sectionType,
    @Default(false) bool visible,
    String? displayOrder,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<MTopic> topics,
  }) = _MCourse;

  factory MCourse.fromJson(Map<String, Object?> json) =>
      _$MCourseFromJson(json);
}
