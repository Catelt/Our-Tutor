// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MTokenResponse _$MTokenResponseFromJson(Map<String, dynamic> json) {
  return _MTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$MTokenResponse {
  MToken get access => throw _privateConstructorUsedError;
  set access(MToken value) => throw _privateConstructorUsedError;
  MToken get refresh => throw _privateConstructorUsedError;
  set refresh(MToken value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MTokenResponseCopyWith<MTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MTokenResponseCopyWith<$Res> {
  factory $MTokenResponseCopyWith(
          MTokenResponse value, $Res Function(MTokenResponse) then) =
      _$MTokenResponseCopyWithImpl<$Res, MTokenResponse>;
  @useResult
  $Res call({MToken access, MToken refresh});

  $MTokenCopyWith<$Res> get access;
  $MTokenCopyWith<$Res> get refresh;
}

/// @nodoc
class _$MTokenResponseCopyWithImpl<$Res, $Val extends MTokenResponse>
    implements $MTokenResponseCopyWith<$Res> {
  _$MTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as MToken,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as MToken,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MTokenCopyWith<$Res> get access {
    return $MTokenCopyWith<$Res>(_value.access, (value) {
      return _then(_value.copyWith(access: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MTokenCopyWith<$Res> get refresh {
    return $MTokenCopyWith<$Res>(_value.refresh, (value) {
      return _then(_value.copyWith(refresh: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MTokenResponseCopyWith<$Res>
    implements $MTokenResponseCopyWith<$Res> {
  factory _$$_MTokenResponseCopyWith(
          _$_MTokenResponse value, $Res Function(_$_MTokenResponse) then) =
      __$$_MTokenResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MToken access, MToken refresh});

  @override
  $MTokenCopyWith<$Res> get access;
  @override
  $MTokenCopyWith<$Res> get refresh;
}

/// @nodoc
class __$$_MTokenResponseCopyWithImpl<$Res>
    extends _$MTokenResponseCopyWithImpl<$Res, _$_MTokenResponse>
    implements _$$_MTokenResponseCopyWith<$Res> {
  __$$_MTokenResponseCopyWithImpl(
      _$_MTokenResponse _value, $Res Function(_$_MTokenResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$_MTokenResponse(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as MToken,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as MToken,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MTokenResponse
    with DiagnosticableTreeMixin
    implements _MTokenResponse {
  _$_MTokenResponse({required this.access, required this.refresh});

  factory _$_MTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MTokenResponseFromJson(json);

  @override
  MToken access;
  @override
  MToken refresh;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MTokenResponse(access: $access, refresh: $refresh)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MTokenResponse'))
      ..add(DiagnosticsProperty('access', access))
      ..add(DiagnosticsProperty('refresh', refresh));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MTokenResponseCopyWith<_$_MTokenResponse> get copyWith =>
      __$$_MTokenResponseCopyWithImpl<_$_MTokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MTokenResponseToJson(
      this,
    );
  }
}

abstract class _MTokenResponse implements MTokenResponse {
  factory _MTokenResponse({required MToken access, required MToken refresh}) =
      _$_MTokenResponse;

  factory _MTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_MTokenResponse.fromJson;

  @override
  MToken get access;
  set access(MToken value);
  @override
  MToken get refresh;
  set refresh(MToken value);
  @override
  @JsonKey(ignore: true)
  _$$_MTokenResponseCopyWith<_$_MTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
