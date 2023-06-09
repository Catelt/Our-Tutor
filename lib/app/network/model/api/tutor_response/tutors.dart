import 'package:freezed_annotation/freezed_annotation.dart';

import '../../tutor/tutor.dart';

part 'tutors.freezed.dart';
part 'tutors.g.dart';

@unfreezed
class MTutors with _$MTutors {
  factory MTutors({
    @Default(0) int count,
    @Default([]) List<MTutor> rows,
  }) = _MTutors;

  factory MTutors.fromJson(Map<String, Object?> json) =>
      _$MTutorsFromJson(json);
}
