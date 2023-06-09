// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jitsi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MJitsi _$MJitsiFromJson(Map<String, dynamic> json) {
  return _MJitsi.fromJson(json);
}

/// @nodoc
mixin _$MJitsi {
  String get room => throw _privateConstructorUsedError;
  set room(String value) => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  set roomName(String value) => throw _privateConstructorUsedError;
  MUser? get userCall => throw _privateConstructorUsedError;
  set userCall(MUser? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MJitsiCopyWith<MJitsi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MJitsiCopyWith<$Res> {
  factory $MJitsiCopyWith(MJitsi value, $Res Function(MJitsi) then) =
      _$MJitsiCopyWithImpl<$Res, MJitsi>;
  @useResult
  $Res call({String room, String roomName, MUser? userCall});

  $MUserCopyWith<$Res>? get userCall;
}

/// @nodoc
class _$MJitsiCopyWithImpl<$Res, $Val extends MJitsi>
    implements $MJitsiCopyWith<$Res> {
  _$MJitsiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? roomName = null,
    Object? userCall = freezed,
  }) {
    return _then(_value.copyWith(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      userCall: freezed == userCall
          ? _value.userCall
          : userCall // ignore: cast_nullable_to_non_nullable
              as MUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MUserCopyWith<$Res>? get userCall {
    if (_value.userCall == null) {
      return null;
    }

    return $MUserCopyWith<$Res>(_value.userCall!, (value) {
      return _then(_value.copyWith(userCall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MJitsiCopyWith<$Res> implements $MJitsiCopyWith<$Res> {
  factory _$$_MJitsiCopyWith(_$_MJitsi value, $Res Function(_$_MJitsi) then) =
      __$$_MJitsiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String room, String roomName, MUser? userCall});

  @override
  $MUserCopyWith<$Res>? get userCall;
}

/// @nodoc
class __$$_MJitsiCopyWithImpl<$Res>
    extends _$MJitsiCopyWithImpl<$Res, _$_MJitsi>
    implements _$$_MJitsiCopyWith<$Res> {
  __$$_MJitsiCopyWithImpl(_$_MJitsi _value, $Res Function(_$_MJitsi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
    Object? roomName = null,
    Object? userCall = freezed,
  }) {
    return _then(_$_MJitsi(
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: null == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      userCall: freezed == userCall
          ? _value.userCall
          : userCall // ignore: cast_nullable_to_non_nullable
              as MUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MJitsi implements _MJitsi {
  _$_MJitsi({this.room = "", this.roomName = "", this.userCall});

  factory _$_MJitsi.fromJson(Map<String, dynamic> json) =>
      _$$_MJitsiFromJson(json);

  @override
  @JsonKey()
  String room;
  @override
  @JsonKey()
  String roomName;
  @override
  MUser? userCall;

  @override
  String toString() {
    return 'MJitsi(room: $room, roomName: $roomName, userCall: $userCall)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MJitsiCopyWith<_$_MJitsi> get copyWith =>
      __$$_MJitsiCopyWithImpl<_$_MJitsi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MJitsiToJson(
      this,
    );
  }
}

abstract class _MJitsi implements MJitsi {
  factory _MJitsi({String room, String roomName, MUser? userCall}) = _$_MJitsi;

  factory _MJitsi.fromJson(Map<String, dynamic> json) = _$_MJitsi.fromJson;

  @override
  String get room;
  set room(String value);
  @override
  String get roomName;
  set roomName(String value);
  @override
  MUser? get userCall;
  set userCall(MUser? value);
  @override
  @JsonKey(ignore: true)
  _$$_MJitsiCopyWith<_$_MJitsi> get copyWith =>
      throw _privateConstructorUsedError;
}
