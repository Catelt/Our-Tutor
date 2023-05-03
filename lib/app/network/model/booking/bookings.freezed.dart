// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MBookings _$MBookingsFromJson(Map<String, dynamic> json) {
  return _MBookings.fromJson(json);
}

/// @nodoc
mixin _$MBookings {
  List<MBooking> get list => throw _privateConstructorUsedError;
  set list(List<MBooking> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MBookingsCopyWith<MBookings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MBookingsCopyWith<$Res> {
  factory $MBookingsCopyWith(MBookings value, $Res Function(MBookings) then) =
      _$MBookingsCopyWithImpl<$Res, MBookings>;
  @useResult
  $Res call({List<MBooking> list});
}

/// @nodoc
class _$MBookingsCopyWithImpl<$Res, $Val extends MBookings>
    implements $MBookingsCopyWith<$Res> {
  _$MBookingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MBooking>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MBookingsCopyWith<$Res> implements $MBookingsCopyWith<$Res> {
  factory _$$_MBookingsCopyWith(
          _$_MBookings value, $Res Function(_$_MBookings) then) =
      __$$_MBookingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MBooking> list});
}

/// @nodoc
class __$$_MBookingsCopyWithImpl<$Res>
    extends _$MBookingsCopyWithImpl<$Res, _$_MBookings>
    implements _$$_MBookingsCopyWith<$Res> {
  __$$_MBookingsCopyWithImpl(
      _$_MBookings _value, $Res Function(_$_MBookings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_MBookings(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MBooking>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MBookings implements _MBookings {
  _$_MBookings({this.list = const []});

  factory _$_MBookings.fromJson(Map<String, dynamic> json) =>
      _$$_MBookingsFromJson(json);

  @override
  @JsonKey()
  List<MBooking> list;

  @override
  String toString() {
    return 'MBookings(list: $list)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MBookingsCopyWith<_$_MBookings> get copyWith =>
      __$$_MBookingsCopyWithImpl<_$_MBookings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MBookingsToJson(
      this,
    );
  }
}

abstract class _MBookings implements MBookings {
  factory _MBookings({List<MBooking> list}) = _$_MBookings;

  factory _MBookings.fromJson(Map<String, dynamic> json) =
      _$_MBookings.fromJson;

  @override
  List<MBooking> get list;
  set list(List<MBooking> value);
  @override
  @JsonKey(ignore: true)
  _$$_MBookingsCopyWith<_$_MBookings> get copyWith =>
      throw _privateConstructorUsedError;
}
