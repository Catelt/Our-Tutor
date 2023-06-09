// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_tutor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MFavoriteTutor _$$_MFavoriteTutorFromJson(Map<String, dynamic> json) =>
    _$_MFavoriteTutor(
      id: json['id'] as String? ?? "",
      firstId: json['firstId'] as String? ?? "",
      secondId: json['secondId'] as String? ?? "",
      secondInfo: json['secondInfo'] == null
          ? null
          : MSecondInfo.fromJson(json['secondInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MFavoriteTutorToJson(_$_MFavoriteTutor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'secondInfo': instance.secondInfo?.toJson(),
    };
