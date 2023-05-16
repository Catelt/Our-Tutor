// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MSecondInfo _$$_MSecondInfoFromJson(Map<String, dynamic> json) =>
    _$_MSecondInfo(
      avatar: json['avatar'] as String? ?? "",
      country: json['country'] as String? ?? "",
      name: json['name'] as String? ?? "",
      tutorInfo: MTutor.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MSecondInfoToJson(_$_MSecondInfo instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'country': instance.country,
      'name': instance.name,
      'tutorInfo': instance.tutorInfo.toJson(),
    };
