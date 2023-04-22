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
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  set amount(String value) => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  set isBlocked(bool value) => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  set createdAt(String value) => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String value) => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;
  set bonus(int value) => throw _privateConstructorUsedError;

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
  _$_MWalletInfo(
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
  String id;
  @override
  String userId;
  @override
  String amount;
  @override
  bool isBlocked;
  @override
  String createdAt;
  @override
  String updatedAt;
  @override
  int bonus;

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
  factory _MWalletInfo(
      {required String id,
      required String userId,
      required String amount,
      required bool isBlocked,
      required String createdAt,
      required String updatedAt,
      required int bonus}) = _$_MWalletInfo;

  factory _MWalletInfo.fromJson(Map<String, dynamic> json) =
      _$_MWalletInfo.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get amount;
  set amount(String value);
  @override
  bool get isBlocked;
  set isBlocked(bool value);
  @override
  String get createdAt;
  set createdAt(String value);
  @override
  String get updatedAt;
  set updatedAt(String value);
  @override
  int get bonus;
  set bonus(int value);
  @override
  @JsonKey(ignore: true)
  _$$_MWalletInfoCopyWith<_$_MWalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
