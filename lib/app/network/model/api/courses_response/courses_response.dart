import 'package:freezed_annotation/freezed_annotation.dart';

import '../../course/course.dart';

part 'courses_response.freezed.dart';
part 'courses_response.g.dart';

@unfreezed
class MCourseResponse with _$MCourseResponse {
  factory MCourseResponse({
    @Default(0) int count,
    @Default([]) List<MCourse> rows,
  }) = _MCourseResponse;

  factory MCourseResponse.fromJson(Map<String, Object?> json) =>
      _$MCourseResponseFromJson(json);
}
