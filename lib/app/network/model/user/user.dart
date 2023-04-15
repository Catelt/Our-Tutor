import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../learn_topic/learn_topic.dart';
import '../wallet_info/wallet_info.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class MUser with _$MUser {
  const factory MUser({
    required String id,
    String? email,
    String? avatar,
    String? country,
    String? phone,
    List<String>? roles,
    String? language,
    String? birthday,
    bool? isActivated,
    MWalletInfo? walletInfo,
    List<String>? courses,
    String? requireNote,
    String? level,
    List<MLearnTopic>? learnTopics,
    List<String>? testPreparations,
    bool? isPhoneActivated,
    int? timezone,
    String? studySchedule,
    bool? canSendMessage,
    String? studentGroup,
    String? studentInfo,
    double? avgRating,
  }) = _MUser;

  factory MUser.fromJson(Map<String, Object?> json) => _$MUserFromJson(json);

  factory MUser.empty() => MUser(id: '');
}
