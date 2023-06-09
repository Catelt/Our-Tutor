import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'favorite_tutor.dart';
import 'tutors.dart';

part 'tutor_response.freezed.dart';
part 'tutor_response.g.dart';

@unfreezed
class MTutorResponse with _$MTutorResponse {
  factory MTutorResponse({
    required MTutors tutors,
    @Default([]) List<MFavoriteTutor> favoriteTutor,
  }) = _MTutorResponse;

  factory MTutorResponse.fromJson(Map<String, Object?> json) =>
      _$MTutorResponseFromJson(json);
}
