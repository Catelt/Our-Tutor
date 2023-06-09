import 'package:freezed_annotation/freezed_annotation.dart';

import '../../feedback/feedback.dart';

part 'feedback_response.freezed.dart';
part 'feedback_response.g.dart';

@unfreezed
class MFeedbackResponse with _$MFeedbackResponse {
  factory MFeedbackResponse({
    @Default(0) double count,
    @JsonKey(name: "rows") @Default([]) List<MFeedback> list,
  }) = _MFeedbackResponse;

  factory MFeedbackResponse.fromJson(Map<String, Object?> json) =>
      _$MFeedbackResponseFromJson(json);
}
