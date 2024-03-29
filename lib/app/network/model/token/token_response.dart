import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'token.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@unfreezed
class MTokenResponse with _$MTokenResponse {
  factory MTokenResponse({
    required MToken access,
    required MToken refresh,
  }) = _MTokenResponse;

  factory MTokenResponse.fromJson(Map<String, Object?> json) =>
      _$MTokenResponseFromJson(json);
}
