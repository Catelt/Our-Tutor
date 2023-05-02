import 'package:freezed_annotation/freezed_annotation.dart';

import '../../booking/booking.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@unfreezed
class MHistoryResponse with _$MHistoryResponse {
  factory MHistoryResponse({
    @Default(0) int count,
    @JsonKey(name: "rows") @Default([]) List<MBooking> list,
  }) = _MHistoryResponse;

  factory MHistoryResponse.fromJson(Map<String, Object?> json) =>
      _$MHistoryResponseFromJson(json);
}
