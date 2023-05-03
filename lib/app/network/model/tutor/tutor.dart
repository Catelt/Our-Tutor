import 'package:freezed_annotation/freezed_annotation.dart';

import '../api/tutor_detail_response/tutor_detail_response.dart';
import '../course/course.dart';
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
    @Default(false) bool? isNative,
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
    @Default(false) isFavorite,
    @Default([]) List<MCourse> courses,
    @Default([]) List<MFeedback> feedbacks,
    @Default(0) int totalFeedback,
  }) = _MTutor;

  factory MTutor.fromJson(Map<String, Object?> json) => _$MTutorFromJson(json);

  factory MTutor.fromTutorDetailResponse(MTutorDetailResponse response) {
    final tutor = response.user;
    return tutor.copyWith(
      bio: response.bio,
      video: response.video,
      education: response.education,
      experience: response.experience,
      profession: response.profession,
      interests: response.interests,
      languages: response.languages,
      specialties: response.specialties,
      rating: response.rating,
      targetStudent: response.targetStudent,
      accent: response.accent,
      isFavorite: response.isFavorite,
      totalFeedback: response.totalFeedback,
    );
  }
}
