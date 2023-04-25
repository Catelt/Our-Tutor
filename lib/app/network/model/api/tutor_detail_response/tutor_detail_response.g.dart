// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MTutorDetailResponse _$$_MTutorDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MTutorDetailResponse(
      video: json['video'] as String? ?? "",
      bio: json['bio'] as String? ?? "",
      education: json['education'] as String? ?? "",
      experience: json['experience'] as String? ?? "",
      profession: json['profession'] as String? ?? "",
      interests: json['interests'] as String? ?? "",
      languages: json['languages'] as String? ?? "en",
      specialties: json['specialties'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      targetStudent: json['targetStudent'] as String?,
      accent: json['accent'] as String?,
      isFavorite: json['isFavorite'] ?? false,
      user: MTutor.fromJson(json['User'] as Map<String, dynamic>),
      totalFeedback: json['totalFeedback'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MTutorDetailResponseToJson(
        _$_MTutorDetailResponse instance) =>
    <String, dynamic>{
      'video': instance.video,
      'bio': instance.bio,
      'education': instance.education,
      'experience': instance.experience,
      'profession': instance.profession,
      'interests': instance.interests,
      'languages': instance.languages,
      'specialties': instance.specialties,
      'rating': instance.rating,
      'targetStudent': instance.targetStudent,
      'accent': instance.accent,
      'isFavorite': instance.isFavorite,
      'User': instance.user.toJson(),
      'totalFeedback': instance.totalFeedback,
    };
