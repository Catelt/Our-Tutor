// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MWalletInfo _$$_MWalletInfoFromJson(Map<String, dynamic> json) =>
    _$_MWalletInfo(
      id: json['id'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      amount: json['amount'] as String? ?? "",
      isBlocked: json['isBlocked'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
      bonus: json['bonus'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MWalletInfoToJson(_$_MWalletInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'isBlocked': instance.isBlocked,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'bonus': instance.bonus,
    };
