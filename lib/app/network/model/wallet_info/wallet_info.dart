import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_info.freezed.dart';
part 'wallet_info.g.dart';

@unfreezed
class MWalletInfo with _$MWalletInfo {
  factory MWalletInfo({
    required String id,
    required String userId,
    required String amount,
    required bool isBlocked,
    required String createdAt,
    required String updatedAt,
    required int bonus,
  }) = _MWalletInfo;

  factory MWalletInfo.fromJson(Map<String, Object?> json) =>
      _$MWalletInfoFromJson(json);
}
