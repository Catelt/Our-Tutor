// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MTutorResponse _$$_MTutorResponseFromJson(Map<String, dynamic> json) =>
    _$_MTutorResponse(
      tutors: MTutors.fromJson(json['tutors'] as Map<String, dynamic>),
      favoriteTutor: (json['favoriteTutor'] as List<dynamic>?)
              ?.map((e) => MFavoriteTutor.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MTutorResponseToJson(_$_MTutorResponse instance) =>
    <String, dynamic>{
      'tutors': instance.tutors.toJson(),
      'favoriteTutor': instance.favoriteTutor.map((e) => e.toJson()).toList(),
    };
