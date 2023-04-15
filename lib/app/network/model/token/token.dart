import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class MToken with _$MToken {
  const factory MToken({
    required String token,
    required String expires,
  }) = _MToken;

  factory MToken.fromJson(Map<String, Object?> json) => _$MTokenFromJson(json);
}
