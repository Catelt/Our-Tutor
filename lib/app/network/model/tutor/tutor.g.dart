// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MTutor _$$_MTutorFromJson(Map<String, dynamic> json) => _$_MTutor(
      id: json['id'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      video: json['video'] as String? ?? "",
      bio: json['bio'] as String? ?? "",
      education: json['education'] as String? ?? "",
      experience: json['experience'] as String? ?? "",
      profession: json['profession'] as String? ?? "",
      interests: json['interests'] as String? ?? "",
      languages: json['languages'] as String? ?? "en",
      specialties: json['specialties'] as String? ?? "",
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      isOnline: json['isOnline'] as bool? ?? false,
      isNative: json['isNative'] as String?,
      resume: json['resume'] as String?,
      accent: json['accent'] as String?,
      targetStudent: json['targetStudent'] as String?,
      level: json['level'] as String?,
      email: json['email'] as String?,
      google: json['google'] as String?,
      facebook: json['facebook'] as String?,
      apple: json['apple'] as String?,
      avatar: json['avatar'] as String?,
      name: json['name'] as String? ?? "",
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      language: json['language'] as String?,
      birthday: json['birthday'] as String?,
      requestPassword: json['requestPassword'] as bool? ?? false,
      isActivated: json['isActivated'] as bool? ?? false,
      isPhoneActivated: json['isPhoneActivated'] as bool? ?? false,
      requireNote: json['requireNote'] as String?,
      timezone: json['timezone'] as int? ?? 7,
      phoneAuth: json['phoneAuth'] as String?,
      isPhoneAuthActivated: json['isPhoneAuthActivated'] as bool? ?? false,
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool? ?? false,
      isPublicRecord: json['isPublicRecord'] as bool? ?? false,
      caredByStaffId: json['caredByStaffId'] as String?,
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      deletedAt: json['deletedAt'] as String?,
      studentGroupId: json['studentGroupId'] as String?,
      feedbacks: (json['feedbacks'] as List<dynamic>?)
              ?.map((e) => MFeedback.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MTutorToJson(_$_MTutor instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'video': instance.video,
      'bio': instance.bio,
      'education': instance.education,
      'experience': instance.experience,
      'profession': instance.profession,
      'interests': instance.interests,
      'languages': instance.languages,
      'specialties': instance.specialties,
      'rating': instance.rating,
      'price': instance.price,
      'isOnline': instance.isOnline,
      'isNative': instance.isNative,
      'resume': instance.resume,
      'accent': instance.accent,
      'targetStudent': instance.targetStudent,
      'level': instance.level,
      'email': instance.email,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'language': instance.language,
      'birthday': instance.birthday,
      'requestPassword': instance.requestPassword,
      'isActivated': instance.isActivated,
      'isPhoneActivated': instance.isPhoneActivated,
      'requireNote': instance.requireNote,
      'timezone': instance.timezone,
      'phoneAuth': instance.phoneAuth,
      'isPhoneAuthActivated': instance.isPhoneAuthActivated,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'studentGroupId': instance.studentGroupId,
      'feedbacks': instance.feedbacks.map((e) => e.toJson()).toList(),
    };
