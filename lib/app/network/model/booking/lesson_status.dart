import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_status.freezed.dart';
part 'lesson_status.g.dart';

@unfreezed
class MLessonStatus with _$MLessonStatus {
  factory MLessonStatus({
    @Default(0) int id,
    @Default("") String status,
    @Default("") String createdAt,
    @Default("") String updatedAt,
  }) = _MLessonStatus;

  factory MLessonStatus.fromJson(Map<String, Object?> json) =>
      _$MLessonStatusFromJson(json);
}
