import 'package:freezed_annotation/freezed_annotation.dart';

import 'lesson_status.dart';

part 'class_review.freezed.dart';
part 'class_review.g.dart';

@unfreezed
class MClassReview with _$MClassReview {
  factory MClassReview({
    @Default("") String bookingId,
    @Default(0) double lessonStatusId,
    @Default("") String book,
    @Default("") String unit,
    @Default("") String lesson,
    @Default("") String page,
    @Default("") String lessonProgress,
    @Default(0) double behaviorRating,
    @Default("") String behaviorComment,
    @Default(0) double listeningRating,
    @Default("") String listeningComment,
    @Default(0) double speakingRating,
    @Default("") String speakingComment,
    @Default(0) double vocabularyRating,
    @Default("") String vocabularyComment,
    @Default("") String homeworkComment,
    @Default("") String overallComment,
    required MLessonStatus lessonStatus,
  }) = _MClassReview;

  factory MClassReview.fromJson(Map<String, Object?> json) =>
      _$MClassReviewFromJson(json);
}
