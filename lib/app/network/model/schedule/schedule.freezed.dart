// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MSchedule _$MScheduleFromJson(Map<String, dynamic> json) {
  return _MSchedule.fromJson(json);
}

/// @nodoc
mixin _$MSchedule {
  double get startPeriodTimestamp => throw _privateConstructorUsedError;
  set startPeriodTimestamp(double value) => throw _privateConstructorUsedError;
  double get endPeriodTimestamp => throw _privateConstructorUsedError;
  set endPeriodTimestamp(double value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get scheduleId => throw _privateConstructorUsedError;
  set scheduleId(String value) => throw _privateConstructorUsedError;
  String get startPeriod => throw _privateConstructorUsedError;
  set startPeriod(String value) => throw _privateConstructorUsedError;
  String get endPeriod => throw _privateConstructorUsedError;
  set endPeriod(String value) => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  set createdAt(String value) => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String value) => throw _privateConstructorUsedError;
  MScheduleInfo? get scheduleInfo => throw _privateConstructorUsedError;
  set scheduleInfo(MScheduleInfo? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MScheduleCopyWith<MSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MScheduleCopyWith<$Res> {
  factory $MScheduleCopyWith(MSchedule value, $Res Function(MSchedule) then) =
      _$MScheduleCopyWithImpl<$Res, MSchedule>;
  @useResult
  $Res call(
      {double startPeriodTimestamp,
      double endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      String createdAt,
      String updatedAt,
      MScheduleInfo? scheduleInfo});

  $MScheduleInfoCopyWith<$Res>? get scheduleInfo;
}

/// @nodoc
class _$MScheduleCopyWithImpl<$Res, $Val extends MSchedule>
    implements $MScheduleCopyWith<$Res> {
  _$MScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPeriodTimestamp = null,
    Object? endPeriodTimestamp = null,
    Object? id = null,
    Object? scheduleId = null,
    Object? startPeriod = null,
    Object? endPeriod = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? scheduleInfo = freezed,
  }) {
    return _then(_value.copyWith(
      startPeriodTimestamp: null == startPeriodTimestamp
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as double,
      endPeriodTimestamp: null == endPeriodTimestamp
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      startPeriod: null == startPeriod
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      endPeriod: null == endPeriod
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleInfo: freezed == scheduleInfo
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as MScheduleInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MScheduleInfoCopyWith<$Res>? get scheduleInfo {
    if (_value.scheduleInfo == null) {
      return null;
    }

    return $MScheduleInfoCopyWith<$Res>(_value.scheduleInfo!, (value) {
      return _then(_value.copyWith(scheduleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MScheduleCopyWith<$Res> implements $MScheduleCopyWith<$Res> {
  factory _$$_MScheduleCopyWith(
          _$_MSchedule value, $Res Function(_$_MSchedule) then) =
      __$$_MScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double startPeriodTimestamp,
      double endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      String createdAt,
      String updatedAt,
      MScheduleInfo? scheduleInfo});

  @override
  $MScheduleInfoCopyWith<$Res>? get scheduleInfo;
}

/// @nodoc
class __$$_MScheduleCopyWithImpl<$Res>
    extends _$MScheduleCopyWithImpl<$Res, _$_MSchedule>
    implements _$$_MScheduleCopyWith<$Res> {
  __$$_MScheduleCopyWithImpl(
      _$_MSchedule _value, $Res Function(_$_MSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPeriodTimestamp = null,
    Object? endPeriodTimestamp = null,
    Object? id = null,
    Object? scheduleId = null,
    Object? startPeriod = null,
    Object? endPeriod = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? scheduleInfo = freezed,
  }) {
    return _then(_$_MSchedule(
      startPeriodTimestamp: null == startPeriodTimestamp
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as double,
      endPeriodTimestamp: null == endPeriodTimestamp
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      startPeriod: null == startPeriod
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      endPeriod: null == endPeriod
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleInfo: freezed == scheduleInfo
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as MScheduleInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MSchedule implements _MSchedule {
  _$_MSchedule(
      {this.startPeriodTimestamp = 0,
      this.endPeriodTimestamp = 0,
      this.id = "",
      this.scheduleId = "",
      this.startPeriod = "",
      this.endPeriod = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.scheduleInfo});

  factory _$_MSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_MScheduleFromJson(json);

  @override
  @JsonKey()
  double startPeriodTimestamp;
  @override
  @JsonKey()
  double endPeriodTimestamp;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String scheduleId;
  @override
  @JsonKey()
  String startPeriod;
  @override
  @JsonKey()
  String endPeriod;
  @override
  @JsonKey()
  String createdAt;
  @override
  @JsonKey()
  String updatedAt;
  @override
  MScheduleInfo? scheduleInfo;

  @override
  String toString() {
    return 'MSchedule(startPeriodTimestamp: $startPeriodTimestamp, endPeriodTimestamp: $endPeriodTimestamp, id: $id, scheduleId: $scheduleId, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, updatedAt: $updatedAt, scheduleInfo: $scheduleInfo)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MScheduleCopyWith<_$_MSchedule> get copyWith =>
      __$$_MScheduleCopyWithImpl<_$_MSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MScheduleToJson(
      this,
    );
  }
}

abstract class _MSchedule implements MSchedule {
  factory _MSchedule(
      {double startPeriodTimestamp,
      double endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      String createdAt,
      String updatedAt,
      MScheduleInfo? scheduleInfo}) = _$_MSchedule;

  factory _MSchedule.fromJson(Map<String, dynamic> json) =
      _$_MSchedule.fromJson;

  @override
  double get startPeriodTimestamp;
  set startPeriodTimestamp(double value);
  @override
  double get endPeriodTimestamp;
  set endPeriodTimestamp(double value);
  @override
  String get id;
  set id(String value);
  @override
  String get scheduleId;
  set scheduleId(String value);
  @override
  String get startPeriod;
  set startPeriod(String value);
  @override
  String get endPeriod;
  set endPeriod(String value);
  @override
  String get createdAt;
  set createdAt(String value);
  @override
  String get updatedAt;
  set updatedAt(String value);
  @override
  MScheduleInfo? get scheduleInfo;
  set scheduleInfo(MScheduleInfo? value);
  @override
  @JsonKey(ignore: true)
  _$$_MScheduleCopyWith<_$_MSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
