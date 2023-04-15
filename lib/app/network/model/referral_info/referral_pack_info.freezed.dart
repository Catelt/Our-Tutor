// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_pack_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MReferralPackInfo _$MReferralPackInfoFromJson(Map<String, dynamic> json) {
  return _MReferralPackInfo.fromJson(json);
}

/// @nodoc
mixin _$MReferralPackInfo {
  int get earnPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MReferralPackInfoCopyWith<MReferralPackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MReferralPackInfoCopyWith<$Res> {
  factory $MReferralPackInfoCopyWith(
          MReferralPackInfo value, $Res Function(MReferralPackInfo) then) =
      _$MReferralPackInfoCopyWithImpl<$Res, MReferralPackInfo>;
  @useResult
  $Res call({int earnPercent});
}

/// @nodoc
class _$MReferralPackInfoCopyWithImpl<$Res, $Val extends MReferralPackInfo>
    implements $MReferralPackInfoCopyWith<$Res> {
  _$MReferralPackInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnPercent = null,
  }) {
    return _then(_value.copyWith(
      earnPercent: null == earnPercent
          ? _value.earnPercent
          : earnPercent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MReferralPackInfoCopyWith<$Res>
    implements $MReferralPackInfoCopyWith<$Res> {
  factory _$$_MReferralPackInfoCopyWith(_$_MReferralPackInfo value,
          $Res Function(_$_MReferralPackInfo) then) =
      __$$_MReferralPackInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int earnPercent});
}

/// @nodoc
class __$$_MReferralPackInfoCopyWithImpl<$Res>
    extends _$MReferralPackInfoCopyWithImpl<$Res, _$_MReferralPackInfo>
    implements _$$_MReferralPackInfoCopyWith<$Res> {
  __$$_MReferralPackInfoCopyWithImpl(
      _$_MReferralPackInfo _value, $Res Function(_$_MReferralPackInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnPercent = null,
  }) {
    return _then(_$_MReferralPackInfo(
      earnPercent: null == earnPercent
          ? _value.earnPercent
          : earnPercent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MReferralPackInfo
    with DiagnosticableTreeMixin
    implements _MReferralPackInfo {
  const _$_MReferralPackInfo({required this.earnPercent});

  factory _$_MReferralPackInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MReferralPackInfoFromJson(json);

  @override
  final int earnPercent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MReferralPackInfo(earnPercent: $earnPercent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MReferralPackInfo'))
      ..add(DiagnosticsProperty('earnPercent', earnPercent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MReferralPackInfo &&
            (identical(other.earnPercent, earnPercent) ||
                other.earnPercent == earnPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, earnPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MReferralPackInfoCopyWith<_$_MReferralPackInfo> get copyWith =>
      __$$_MReferralPackInfoCopyWithImpl<_$_MReferralPackInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MReferralPackInfoToJson(
      this,
    );
  }
}

abstract class _MReferralPackInfo implements MReferralPackInfo {
  const factory _MReferralPackInfo({required final int earnPercent}) =
      _$_MReferralPackInfo;

  factory _MReferralPackInfo.fromJson(Map<String, dynamic> json) =
      _$_MReferralPackInfo.fromJson;

  @override
  int get earnPercent;
  @override
  @JsonKey(ignore: true)
  _$$_MReferralPackInfoCopyWith<_$_MReferralPackInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
