// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MCourseResponse _$MCourseResponseFromJson(Map<String, dynamic> json) {
  return _MCourseResponse.fromJson(json);
}

/// @nodoc
mixin _$MCourseResponse {
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;
  List<MCourse> get rows => throw _privateConstructorUsedError;
  set rows(List<MCourse> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MCourseResponseCopyWith<MCourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MCourseResponseCopyWith<$Res> {
  factory $MCourseResponseCopyWith(
          MCourseResponse value, $Res Function(MCourseResponse) then) =
      _$MCourseResponseCopyWithImpl<$Res, MCourseResponse>;
  @useResult
  $Res call({int count, List<MCourse> rows});
}

/// @nodoc
class _$MCourseResponseCopyWithImpl<$Res, $Val extends MCourseResponse>
    implements $MCourseResponseCopyWith<$Res> {
  _$MCourseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rows = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<MCourse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MCourseResponseCopyWith<$Res>
    implements $MCourseResponseCopyWith<$Res> {
  factory _$$_MCourseResponseCopyWith(
          _$_MCourseResponse value, $Res Function(_$_MCourseResponse) then) =
      __$$_MCourseResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<MCourse> rows});
}

/// @nodoc
class __$$_MCourseResponseCopyWithImpl<$Res>
    extends _$MCourseResponseCopyWithImpl<$Res, _$_MCourseResponse>
    implements _$$_MCourseResponseCopyWith<$Res> {
  __$$_MCourseResponseCopyWithImpl(
      _$_MCourseResponse _value, $Res Function(_$_MCourseResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rows = null,
  }) {
    return _then(_$_MCourseResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<MCourse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MCourseResponse implements _MCourseResponse {
  _$_MCourseResponse({this.count = 0, this.rows = const []});

  factory _$_MCourseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MCourseResponseFromJson(json);

  @override
  @JsonKey()
  int count;
  @override
  @JsonKey()
  List<MCourse> rows;

  @override
  String toString() {
    return 'MCourseResponse(count: $count, rows: $rows)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MCourseResponseCopyWith<_$_MCourseResponse> get copyWith =>
      __$$_MCourseResponseCopyWithImpl<_$_MCourseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MCourseResponseToJson(
      this,
    );
  }
}

abstract class _MCourseResponse implements MCourseResponse {
  factory _MCourseResponse({int count, List<MCourse> rows}) =
      _$_MCourseResponse;

  factory _MCourseResponse.fromJson(Map<String, dynamic> json) =
      _$_MCourseResponse.fromJson;

  @override
  int get count;
  set count(int value);
  @override
  List<MCourse> get rows;
  set rows(List<MCourse> value);
  @override
  @JsonKey(ignore: true)
  _$$_MCourseResponseCopyWith<_$_MCourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
