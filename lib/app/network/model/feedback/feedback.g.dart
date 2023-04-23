// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MFeedback _$$_MFeedbackFromJson(Map<String, dynamic> json) => _$_MFeedback(
      id: json['id'] as String? ?? "",
      bookingId: json['bookingId'] as String? ?? "",
      firstId: json['firstId'] as String? ?? "",
      secondId: json['secondId'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      content: json['content'] as String? ?? "",
      firstInfo: MTutor.fromJson(json['firstInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MFeedbackToJson(_$_MFeedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'rating': instance.rating,
      'content': instance.content,
      'firstInfo': instance.firstInfo.toJson(),
    };
