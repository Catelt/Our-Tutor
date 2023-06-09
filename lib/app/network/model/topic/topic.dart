import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@unfreezed
class MTopic with _$MTopic {
  factory MTopic({
    @Default("") String id,
    @Default("") String courseId,
    @Default(0) double orderCourse,
    @Default("") String name,
    @Default("") String nameFile,
    @Default(0) double numberOfPages,
    @Default("") String description,
    @Default("") String videoUrl,
    String? type,
    String? createdAt,
    String? updatedAt,
  }) = _MTopic;

  factory MTopic.fromJson(Map<String, Object?> json) => _$MTopicFromJson(json);
}
