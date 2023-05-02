// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MScheduleInfo _$MScheduleInfoFromJson(Map<String, dynamic> json) {
  return _MScheduleInfo.fromJson(json);
}

/// @nodoc
mixin _$MScheduleInfo {
  String get date => throw _privateConstructorUsedError;
  set date(String value) => throw _privateConstructorUsedError;
  double get createdAtTimeStamp => throw _privateConstructorUsedError;
  set createdAtTimeStamp(double value) => throw _privateConstructorUsedError;
  double get updatedAtTimeStamp => throw _privateConstructorUsedError;
  set updatedAtTimeStamp(double value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  set tutorId(String value) => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  set startTime(String value) => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  set endTime(String value) => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  set isDeleted(bool value) => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  set createdAt(String value) => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String value) => throw _privateConstructorUsedError;
  MTutor? get tutorInfo => throw _privateConstructorUsedError;
  set tutorInfo(MTutor? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MScheduleInfoCopyWith<MScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MScheduleInfoCopyWith<$Res> {
  factory $MScheduleInfoCopyWith(
          MScheduleInfo value, $Res Function(MScheduleInfo) then) =
      _$MScheduleInfoCopyWithImpl<$Res, MScheduleInfo>;
  @useResult
  $Res call(
      {String date,
      double createdAtTimeStamp,
      double updatedAtTimeStamp,
      String id,
      String tutorId,
      String startTime,
      String endTime,
      bool isDeleted,
      String createdAt,
      String updatedAt,
      MTutor? tutorInfo});

  $MTutorCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class _$MScheduleInfoCopyWithImpl<$Res, $Val extends MScheduleInfo>
    implements $MScheduleInfoCopyWith<$Res> {
  _$MScheduleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? createdAtTimeStamp = null,
    Object? updatedAtTimeStamp = null,
    Object? id = null,
    Object? tutorId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? tutorInfo = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAtTimeStamp: null == createdAtTimeStamp
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAtTimeStamp: null == updatedAtTimeStamp
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as MTutor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MTutorCopyWith<$Res>? get tutorInfo {
    if (_value.tutorInfo == null) {
      return null;
    }

    return $MTutorCopyWith<$Res>(_value.tutorInfo!, (value) {
      return _then(_value.copyWith(tutorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MScheduleInfoCopyWith<$Res>
    implements $MScheduleInfoCopyWith<$Res> {
  factory _$$_MScheduleInfoCopyWith(
          _$_MScheduleInfo value, $Res Function(_$_MScheduleInfo) then) =
      __$$_MScheduleInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      double createdAtTimeStamp,
      double updatedAtTimeStamp,
      String id,
      String tutorId,
      String startTime,
      String endTime,
      bool isDeleted,
      String createdAt,
      String updatedAt,
      MTutor? tutorInfo});

  @override
  $MTutorCopyWith<$Res>? get tutorInfo;
}

/// @nodoc
class __$$_MScheduleInfoCopyWithImpl<$Res>
    extends _$MScheduleInfoCopyWithImpl<$Res, _$_MScheduleInfo>
    implements _$$_MScheduleInfoCopyWith<$Res> {
  __$$_MScheduleInfoCopyWithImpl(
      _$_MScheduleInfo _value, $Res Function(_$_MScheduleInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? createdAtTimeStamp = null,
    Object? updatedAtTimeStamp = null,
    Object? id = null,
    Object? tutorId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isDeleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? tutorInfo = freezed,
  }) {
    return _then(_$_MScheduleInfo(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAtTimeStamp: null == createdAtTimeStamp
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAtTimeStamp: null == updatedAtTimeStamp
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      tutorInfo: freezed == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as MTutor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MScheduleInfo implements _MScheduleInfo {
  _$_MScheduleInfo(
      {this.date = "",
      this.createdAtTimeStamp = 0,
      this.updatedAtTimeStamp = 0,
      this.id = "",
      this.tutorId = "",
      this.startTime = "",
      this.endTime = "",
      this.isDeleted = false,
      this.createdAt = "",
      this.updatedAt = "",
      this.tutorInfo});

  factory _$_MScheduleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MScheduleInfoFromJson(json);

  @override
  @JsonKey()
  String date;
  @override
  @JsonKey()
  double createdAtTimeStamp;
  @override
  @JsonKey()
  double updatedAtTimeStamp;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String tutorId;
  @override
  @JsonKey()
  String startTime;
  @override
  @JsonKey()
  String endTime;
  @override
  @JsonKey()
  bool isDeleted;
  @override
  @JsonKey()
  String createdAt;
  @override
  @JsonKey()
  String updatedAt;
  @override
  MTutor? tutorInfo;

  @override
  String toString() {
    return 'MScheduleInfo(date: $date, createdAtTimeStamp: $createdAtTimeStamp, updatedAtTimeStamp: $updatedAtTimeStamp, id: $id, tutorId: $tutorId, startTime: $startTime, endTime: $endTime, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, tutorInfo: $tutorInfo)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MScheduleInfoCopyWith<_$_MScheduleInfo> get copyWith =>
      __$$_MScheduleInfoCopyWithImpl<_$_MScheduleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MScheduleInfoToJson(
      this,
    );
  }
}

abstract class _MScheduleInfo implements MScheduleInfo {
  factory _MScheduleInfo(
      {String date,
      double createdAtTimeStamp,
      double updatedAtTimeStamp,
      String id,
      String tutorId,
      String startTime,
      String endTime,
      bool isDeleted,
      String createdAt,
      String updatedAt,
      MTutor? tutorInfo}) = _$_MScheduleInfo;

  factory _MScheduleInfo.fromJson(Map<String, dynamic> json) =
      _$_MScheduleInfo.fromJson;

  @override
  String get date;
  set date(String value);
  @override
  double get createdAtTimeStamp;
  set createdAtTimeStamp(double value);
  @override
  double get updatedAtTimeStamp;
  set updatedAtTimeStamp(double value);
  @override
  String get id;
  set id(String value);
  @override
  String get tutorId;
  set tutorId(String value);
  @override
  String get startTime;
  set startTime(String value);
  @override
  String get endTime;
  set endTime(String value);
  @override
  bool get isDeleted;
  set isDeleted(bool value);
  @override
  String get createdAt;
  set createdAt(String value);
  @override
  String get updatedAt;
  set updatedAt(String value);
  @override
  MTutor? get tutorInfo;
  set tutorInfo(MTutor? value);
  @override
  @JsonKey(ignore: true)
  _$$_MScheduleInfoCopyWith<_$_MScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
