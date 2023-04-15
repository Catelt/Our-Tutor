import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'referral_pack_info.dart';

part 'referral_info.freezed.dart';
part 'referral_info.g.dart';

@freezed
class MReferralInfo with _$MReferralInfo {
  const factory MReferralInfo({
    required String referralCode,
    required MReferralPackInfo referralInfo,
  }) = _MReferralInfo;

  factory MReferralInfo.fromJson(Map<String, Object?> json) =>
      _$MReferralInfoFromJson(json);
}
