import 'package:freezed_annotation/freezed_annotation.dart';

import '../../tutor/tutor.dart';

part 'tutor_detail_response.freezed.dart';
part 'tutor_detail_response.g.dart';

@unfreezed
class MTutorDetailResponse with _$MTutorDetailResponse {
  factory MTutorDetailResponse({
    @Default("") String video,
    @Default("") String bio,
    @Default("") String education,
    @Default("") String experience,
    @Default("") String profession,
    @Default("") String interests,
    @Default("en") String languages,
    @Default("") String specialties,
    @Default(0) double rating,
    String? targetStudent,
    String? accent,
    @Default(false) isFavorite,
    @JsonKey(name: "User") required MTutor user,
    @Default(0) int totalFeedback,
  }) = _MTutorDetailResponse;

  factory MTutorDetailResponse.fromJson(Map<String, Object?> json) =>
      _$MTutorDetailResponseFromJson(json);
}
