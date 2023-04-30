import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/tutor.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@unfreezed
class MFeedback with _$MFeedback {
  factory MFeedback({
    @Default("") String id,
    @Default("") String bookingId,
    @Default("") String firstId,
    @Default("") String secondId,
    @Default(0) double rating,
    @Default("") String content,
    @Default("") String createAt,
    @Default("") String updatedAt,
    required MTutor firstInfo,
  }) = _MFeedback;

  factory MFeedback.fromJson(Map<String, Object?> json) =>
      _$MFeedbackFromJson(json);
}
