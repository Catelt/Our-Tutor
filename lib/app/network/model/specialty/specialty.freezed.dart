// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MSpecialty _$MSpecialtyFromJson(Map<String, dynamic> json) {
  return _MSpecialty.fromJson(json);
}

/// @nodoc
mixin _$MSpecialty {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get categoriesId => throw _privateConstructorUsedError;
  set categoriesId(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MSpecialtyCopyWith<MSpecialty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MSpecialtyCopyWith<$Res> {
  factory $MSpecialtyCopyWith(
          MSpecialty value, $Res Function(MSpecialty) then) =
      _$MSpecialtyCopyWithImpl<$Res, MSpecialty>;
  @useResult
  $Res call({String id, String name, String categoriesId});
}

/// @nodoc
class _$MSpecialtyCopyWithImpl<$Res, $Val extends MSpecialty>
    implements $MSpecialtyCopyWith<$Res> {
  _$MSpecialtyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoriesId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesId: null == categoriesId
          ? _value.categoriesId
          : categoriesId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MSpecialtyCopyWith<$Res>
    implements $MSpecialtyCopyWith<$Res> {
  factory _$$_MSpecialtyCopyWith(
          _$_MSpecialty value, $Res Function(_$_MSpecialty) then) =
      __$$_MSpecialtyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String categoriesId});
}

/// @nodoc
class __$$_MSpecialtyCopyWithImpl<$Res>
    extends _$MSpecialtyCopyWithImpl<$Res, _$_MSpecialty>
    implements _$$_MSpecialtyCopyWith<$Res> {
  __$$_MSpecialtyCopyWithImpl(
      _$_MSpecialty _value, $Res Function(_$_MSpecialty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoriesId = null,
  }) {
    return _then(_$_MSpecialty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesId: null == categoriesId
          ? _value.categoriesId
          : categoriesId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MSpecialty extends _MSpecialty {
  _$_MSpecialty(
      {required this.id, required this.name, required this.categoriesId})
      : super._();

  factory _$_MSpecialty.fromJson(Map<String, dynamic> json) =>
      _$$_MSpecialtyFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  String categoriesId;

  @override
  String toString() {
    return 'MSpecialty(id: $id, name: $name, categoriesId: $categoriesId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MSpecialtyCopyWith<_$_MSpecialty> get copyWith =>
      __$$_MSpecialtyCopyWithImpl<_$_MSpecialty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MSpecialtyToJson(
      this,
    );
  }
}

abstract class _MSpecialty extends MSpecialty {
  factory _MSpecialty(
      {required String id,
      required String name,
      required String categoriesId}) = _$_MSpecialty;
  _MSpecialty._() : super._();

  factory _MSpecialty.fromJson(Map<String, dynamic> json) =
      _$_MSpecialty.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get categoriesId;
  set categoriesId(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MSpecialtyCopyWith<_$_MSpecialty> get copyWith =>
      throw _privateConstructorUsedError;
}
