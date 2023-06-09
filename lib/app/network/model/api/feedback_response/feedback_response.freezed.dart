// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MFeedbackResponse _$MFeedbackResponseFromJson(Map<String, dynamic> json) {
  return _MFeedbackResponse.fromJson(json);
}

/// @nodoc
mixin _$MFeedbackResponse {
  double get count => throw _privateConstructorUsedError;
  set count(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "rows")
  List<MFeedback> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "rows")
  set list(List<MFeedback> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MFeedbackResponseCopyWith<MFeedbackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MFeedbackResponseCopyWith<$Res> {
  factory $MFeedbackResponseCopyWith(
          MFeedbackResponse value, $Res Function(MFeedbackResponse) then) =
      _$MFeedbackResponseCopyWithImpl<$Res, MFeedbackResponse>;
  @useResult
  $Res call({double count, @JsonKey(name: "rows") List<MFeedback> list});
}

/// @nodoc
class _$MFeedbackResponseCopyWithImpl<$Res, $Val extends MFeedbackResponse>
    implements $MFeedbackResponseCopyWith<$Res> {
  _$MFeedbackResponseCopyWithImpl(this._value, this._then);

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
              as double,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MFeedback>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MFeedbackResponseCopyWith<$Res>
    implements $MFeedbackResponseCopyWith<$Res> {
  factory _$$_MFeedbackResponseCopyWith(_$_MFeedbackResponse value,
          $Res Function(_$_MFeedbackResponse) then) =
      __$$_MFeedbackResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double count, @JsonKey(name: "rows") List<MFeedback> list});
}

/// @nodoc
class __$$_MFeedbackResponseCopyWithImpl<$Res>
    extends _$MFeedbackResponseCopyWithImpl<$Res, _$_MFeedbackResponse>
    implements _$$_MFeedbackResponseCopyWith<$Res> {
  __$$_MFeedbackResponseCopyWithImpl(
      _$_MFeedbackResponse _value, $Res Function(_$_MFeedbackResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? list = null,
  }) {
    return _then(_$_MFeedbackResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MFeedback>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MFeedbackResponse implements _MFeedbackResponse {
  _$_MFeedbackResponse(
      {this.count = 0, @JsonKey(name: "rows") this.list = const []});

  factory _$_MFeedbackResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MFeedbackResponseFromJson(json);

  @override
  @JsonKey()
  double count;
  @override
  @JsonKey(name: "rows")
  List<MFeedback> list;

  @override
  String toString() {
    return 'MFeedbackResponse(count: $count, list: $list)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MFeedbackResponseCopyWith<_$_MFeedbackResponse> get copyWith =>
      __$$_MFeedbackResponseCopyWithImpl<_$_MFeedbackResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MFeedbackResponseToJson(
      this,
    );
  }
}

abstract class _MFeedbackResponse implements MFeedbackResponse {
  factory _MFeedbackResponse(
      {double count,
      @JsonKey(name: "rows") List<MFeedback> list}) = _$_MFeedbackResponse;

  factory _MFeedbackResponse.fromJson(Map<String, dynamic> json) =
      _$_MFeedbackResponse.fromJson;

  @override
  double get count;
  set count(double value);
  @override
  @JsonKey(name: "rows")
  List<MFeedback> get list;
  @JsonKey(name: "rows")
  set list(List<MFeedback> value);
  @override
  @JsonKey(ignore: true)
  _$$_MFeedbackResponseCopyWith<_$_MFeedbackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
