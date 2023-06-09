// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'major.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MMajor _$MMajorFromJson(Map<String, dynamic> json) {
  return _MMajor.fromJson(json);
}

/// @nodoc
mixin _$MMajor {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  set key(String value) => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  set englishName(String value) => throw _privateConstructorUsedError;
  String get vietnameseName => throw _privateConstructorUsedError;
  set vietnameseName(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MMajorCopyWith<MMajor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MMajorCopyWith<$Res> {
  factory $MMajorCopyWith(MMajor value, $Res Function(MMajor) then) =
      _$MMajorCopyWithImpl<$Res, MMajor>;
  @useResult
  $Res call({String id, String key, String englishName, String vietnameseName});
}

/// @nodoc
class _$MMajorCopyWithImpl<$Res, $Val extends MMajor>
    implements $MMajorCopyWith<$Res> {
  _$MMajorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? englishName = null,
    Object? vietnameseName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      vietnameseName: null == vietnameseName
          ? _value.vietnameseName
          : vietnameseName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MMajorCopyWith<$Res> implements $MMajorCopyWith<$Res> {
  factory _$$_MMajorCopyWith(_$_MMajor value, $Res Function(_$_MMajor) then) =
      __$$_MMajorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String key, String englishName, String vietnameseName});
}

/// @nodoc
class __$$_MMajorCopyWithImpl<$Res>
    extends _$MMajorCopyWithImpl<$Res, _$_MMajor>
    implements _$$_MMajorCopyWith<$Res> {
  __$$_MMajorCopyWithImpl(_$_MMajor _value, $Res Function(_$_MMajor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? englishName = null,
    Object? vietnameseName = null,
  }) {
    return _then(_$_MMajor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      vietnameseName: null == vietnameseName
          ? _value.vietnameseName
          : vietnameseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MMajor extends _MMajor {
  _$_MMajor(
      {required this.id,
      required this.key,
      required this.englishName,
      required this.vietnameseName})
      : super._();

  factory _$_MMajor.fromJson(Map<String, dynamic> json) =>
      _$$_MMajorFromJson(json);

  @override
  String id;
  @override
  String key;
  @override
  String englishName;
  @override
  String vietnameseName;

  @override
  String toString() {
    return 'MMajor(id: $id, key: $key, englishName: $englishName, vietnameseName: $vietnameseName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MMajorCopyWith<_$_MMajor> get copyWith =>
      __$$_MMajorCopyWithImpl<_$_MMajor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MMajorToJson(
      this,
    );
  }
}

abstract class _MMajor extends MMajor {
  factory _MMajor(
      {required String id,
      required String key,
      required String englishName,
      required String vietnameseName}) = _$_MMajor;
  _MMajor._() : super._();

  factory _MMajor.fromJson(Map<String, dynamic> json) = _$_MMajor.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get key;
  set key(String value);
  @override
  String get englishName;
  set englishName(String value);
  @override
  String get vietnameseName;
  set vietnameseName(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MMajorCopyWith<_$_MMajor> get copyWith =>
      throw _privateConstructorUsedError;
}
