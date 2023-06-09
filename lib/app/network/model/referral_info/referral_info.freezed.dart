// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MReferralInfo _$MReferralInfoFromJson(Map<String, dynamic> json) {
  return _MReferralInfo.fromJson(json);
}

/// @nodoc
mixin _$MReferralInfo {
  String get referralCode => throw _privateConstructorUsedError;
  set referralCode(String value) => throw _privateConstructorUsedError;
  MReferralPackInfo get referralInfo => throw _privateConstructorUsedError;
  set referralInfo(MReferralPackInfo value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MReferralInfoCopyWith<MReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MReferralInfoCopyWith<$Res> {
  factory $MReferralInfoCopyWith(
          MReferralInfo value, $Res Function(MReferralInfo) then) =
      _$MReferralInfoCopyWithImpl<$Res, MReferralInfo>;
  @useResult
  $Res call({String referralCode, MReferralPackInfo referralInfo});

  $MReferralPackInfoCopyWith<$Res> get referralInfo;
}

/// @nodoc
class _$MReferralInfoCopyWithImpl<$Res, $Val extends MReferralInfo>
    implements $MReferralInfoCopyWith<$Res> {
  _$MReferralInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = null,
    Object? referralInfo = null,
  }) {
    return _then(_value.copyWith(
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referralInfo: null == referralInfo
          ? _value.referralInfo
          : referralInfo // ignore: cast_nullable_to_non_nullable
              as MReferralPackInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MReferralPackInfoCopyWith<$Res> get referralInfo {
    return $MReferralPackInfoCopyWith<$Res>(_value.referralInfo, (value) {
      return _then(_value.copyWith(referralInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MReferralInfoCopyWith<$Res>
    implements $MReferralInfoCopyWith<$Res> {
  factory _$$_MReferralInfoCopyWith(
          _$_MReferralInfo value, $Res Function(_$_MReferralInfo) then) =
      __$$_MReferralInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String referralCode, MReferralPackInfo referralInfo});

  @override
  $MReferralPackInfoCopyWith<$Res> get referralInfo;
}

/// @nodoc
class __$$_MReferralInfoCopyWithImpl<$Res>
    extends _$MReferralInfoCopyWithImpl<$Res, _$_MReferralInfo>
    implements _$$_MReferralInfoCopyWith<$Res> {
  __$$_MReferralInfoCopyWithImpl(
      _$_MReferralInfo _value, $Res Function(_$_MReferralInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = null,
    Object? referralInfo = null,
  }) {
    return _then(_$_MReferralInfo(
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referralInfo: null == referralInfo
          ? _value.referralInfo
          : referralInfo // ignore: cast_nullable_to_non_nullable
              as MReferralPackInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MReferralInfo with DiagnosticableTreeMixin implements _MReferralInfo {
  _$_MReferralInfo({required this.referralCode, required this.referralInfo});

  factory _$_MReferralInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MReferralInfoFromJson(json);

  @override
  String referralCode;
  @override
  MReferralPackInfo referralInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MReferralInfo(referralCode: $referralCode, referralInfo: $referralInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MReferralInfo'))
      ..add(DiagnosticsProperty('referralCode', referralCode))
      ..add(DiagnosticsProperty('referralInfo', referralInfo));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MReferralInfoCopyWith<_$_MReferralInfo> get copyWith =>
      __$$_MReferralInfoCopyWithImpl<_$_MReferralInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MReferralInfoToJson(
      this,
    );
  }
}

abstract class _MReferralInfo implements MReferralInfo {
  factory _MReferralInfo(
      {required String referralCode,
      required MReferralPackInfo referralInfo}) = _$_MReferralInfo;

  factory _MReferralInfo.fromJson(Map<String, dynamic> json) =
      _$_MReferralInfo.fromJson;

  @override
  String get referralCode;
  set referralCode(String value);
  @override
  MReferralPackInfo get referralInfo;
  set referralInfo(MReferralPackInfo value);
  @override
  @JsonKey(ignore: true)
  _$$_MReferralInfoCopyWith<_$_MReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
