// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MHistoryResponse _$$_MHistoryResponseFromJson(Map<String, dynamic> json) =>
    _$_MHistoryResponse(
      count: json['count'] as int? ?? 0,
      list: (json['rows'] as List<dynamic>?)
              ?.map((e) => MBooking.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MHistoryResponseToJson(_$_MHistoryResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.list.map((e) => e.toJson()).toList(),
    };
