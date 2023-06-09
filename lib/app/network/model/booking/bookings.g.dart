// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MBookings _$$_MBookingsFromJson(Map<String, dynamic> json) => _$_MBookings(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => MBooking.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MBookingsToJson(_$_MBookings instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
