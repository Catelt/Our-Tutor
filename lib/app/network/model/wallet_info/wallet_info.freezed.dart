// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MWalletInfo _$MWalletInfoFromJson(Map<String, dynamic> json) {
  return _MWalletInfo.fromJson(json);
}

/// @nodoc
mixin _$MWalletInfo {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MWalletInfoCopyWith<MWalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MWalletInfoCopyWith<$Res> {
  factory $MWalletInfoCopyWith(
          MWalletInfo value, $Res Function(MWalletInfo) then) =
      _$MWalletInfoCopyWithImpl<$Res, MWalletInfo>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String amount,
      bool isBlocked,
      String createdAt,
      String updatedAt,
      int bonus});
}

/// @nodoc
class _$MWalletInfoCopyWithImpl<$Res, $Val extends MWalletInfo>
    implements $MWalletInfoCopyWith<$Res> {
  _$MWalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? isBlocked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? bonus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MWalletInfoCopyWith<$Res>
    implements $MWalletInfoCopyWith<$Res> {
  factory _$$_MWalletInfoCopyWith(
          _$_MWalletInfo value, $Res Function(_$_MWalletInfo) then) =
      __$$_MWalletInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String amount,
      bool isBlocked,
      String createdAt,
      String updatedAt,
      int bonus});
}

/// @nodoc
class __$$_MWalletInfoCopyWithImpl<$Res>
    extends _$MWalletInfoCopyWithImpl<$Res, _$_MWalletInfo>
    implements _$$_MWalletInfoCopyWith<$Res> {
  __$$_MWalletInfoCopyWithImpl(
      _$_MWalletInfo _value, $Res Function(_$_MWalletInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? amount = null,
    Object? isBlocked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? bonus = null,
  }) {
    return _then(_$_MWalletInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MWalletInfo with DiagnosticableTreeMixin implements _MWalletInfo {
  const _$_MWalletInfo(
      {required this.id,
      required this.userId,
      required this.amount,
      required this.isBlocked,
      required this.createdAt,
      required this.updatedAt,
      required this.bonus});

  factory _$_MWalletInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MWalletInfoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String amount;
  @override
  final bool isBlocked;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final int bonus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MWalletInfo(id: $id, userId: $userId, amount: $amount, isBlocked: $isBlocked, createdAt: $createdAt, updatedAt: $updatedAt, bonus: $bonus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MWalletInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('isBlocked', isBlocked))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('bonus', bonus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MWalletInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.bonus, bonus) || other.bonus == bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, amount, isBlocked, createdAt, updatedAt, bonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MWalletInfoCopyWith<_$_MWalletInfo> get copyWith =>
      __$$_MWalletInfoCopyWithImpl<_$_MWalletInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MWalletInfoToJson(
      this,
    );
  }
}

abstract class _MWalletInfo implements MWalletInfo {
  const factory _MWalletInfo(
      {required final String id,
      required final String userId,
      required final String amount,
      required final bool isBlocked,
      required final String createdAt,
      required final String updatedAt,
      required final int bonus}) = _$_MWalletInfo;

  factory _MWalletInfo.fromJson(Map<String, dynamic> json) =
      _$_MWalletInfo.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get amount;
  @override
  bool get isBlocked;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  int get bonus;
  @override
  @JsonKey(ignore: true)
  _$$_MWalletInfoCopyWith<_$_MWalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
