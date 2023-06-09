import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_pack_info.freezed.dart';
part 'referral_pack_info.g.dart';

@unfreezed
class MReferralPackInfo with _$MReferralPackInfo {
  factory MReferralPackInfo({
    required int earnPercent,
  }) = _MReferralPackInfo;

  factory MReferralPackInfo.fromJson(Map<String, Object?> json) =>
      _$MReferralPackInfoFromJson(json);
}
