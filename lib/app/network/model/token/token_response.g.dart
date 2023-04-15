// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MTokenResponse _$$_MTokenResponseFromJson(Map<String, dynamic> json) =>
    _$_MTokenResponse(
      access: MToken.fromJson(json['access'] as Map<String, dynamic>),
      refresh: MToken.fromJson(json['refresh'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MTokenResponseToJson(_$_MTokenResponse instance) =>
    <String, dynamic>{
      'access': instance.access.toJson(),
      'refresh': instance.refresh.toJson(),
    };
