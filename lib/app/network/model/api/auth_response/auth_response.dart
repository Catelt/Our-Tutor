import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../token/token_response.dart';
import '../../user/user.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class MAuthResponse with _$MAuthResponse {
  const factory MAuthResponse({
    required MUser user,
    required MTokenResponse tokens,
  }) = _MAuthResponse;

  factory MAuthResponse.fromJson(Map<String, Object?> json) =>
      _$MAuthResponseFromJson(json);
}
