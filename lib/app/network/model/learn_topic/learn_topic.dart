import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learn_topic.freezed.dart';
part 'learn_topic.g.dart';

@freezed
class MLearnTopic with _$MLearnTopic {
  const factory MLearnTopic({
    required int id,
    required String key,
    required String name,
  }) = _MLearnTopic;

  factory MLearnTopic.fromJson(Map<String, Object?> json) =>
      _$MLearnTopicFromJson(json);
}
