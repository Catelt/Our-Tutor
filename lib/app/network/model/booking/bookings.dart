import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking.dart';

part 'bookings.freezed.dart';
part 'bookings.g.dart';

@unfreezed
class MBookings with _$MBookings {
  factory MBookings({
    @Default([]) List<MBooking> list,
  }) = _MBookings;

  factory MBookings.fromJson(Map<String, Object?> json) =>
      _$MBookingsFromJson(json);
}
