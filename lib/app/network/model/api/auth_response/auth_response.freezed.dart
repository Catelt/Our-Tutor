// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MAuthResponse _$MAuthResponseFromJson(Map<String, dynamic> json) {
  return _MAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$MAuthResponse {
  MUser get user => throw _privateConstructorUsedError;
  MTokenResponse get tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MAuthResponseCopyWith<MAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MAuthResponseCopyWith<$Res> {
  factory $MAuthResponseCopyWith(
          MAuthResponse value, $Res Function(MAuthResponse) then) =
      _$MAuthResponseCopyWithImpl<$Res, MAuthResponse>;
  @useResult
  $Res call({MUser user, MTokenResponse tokens});

  $MUserCopyWith<$Res> get user;
  $MTokenResponseCopyWith<$Res> get tokens;
}

/// @nodoc
class _$MAuthResponseCopyWithImpl<$Res, $Val extends MAuthResponse>
    implements $MAuthResponseCopyWith<$Res> {
  _$MAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MUser,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as MTokenResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MUserCopyWith<$Res> get user {
    return $MUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MTokenResponseCopyWith<$Res> get tokens {
    return $MTokenResponseCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MAuthResponseCopyWith<$Res>
    implements $MAuthResponseCopyWith<$Res> {
  factory _$$_MAuthResponseCopyWith(
          _$_MAuthResponse value, $Res Function(_$_MAuthResponse) then) =
      __$$_MAuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MUser user, MTokenResponse tokens});

  @override
  $MUserCopyWith<$Res> get user;
  @override
  $MTokenResponseCopyWith<$Res> get tokens;
}

/// @nodoc
class __$$_MAuthResponseCopyWithImpl<$Res>
    extends _$MAuthResponseCopyWithImpl<$Res, _$_MAuthResponse>
    implements _$$_MAuthResponseCopyWith<$Res> {
  __$$_MAuthResponseCopyWithImpl(
      _$_MAuthResponse _value, $Res Function(_$_MAuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_$_MAuthResponse(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MUser,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as MTokenResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MAuthResponse with DiagnosticableTreeMixin implements _MAuthResponse {
  const _$_MAuthResponse({required this.user, required this.tokens});

  factory _$_MAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MAuthResponseFromJson(json);

  @override
  final MUser user;
  @override
  final MTokenResponse tokens;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MAuthResponse(user: $user, tokens: $tokens)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MAuthResponse'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('tokens', tokens));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MAuthResponse &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, tokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MAuthResponseCopyWith<_$_MAuthResponse> get copyWith =>
      __$$_MAuthResponseCopyWithImpl<_$_MAuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MAuthResponseToJson(
      this,
    );
  }
}

abstract class _MAuthResponse implements MAuthResponse {
  const factory _MAuthResponse(
      {required final MUser user,
      required final MTokenResponse tokens}) = _$_MAuthResponse;

  factory _MAuthResponse.fromJson(Map<String, dynamic> json) =
      _$_MAuthResponse.fromJson;

  @override
  MUser get user;
  @override
  MTokenResponse get tokens;
  @override
  @JsonKey(ignore: true)
  _$$_MAuthResponseCopyWith<_$_MAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
