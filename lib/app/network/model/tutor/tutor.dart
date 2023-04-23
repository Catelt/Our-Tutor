import 'package:freezed_annotation/freezed_annotation.dart';

import '../feedback/feedback.dart';

part 'tutor.freezed.dart';
part 'tutor.g.dart';

@unfreezed
class MTutor with _$MTutor {
  factory MTutor({
    @Default("") String id,
    @Default("") String userId,
    @Default("") String video,
    @Default("") String bio,
    @Default("") String education,
    @Default("") String experience,
    @Default("") String profession,
    @Default("") String interests,
    @Default("en") String languages,
    @Default("") String specialties,
    @Default(0) double rating,
    @Default(0) double price,
    @Default(false) bool isOnline,
    String? isNative,
    String? resume,
    String? accent,
    String? targetStudent,
    String? level,
    String? email,
    String? google,
    String? facebook,
    String? apple,
    String? avatar,
    @Default("") String name,
    String? country,
    String? phone,
    String? language,
    String? birthday,
    @Default(false) bool requestPassword,
    @Default(false) bool isActivated,
    @Default(false) bool isPhoneActivated,
    String? requireNote,
    @Default(7) int timezone,
    String? phoneAuth,
    @Default(false) bool isPhoneAuthActivated,
    String? studySchedule,
    @Default(false) bool canSendMessage,
    @Default(false) bool isPublicRecord,
    String? caredByStaffId,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    String? deletedAt,
    String? studentGroupId,
    @Default([]) List<MFeedback> feedbacks,
  }) = _MTutor;

  factory MTutor.fromJson(Map<String, Object?> json) => _$MTutorFromJson(json);
}
