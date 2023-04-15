// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MToken _$MTokenFromJson(Map<String, dynamic> json) {
  return _MToken.fromJson(json);
}

/// @nodoc
mixin _$MToken {
  @JsonKey(name: "token")
  String get id => throw _privateConstructorUsedError;
  String get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MTokenCopyWith<MToken> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MTokenCopyWith<$Res> {
  factory $MTokenCopyWith(MToken value, $Res Function(MToken) then) =
      _$MTokenCopyWithImpl<$Res, MToken>;
  @useResult
  $Res call({@JsonKey(name: "token") String id, String expires});
}

/// @nodoc
class _$MTokenCopyWithImpl<$Res, $Val extends MToken>
    implements $MTokenCopyWith<$Res> {
  _$MTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expires = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expires: null == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MTokenCopyWith<$Res> implements $MTokenCopyWith<$Res> {
  factory _$$_MTokenCopyWith(_$_MToken value, $Res Function(_$_MToken) then) =
      __$$_MTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "token") String id, String expires});
}

/// @nodoc
class __$$_MTokenCopyWithImpl<$Res>
    extends _$MTokenCopyWithImpl<$Res, _$_MToken>
    implements _$$_MTokenCopyWith<$Res> {
  __$$_MTokenCopyWithImpl(_$_MToken _value, $Res Function(_$_MToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expires = null,
  }) {
    return _then(_$_MToken(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expires: null == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MToken with DiagnosticableTreeMixin implements _MToken {
  const _$_MToken(
      {@JsonKey(name: "token") required this.id, required this.expires});

  factory _$_MToken.fromJson(Map<String, dynamic> json) =>
      _$$_MTokenFromJson(json);

  @override
  @JsonKey(name: "token")
  final String id;
  @override
  final String expires;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MToken(id: $id, expires: $expires)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MToken'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('expires', expires));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MToken &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expires, expires) || other.expires == expires));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, expires);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MTokenCopyWith<_$_MToken> get copyWith =>
      __$$_MTokenCopyWithImpl<_$_MToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MTokenToJson(
      this,
    );
  }
}

abstract class _MToken implements MToken {
  const factory _MToken(
      {@JsonKey(name: "token") required final String id,
      required final String expires}) = _$_MToken;

  factory _MToken.fromJson(Map<String, dynamic> json) = _$_MToken.fromJson;

  @override
  @JsonKey(name: "token")
  String get id;
  @override
  String get expires;
  @override
  @JsonKey(ignore: true)
  _$$_MTokenCopyWith<_$_MToken> get copyWith =>
      throw _privateConstructorUsedError;
}
