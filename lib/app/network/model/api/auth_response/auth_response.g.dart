// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MAuthResponse _$$_MAuthResponseFromJson(Map<String, dynamic> json) =>
    _$_MAuthResponse(
      user: MUser.fromJson(json['user'] as Map<String, dynamic>),
      tokens: MTokenResponse.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MAuthResponseToJson(_$_MAuthResponse instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'tokens': instance.tokens.toJson(),
    };
