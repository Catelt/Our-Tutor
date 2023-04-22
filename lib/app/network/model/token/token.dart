import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@unfreezed
class MToken with _$MToken {
  factory MToken({
    @JsonKey(name: "token") required String id,
    required String expires,
  }) = _MToken;

  factory MToken.fromJson(Map<String, Object?> json) => _$MTokenFromJson(json);
}
