import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_info.freezed.dart';
part 'wallet_info.g.dart';

@unfreezed
class MWalletInfo with _$MWalletInfo {
  factory MWalletInfo({
    @Default("") String id,
    @Default("") String userId,
    @Default("") String amount,
    @Default(false) bool isBlocked,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(0) int bonus,
  }) = _MWalletInfo;

  factory MWalletInfo.fromJson(Map<String, Object?> json) =>
      _$MWalletInfoFromJson(json);
}
