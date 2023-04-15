import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'token.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@freezed
class MTokenResponse with _$MTokenResponse {
  const factory MTokenResponse({
    required MToken access,
    required MToken refresh,
  }) = _MTokenResponse;

  factory MTokenResponse.fromJson(Map<String, Object?> json) =>
      _$MTokenResponseFromJson(json);
}
