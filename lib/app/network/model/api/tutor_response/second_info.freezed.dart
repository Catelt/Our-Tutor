// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'second_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MSecondInfo _$MSecondInfoFromJson(Map<String, dynamic> json) {
  return _MSecondInfo.fromJson(json);
}

/// @nodoc
mixin _$MSecondInfo {
  String get avatar => throw _privateConstructorUsedError;
  set avatar(String value) => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  set country(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  MTutor get tutorInfo => throw _privateConstructorUsedError;
  set tutorInfo(MTutor value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MSecondInfoCopyWith<MSecondInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MSecondInfoCopyWith<$Res> {
  factory $MSecondInfoCopyWith(
          MSecondInfo value, $Res Function(MSecondInfo) then) =
      _$MSecondInfoCopyWithImpl<$Res, MSecondInfo>;
  @useResult
  $Res call({String avatar, String country, String name, MTutor tutorInfo});

  $MTutorCopyWith<$Res> get tutorInfo;
}

/// @nodoc
class _$MSecondInfoCopyWithImpl<$Res, $Val extends MSecondInfo>
    implements $MSecondInfoCopyWith<$Res> {
  _$MSecondInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? country = null,
    Object? name = null,
    Object? tutorInfo = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tutorInfo: null == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as MTutor,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MTutorCopyWith<$Res> get tutorInfo {
    return $MTutorCopyWith<$Res>(_value.tutorInfo, (value) {
      return _then(_value.copyWith(tutorInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MSecondInfoCopyWith<$Res>
    implements $MSecondInfoCopyWith<$Res> {
  factory _$$_MSecondInfoCopyWith(
          _$_MSecondInfo value, $Res Function(_$_MSecondInfo) then) =
      __$$_MSecondInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatar, String country, String name, MTutor tutorInfo});

  @override
  $MTutorCopyWith<$Res> get tutorInfo;
}

/// @nodoc
class __$$_MSecondInfoCopyWithImpl<$Res>
    extends _$MSecondInfoCopyWithImpl<$Res, _$_MSecondInfo>
    implements _$$_MSecondInfoCopyWith<$Res> {
  __$$_MSecondInfoCopyWithImpl(
      _$_MSecondInfo _value, $Res Function(_$_MSecondInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? country = null,
    Object? name = null,
    Object? tutorInfo = null,
  }) {
    return _then(_$_MSecondInfo(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tutorInfo: null == tutorInfo
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as MTutor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MSecondInfo implements _MSecondInfo {
  _$_MSecondInfo(
      {this.avatar = "",
      this.country = "",
      this.name = "",
      required this.tutorInfo});

  factory _$_MSecondInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MSecondInfoFromJson(json);

  @override
  @JsonKey()
  String avatar;
  @override
  @JsonKey()
  String country;
  @override
  @JsonKey()
  String name;
  @override
  MTutor tutorInfo;

  @override
  String toString() {
    return 'MSecondInfo(avatar: $avatar, country: $country, name: $name, tutorInfo: $tutorInfo)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MSecondInfoCopyWith<_$_MSecondInfo> get copyWith =>
      __$$_MSecondInfoCopyWithImpl<_$_MSecondInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MSecondInfoToJson(
      this,
    );
  }
}

abstract class _MSecondInfo implements MSecondInfo {
  factory _MSecondInfo(
      {String avatar,
      String country,
      String name,
      required MTutor tutorInfo}) = _$_MSecondInfo;

  factory _MSecondInfo.fromJson(Map<String, dynamic> json) =
      _$_MSecondInfo.fromJson;

  @override
  String get avatar;
  set avatar(String value);
  @override
  String get country;
  set country(String value);
  @override
  String get name;
  set name(String value);
  @override
  MTutor get tutorInfo;
  set tutorInfo(MTutor value);
  @override
  @JsonKey(ignore: true)
  _$$_MSecondInfoCopyWith<_$_MSecondInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
