// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MCountry _$MCountryFromJson(Map<String, dynamic> json) {
  return _MCountry.fromJson(json);
}

/// @nodoc
mixin _$MCountry {
  @JsonKey(name: "iso2_cc")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "iso2_cc")
  set code(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MCountryCopyWith<MCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MCountryCopyWith<$Res> {
  factory $MCountryCopyWith(MCountry value, $Res Function(MCountry) then) =
      _$MCountryCopyWithImpl<$Res, MCountry>;
  @useResult
  $Res call({@JsonKey(name: "iso2_cc") String code, String name});
}

/// @nodoc
class _$MCountryCopyWithImpl<$Res, $Val extends MCountry>
    implements $MCountryCopyWith<$Res> {
  _$MCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MCountryCopyWith<$Res> implements $MCountryCopyWith<$Res> {
  factory _$$_MCountryCopyWith(
          _$_MCountry value, $Res Function(_$_MCountry) then) =
      __$$_MCountryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "iso2_cc") String code, String name});
}

/// @nodoc
class __$$_MCountryCopyWithImpl<$Res>
    extends _$MCountryCopyWithImpl<$Res, _$_MCountry>
    implements _$$_MCountryCopyWith<$Res> {
  __$$_MCountryCopyWithImpl(
      _$_MCountry _value, $Res Function(_$_MCountry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$_MCountry(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MCountry extends _MCountry {
  _$_MCountry(
      {@JsonKey(name: "iso2_cc") required this.code, required this.name})
      : super._();

  factory _$_MCountry.fromJson(Map<String, dynamic> json) =>
      _$$_MCountryFromJson(json);

  @override
  @JsonKey(name: "iso2_cc")
  String code;
  @override
  String name;

  @override
  String toString() {
    return 'MCountry(code: $code, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MCountryCopyWith<_$_MCountry> get copyWith =>
      __$$_MCountryCopyWithImpl<_$_MCountry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MCountryToJson(
      this,
    );
  }
}

abstract class _MCountry extends MCountry {
  factory _MCountry(
      {@JsonKey(name: "iso2_cc") required String code,
      required String name}) = _$_MCountry;
  _MCountry._() : super._();

  factory _MCountry.fromJson(Map<String, dynamic> json) = _$_MCountry.fromJson;

  @override
  @JsonKey(name: "iso2_cc")
  String get code;
  @JsonKey(name: "iso2_cc")
  set code(String value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MCountryCopyWith<_$_MCountry> get copyWith =>
      throw _privateConstructorUsedError;
}
