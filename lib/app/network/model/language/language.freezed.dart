// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MLanguage _$MLanguageFromJson(Map<String, dynamic> json) {
  return _MLanguage.fromJson(json);
}

/// @nodoc
mixin _$MLanguage {
  @JsonKey(name: "iso2_cc")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "iso2_cc")
  set code(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MLanguageCopyWith<MLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MLanguageCopyWith<$Res> {
  factory $MLanguageCopyWith(MLanguage value, $Res Function(MLanguage) then) =
      _$MLanguageCopyWithImpl<$Res, MLanguage>;
  @useResult
  $Res call({@JsonKey(name: "iso2_cc") String code, String name});
}

/// @nodoc
class _$MLanguageCopyWithImpl<$Res, $Val extends MLanguage>
    implements $MLanguageCopyWith<$Res> {
  _$MLanguageCopyWithImpl(this._value, this._then);

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
abstract class _$$_MLanguageCopyWith<$Res> implements $MLanguageCopyWith<$Res> {
  factory _$$_MLanguageCopyWith(
          _$_MLanguage value, $Res Function(_$_MLanguage) then) =
      __$$_MLanguageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "iso2_cc") String code, String name});
}

/// @nodoc
class __$$_MLanguageCopyWithImpl<$Res>
    extends _$MLanguageCopyWithImpl<$Res, _$_MLanguage>
    implements _$$_MLanguageCopyWith<$Res> {
  __$$_MLanguageCopyWithImpl(
      _$_MLanguage _value, $Res Function(_$_MLanguage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$_MLanguage(
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
class _$_MLanguage extends _MLanguage {
  _$_MLanguage(
      {@JsonKey(name: "iso2_cc") required this.code, required this.name})
      : super._();

  factory _$_MLanguage.fromJson(Map<String, dynamic> json) =>
      _$$_MLanguageFromJson(json);

  @override
  @JsonKey(name: "iso2_cc")
  String code;
  @override
  String name;

  @override
  String toString() {
    return 'MLanguage(code: $code, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MLanguageCopyWith<_$_MLanguage> get copyWith =>
      __$$_MLanguageCopyWithImpl<_$_MLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MLanguageToJson(
      this,
    );
  }
}

abstract class _MLanguage extends MLanguage {
  factory _MLanguage(
      {@JsonKey(name: "iso2_cc") required String code,
      required String name}) = _$_MLanguage;
  _MLanguage._() : super._();

  factory _MLanguage.fromJson(Map<String, dynamic> json) =
      _$_MLanguage.fromJson;

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
  _$$_MLanguageCopyWith<_$_MLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
