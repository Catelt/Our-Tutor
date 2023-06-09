// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MReferralInfo _$$_MReferralInfoFromJson(Map<String, dynamic> json) =>
    _$_MReferralInfo(
      referralCode: json['referralCode'] as String,
      referralInfo: MReferralPackInfo.fromJson(
          json['referralInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MReferralInfoToJson(_$_MReferralInfo instance) =>
    <String, dynamic>{
      'referralCode': instance.referralCode,
      'referralInfo': instance.referralInfo.toJson(),
    };
