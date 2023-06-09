// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MTutors _$MTutorsFromJson(Map<String, dynamic> json) {
  return _MTutors.fromJson(json);
}

/// @nodoc
mixin _$MTutors {
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;
  List<MTutor> get rows => throw _privateConstructorUsedError;
  set rows(List<MTutor> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MTutorsCopyWith<MTutors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MTutorsCopyWith<$Res> {
  factory $MTutorsCopyWith(MTutors value, $Res Function(MTutors) then) =
      _$MTutorsCopyWithImpl<$Res, MTutors>;
  @useResult
  $Res call({int count, List<MTutor> rows});
}

/// @nodoc
class _$MTutorsCopyWithImpl<$Res, $Val extends MTutors>
    implements $MTutorsCopyWith<$Res> {
  _$MTutorsCopyWithImpl(this._value, this._then);

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
              as List<MTutor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MTutorsCopyWith<$Res> implements $MTutorsCopyWith<$Res> {
  factory _$$_MTutorsCopyWith(
          _$_MTutors value, $Res Function(_$_MTutors) then) =
      __$$_MTutorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<MTutor> rows});
}

/// @nodoc
class __$$_MTutorsCopyWithImpl<$Res>
    extends _$MTutorsCopyWithImpl<$Res, _$_MTutors>
    implements _$$_MTutorsCopyWith<$Res> {
  __$$_MTutorsCopyWithImpl(_$_MTutors _value, $Res Function(_$_MTutors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rows = null,
  }) {
    return _then(_$_MTutors(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<MTutor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MTutors implements _MTutors {
  _$_MTutors({this.count = 0, this.rows = const []});

  factory _$_MTutors.fromJson(Map<String, dynamic> json) =>
      _$$_MTutorsFromJson(json);

  @override
  @JsonKey()
  int count;
  @override
  @JsonKey()
  List<MTutor> rows;

  @override
  String toString() {
    return 'MTutors(count: $count, rows: $rows)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MTutorsCopyWith<_$_MTutors> get copyWith =>
      __$$_MTutorsCopyWithImpl<_$_MTutors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MTutorsToJson(
      this,
    );
  }
}

abstract class _MTutors implements MTutors {
  factory _MTutors({int count, List<MTutor> rows}) = _$_MTutors;

  factory _MTutors.fromJson(Map<String, dynamic> json) = _$_MTutors.fromJson;

  @override
  int get count;
  set count(int value);
  @override
  List<MTutor> get rows;
  set rows(List<MTutor> value);
  @override
  @JsonKey(ignore: true)
  _$$_MTutorsCopyWith<_$_MTutors> get copyWith =>
      throw _privateConstructorUsedError;
}
