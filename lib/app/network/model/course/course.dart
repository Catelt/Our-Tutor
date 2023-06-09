import 'package:freezed_annotation/freezed_annotation.dart';

import '../topic/topic.dart';
import '../tutor/tutor.dart';

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
    @JsonKey(name: "other_details") @Default("") String otherDetails,
    @JsonKey(name: "default_price") @Default(0) double defaultPrice,
    @JsonKey(name: "course_price") @Default(0) double coursePrice,
    String? courseType,
    String? sectionType,
    @Default(false) bool visible,
    String? displayOrder,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<MTopic> topics,
    @Default([]) List<MTutor> users,
  }) = _MCourse;

  factory MCourse.fromJson(Map<String, Object?> json) =>
      _$MCourseFromJson(json);
}
