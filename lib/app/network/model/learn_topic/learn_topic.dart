import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learn_topic.freezed.dart';
part 'learn_topic.g.dart';

@unfreezed
class MLearnTopic with _$MLearnTopic {
  factory MLearnTopic({
    required int id,
    required String key,
    required String name,
  }) = _MLearnTopic;

  factory MLearnTopic.fromJson(Map<String, Object?> json) =>
      _$MLearnTopicFromJson(json);

  static List<MLearnTopic> getData() {
    return [
      MLearnTopic(id: 3, key: "english-for-kids", name: "English for Kids"),
      MLearnTopic(id: 4, key: "business-english", name: "Business English"),
      MLearnTopic(
          id: 5, key: "conversational-english", name: "Conversational English"),
    ];
  }

  factory MLearnTopic.fromId(int id) {
    final list = getData();
    return list.firstWhere(
      (e) => e.id == id,
      orElse: () => list.first,
    );
  }
}
