// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MLessonStatus _$MLessonStatusFromJson(Map<String, dynamic> json) {
  return _MLessonStatus.fromJson(json);
}

/// @nodoc
mixin _$MLessonStatus {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  set createdAt(String value) => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MLessonStatusCopyWith<MLessonStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MLessonStatusCopyWith<$Res> {
  factory $MLessonStatusCopyWith(
          MLessonStatus value, $Res Function(MLessonStatus) then) =
      _$MLessonStatusCopyWithImpl<$Res, MLessonStatus>;
  @useResult
  $Res call({int id, String status, String createdAt, String updatedAt});
}

/// @nodoc
class _$MLessonStatusCopyWithImpl<$Res, $Val extends MLessonStatus>
    implements $MLessonStatusCopyWith<$Res> {
  _$MLessonStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MLessonStatusCopyWith<$Res>
    implements $MLessonStatusCopyWith<$Res> {
  factory _$$_MLessonStatusCopyWith(
          _$_MLessonStatus value, $Res Function(_$_MLessonStatus) then) =
      __$$_MLessonStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status, String createdAt, String updatedAt});
}

/// @nodoc
class __$$_MLessonStatusCopyWithImpl<$Res>
    extends _$MLessonStatusCopyWithImpl<$Res, _$_MLessonStatus>
    implements _$$_MLessonStatusCopyWith<$Res> {
  __$$_MLessonStatusCopyWithImpl(
      _$_MLessonStatus _value, $Res Function(_$_MLessonStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_MLessonStatus(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MLessonStatus implements _MLessonStatus {
  _$_MLessonStatus(
      {this.id = 0,
      this.status = "",
      this.createdAt = "",
      this.updatedAt = ""});

  factory _$_MLessonStatus.fromJson(Map<String, dynamic> json) =>
      _$$_MLessonStatusFromJson(json);

  @override
  @JsonKey()
  int id;
  @override
  @JsonKey()
  String status;
  @override
  @JsonKey()
  String createdAt;
  @override
  @JsonKey()
  String updatedAt;

  @override
  String toString() {
    return 'MLessonStatus(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MLessonStatusCopyWith<_$_MLessonStatus> get copyWith =>
      __$$_MLessonStatusCopyWithImpl<_$_MLessonStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MLessonStatusToJson(
      this,
    );
  }
}

abstract class _MLessonStatus implements MLessonStatus {
  factory _MLessonStatus(
      {int id,
      String status,
      String createdAt,
      String updatedAt}) = _$_MLessonStatus;

  factory _MLessonStatus.fromJson(Map<String, dynamic> json) =
      _$_MLessonStatus.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get status;
  set status(String value);
  @override
  String get createdAt;
  set createdAt(String value);
  @override
  String get updatedAt;
  set updatedAt(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MLessonStatusCopyWith<_$_MLessonStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
