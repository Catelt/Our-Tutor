import 'package:freezed_annotation/freezed_annotation.dart';

import '../../tutor/tutor.dart';

part 'second_info.freezed.dart';
part 'second_info.g.dart';

@unfreezed
class MSecondInfo with _$MSecondInfo {
  factory MSecondInfo({
    @Default("") String avatar,
    @Default("") String country,
    @Default("") String name,
    required MTutor tutorInfo,
  }) = _MSecondInfo;

  factory MSecondInfo.fromJson(Map<String, Object?> json) =>
      _$MSecondInfoFromJson(json);
}
