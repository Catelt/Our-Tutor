// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MFeedbackResponse _$$_MFeedbackResponseFromJson(Map<String, dynamic> json) =>
    _$_MFeedbackResponse(
      count: (json['count'] as num?)?.toDouble() ?? 0,
      list: (json['rows'] as List<dynamic>?)
              ?.map((e) => MFeedback.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MFeedbackResponseToJson(
        _$_MFeedbackResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.list.map((e) => e.toJson()).toList(),
    };
