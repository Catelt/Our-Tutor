// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_tutor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MFavoriteTutor _$MFavoriteTutorFromJson(Map<String, dynamic> json) {
  return _MFavoriteTutor.fromJson(json);
}

/// @nodoc
mixin _$MFavoriteTutor {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get firstId => throw _privateConstructorUsedError;
  set firstId(String value) => throw _privateConstructorUsedError;
  String get secondId => throw _privateConstructorUsedError;
  set secondId(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MFavoriteTutorCopyWith<MFavoriteTutor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MFavoriteTutorCopyWith<$Res> {
  factory $MFavoriteTutorCopyWith(
          MFavoriteTutor value, $Res Function(MFavoriteTutor) then) =
      _$MFavoriteTutorCopyWithImpl<$Res, MFavoriteTutor>;
  @useResult
  $Res call({String id, String firstId, String secondId});
}

/// @nodoc
class _$MFavoriteTutorCopyWithImpl<$Res, $Val extends MFavoriteTutor>
    implements $MFavoriteTutorCopyWith<$Res> {
  _$MFavoriteTutorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstId = null,
    Object? secondId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: null == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: null == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MFavoriteTutorCopyWith<$Res>
    implements $MFavoriteTutorCopyWith<$Res> {
  factory _$$_MFavoriteTutorCopyWith(
          _$_MFavoriteTutor value, $Res Function(_$_MFavoriteTutor) then) =
      __$$_MFavoriteTutorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String firstId, String secondId});
}

/// @nodoc
class __$$_MFavoriteTutorCopyWithImpl<$Res>
    extends _$MFavoriteTutorCopyWithImpl<$Res, _$_MFavoriteTutor>
    implements _$$_MFavoriteTutorCopyWith<$Res> {
  __$$_MFavoriteTutorCopyWithImpl(
      _$_MFavoriteTutor _value, $Res Function(_$_MFavoriteTutor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstId = null,
    Object? secondId = null,
  }) {
    return _then(_$_MFavoriteTutor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstId: null == firstId
          ? _value.firstId
          : firstId // ignore: cast_nullable_to_non_nullable
              as String,
      secondId: null == secondId
          ? _value.secondId
          : secondId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MFavoriteTutor implements _MFavoriteTutor {
  _$_MFavoriteTutor({this.id = "", this.firstId = "", this.secondId = ""});

  factory _$_MFavoriteTutor.fromJson(Map<String, dynamic> json) =>
      _$$_MFavoriteTutorFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String firstId;
  @override
  @JsonKey()
  String secondId;

  @override
  String toString() {
    return 'MFavoriteTutor(id: $id, firstId: $firstId, secondId: $secondId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MFavoriteTutorCopyWith<_$_MFavoriteTutor> get copyWith =>
      __$$_MFavoriteTutorCopyWithImpl<_$_MFavoriteTutor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MFavoriteTutorToJson(
      this,
    );
  }
}

abstract class _MFavoriteTutor implements MFavoriteTutor {
  factory _MFavoriteTutor({String id, String firstId, String secondId}) =
      _$_MFavoriteTutor;

  factory _MFavoriteTutor.fromJson(Map<String, dynamic> json) =
      _$_MFavoriteTutor.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get firstId;
  set firstId(String value);
  @override
  String get secondId;
  set secondId(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MFavoriteTutorCopyWith<_$_MFavoriteTutor> get copyWith =>
      throw _privateConstructorUsedError;
}
