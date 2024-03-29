// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MUser _$$_MUserFromJson(Map<String, dynamic> json) => _$_MUser(
      id: json['id'] as String,
      email: json['email'] as String? ?? "",
      avatar: json['avatar'] as String? ?? "",
      name: json['name'] as String? ?? "",
      country: json['country'] as String?,
      phone: json['phone'] as String? ?? "",
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      language: json['language'] as String?,
      birthday: json['birthday'] as String?,
      isActivated: json['isActivated'] as bool? ?? false,
      walletInfo: json['walletInfo'] == null
          ? null
          : MWalletInfo.fromJson(json['walletInfo'] as Map<String, dynamic>),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => MCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
      requireNote: json['requireNote'] as String?,
      level: json['level'] as String?,
      learnTopics: (json['learnTopics'] as List<dynamic>?)
          ?.map((e) => MLearnTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      testPreparations: (json['testPreparations'] as List<dynamic>?)
          ?.map((e) => MLearnTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPhoneActivated: json['isPhoneActivated'] as bool? ?? false,
      timezone: json['timezone'] as int?,
      studySchedule: json['studySchedule'] as String? ?? "",
      canSendMessage: json['canSendMessage'] as bool? ?? false,
      studentGroup: json['studentGroup'] as String?,
      studentInfo: json['studentInfo'] as String?,
      avgRating: (json['avgRating'] as num?)?.toDouble(),
      accessToken: json['accessToken'] == null
          ? null
          : MToken.fromJson(json['accessToken'] as Map<String, dynamic>),
      refreshToken: json['refreshToken'] == null
          ? null
          : MToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
      tutorInfo: json['tutorInfo'] == null
          ? null
          : MTutor.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MUserToJson(_$_MUser instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'roles': instance.roles,
      'language': instance.language,
      'birthday': instance.birthday,
      'isActivated': instance.isActivated,
      'walletInfo': instance.walletInfo?.toJson(),
      'courses': instance.courses?.map((e) => e.toJson()).toList(),
      'requireNote': instance.requireNote,
      'level': instance.level,
      'learnTopics': instance.learnTopics?.map((e) => e.toJson()).toList(),
      'testPreparations':
          instance.testPreparations?.map((e) => e.toJson()).toList(),
      'isPhoneActivated': instance.isPhoneActivated,
      'timezone': instance.timezone,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'studentGroup': instance.studentGroup,
      'studentInfo': instance.studentInfo,
      'avgRating': instance.avgRating,
      'accessToken': instance.accessToken?.toJson(),
      'refreshToken': instance.refreshToken?.toJson(),
      'tutorInfo': instance.tutorInfo?.toJson(),
    };
