// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jitsi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MJitsi _$$_MJitsiFromJson(Map<String, dynamic> json) => _$_MJitsi(
      room: json['room'] as String? ?? "",
      roomName: json['roomName'] as String? ?? "",
      userCall: json['userCall'] == null
          ? null
          : MUser.fromJson(json['userCall'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MJitsiToJson(_$_MJitsi instance) => <String, dynamic>{
      'room': instance.room,
      'roomName': instance.roomName,
      'userCall': instance.userCall?.toJson(),
    };
