// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MHistoryResponse _$MHistoryResponseFromJson(Map<String, dynamic> json) {
  return _MHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$MHistoryResponse {
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rows")
  List<MBooking> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "rows")
  set list(List<MBooking> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MHistoryResponseCopyWith<MHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MHistoryResponseCopyWith<$Res> {
  factory $MHistoryResponseCopyWith(
          MHistoryResponse value, $Res Function(MHistoryResponse) then) =
      _$MHistoryResponseCopyWithImpl<$Res, MHistoryResponse>;
  @useResult
  $Res call({int count, @JsonKey(name: "rows") List<MBooking> list});
}

/// @nodoc
class _$MHistoryResponseCopyWithImpl<$Res, $Val extends MHistoryResponse>
    implements $MHistoryResponseCopyWith<$Res> {
  _$MHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MBooking>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MHistoryResponseCopyWith<$Res>
    implements $MHistoryResponseCopyWith<$Res> {
  factory _$$_MHistoryResponseCopyWith(
          _$_MHistoryResponse value, $Res Function(_$_MHistoryResponse) then) =
      __$$_MHistoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, @JsonKey(name: "rows") List<MBooking> list});
}

/// @nodoc
class __$$_MHistoryResponseCopyWithImpl<$Res>
    extends _$MHistoryResponseCopyWithImpl<$Res, _$_MHistoryResponse>
    implements _$$_MHistoryResponseCopyWith<$Res> {
  __$$_MHistoryResponseCopyWithImpl(
      _$_MHistoryResponse _value, $Res Function(_$_MHistoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? list = null,
  }) {
    return _then(_$_MHistoryResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MBooking>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MHistoryResponse implements _MHistoryResponse {
  _$_MHistoryResponse(
      {this.count = 0, @JsonKey(name: "rows") this.list = const []});

  factory _$_MHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MHistoryResponseFromJson(json);

  @override
  @JsonKey()
  int count;
  @override
  @JsonKey(name: "rows")
  List<MBooking> list;

  @override
  String toString() {
    return 'MHistoryResponse(count: $count, list: $list)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MHistoryResponseCopyWith<_$_MHistoryResponse> get copyWith =>
      __$$_MHistoryResponseCopyWithImpl<_$_MHistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MHistoryResponseToJson(
      this,
    );
  }
}

abstract class _MHistoryResponse implements MHistoryResponse {
  factory _MHistoryResponse(
      {int count,
      @JsonKey(name: "rows") List<MBooking> list}) = _$_MHistoryResponse;

  factory _MHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_MHistoryResponse.fromJson;

  @override
  int get count;
  set count(int value);
  @override
  @JsonKey(name: "rows")
  List<MBooking> get list;
  @JsonKey(name: "rows")
  set list(List<MBooking> value);
  @override
  @JsonKey(ignore: true)
  _$$_MHistoryResponseCopyWith<_$_MHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
