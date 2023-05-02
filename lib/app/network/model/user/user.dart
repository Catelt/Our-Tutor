import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../api/auth_response/auth_response.dart';
import '../learn_topic/learn_topic.dart';
import '../token/token.dart';
import '../wallet_info/wallet_info.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@unfreezed
class MUser with _$MUser {
  factory MUser({
    required String id,
    @Default("") String email,
    @Default("") String avatar,
    String? country,
    @Default("") String phone,
    List<String>? roles,
    String? language,
    String? birthday,
    @Default(false) bool isActivated,
    MWalletInfo? walletInfo,
    List<String>? courses,
    String? requireNote,
    String? level,
    List<MLearnTopic>? learnTopics,
    List<MLearnTopic>? testPreparations,
    @Default(false) bool isPhoneActivated,
    int? timezone,
    @Default("") String studySchedule,
    @Default(false) bool canSendMessage,
    String? studentGroup,
    String? studentInfo,
    double? avgRating,
    MToken? accessToken,
    MToken? refreshToken,
  }) = _MUser;

  factory MUser.fromJson(Map<String, Object?> json) => _$MUserFromJson(json);

  factory MUser.empty() => MUser(id: '');

  factory MUser.userFromAuthResponse(MAuthResponse response) =>
      response.user.copyWith(
          accessToken: response.tokens.access,
          refreshToken: response.tokens.refresh);
}
