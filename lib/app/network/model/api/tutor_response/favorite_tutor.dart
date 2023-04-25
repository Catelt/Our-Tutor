import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_tutor.freezed.dart';
part 'favorite_tutor.g.dart';

@unfreezed
class MFavoriteTutor with _$MFavoriteTutor {
  factory MFavoriteTutor({
    @Default("") String id,
    @Default("") String firstId,
    @Default("") String secondId,
  }) = _MFavoriteTutor;

  factory MFavoriteTutor.fromJson(Map<String, Object?> json) =>
      _$MFavoriteTutorFromJson(json);
}
