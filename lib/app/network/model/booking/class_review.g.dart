// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MClassReview _$$_MClassReviewFromJson(Map<String, dynamic> json) =>
    _$_MClassReview(
      bookingId: json['bookingId'] as String? ?? "",
      lessonStatusId: (json['lessonStatusId'] as num?)?.toDouble() ?? 0,
      book: json['book'] as String? ?? "",
      unit: json['unit'] as String? ?? "",
      lesson: json['lesson'] as String? ?? "",
      page: json['page'] as String? ?? "",
      lessonProgress: json['lessonProgress'] as String? ?? "",
      behaviorRating: (json['behaviorRating'] as num?)?.toDouble() ?? 0,
      behaviorComment: json['behaviorComment'] as String? ?? "",
      listeningRating: (json['listeningRating'] as num?)?.toDouble() ?? 0,
      listeningComment: json['listeningComment'] as String? ?? "",
      speakingRating: (json['speakingRating'] as num?)?.toDouble() ?? 0,
      speakingComment: json['speakingComment'] as String? ?? "",
      vocabularyRating: (json['vocabularyRating'] as num?)?.toDouble() ?? 0,
      vocabularyComment: json['vocabularyComment'] as String? ?? "",
      homeworkComment: json['homeworkComment'] as String? ?? "",
      overallComment: json['overallComment'] as String? ?? "",
      lessonStatus:
          MLessonStatus.fromJson(json['lessonStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MClassReviewToJson(_$_MClassReview instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'lessonStatusId': instance.lessonStatusId,
      'book': instance.book,
      'unit': instance.unit,
      'lesson': instance.lesson,
      'page': instance.page,
      'lessonProgress': instance.lessonProgress,
      'behaviorRating': instance.behaviorRating,
      'behaviorComment': instance.behaviorComment,
      'listeningRating': instance.listeningRating,
      'listeningComment': instance.listeningComment,
      'speakingRating': instance.speakingRating,
      'speakingComment': instance.speakingComment,
      'vocabularyRating': instance.vocabularyRating,
      'vocabularyComment': instance.vocabularyComment,
      'homeworkComment': instance.homeworkComment,
      'overallComment': instance.overallComment,
      'lessonStatus': instance.lessonStatus.toJson(),
    };
