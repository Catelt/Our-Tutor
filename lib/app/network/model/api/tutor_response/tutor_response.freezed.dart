// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MTutorResponse _$MTutorResponseFromJson(Map<String, dynamic> json) {
  return _MTutorResponse.fromJson(json);
}

/// @nodoc
mixin _$MTutorResponse {
  MTutors get tutors => throw _privateConstructorUsedError;
  set tutors(MTutors value) => throw _privateConstructorUsedError;
  List<MFavoriteTutor> get favoriteTutor => throw _privateConstructorUsedError;
  set favoriteTutor(List<MFavoriteTutor> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MTutorResponseCopyWith<MTutorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MTutorResponseCopyWith<$Res> {
  factory $MTutorResponseCopyWith(
          MTutorResponse value, $Res Function(MTutorResponse) then) =
      _$MTutorResponseCopyWithImpl<$Res, MTutorResponse>;
  @useResult
  $Res call({MTutors tutors, List<MFavoriteTutor> favoriteTutor});

  $MTutorsCopyWith<$Res> get tutors;
}

/// @nodoc
class _$MTutorResponseCopyWithImpl<$Res, $Val extends MTutorResponse>
    implements $MTutorResponseCopyWith<$Res> {
  _$MTutorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutors = null,
    Object? favoriteTutor = null,
  }) {
    return _then(_value.copyWith(
      tutors: null == tutors
          ? _value.tutors
          : tutors // ignore: cast_nullable_to_non_nullable
              as MTutors,
      favoriteTutor: null == favoriteTutor
          ? _value.favoriteTutor
          : favoriteTutor // ignore: cast_nullable_to_non_nullable
              as List<MFavoriteTutor>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MTutorsCopyWith<$Res> get tutors {
    return $MTutorsCopyWith<$Res>(_value.tutors, (value) {
      return _then(_value.copyWith(tutors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MTutorResponseCopyWith<$Res>
    implements $MTutorResponseCopyWith<$Res> {
  factory _$$_MTutorResponseCopyWith(
          _$_MTutorResponse value, $Res Function(_$_MTutorResponse) then) =
      __$$_MTutorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MTutors tutors, List<MFavoriteTutor> favoriteTutor});

  @override
  $MTutorsCopyWith<$Res> get tutors;
}

/// @nodoc
class __$$_MTutorResponseCopyWithImpl<$Res>
    extends _$MTutorResponseCopyWithImpl<$Res, _$_MTutorResponse>
    implements _$$_MTutorResponseCopyWith<$Res> {
  __$$_MTutorResponseCopyWithImpl(
      _$_MTutorResponse _value, $Res Function(_$_MTutorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutors = null,
    Object? favoriteTutor = null,
  }) {
    return _then(_$_MTutorResponse(
      tutors: null == tutors
          ? _value.tutors
          : tutors // ignore: cast_nullable_to_non_nullable
              as MTutors,
      favoriteTutor: null == favoriteTutor
          ? _value.favoriteTutor
          : favoriteTutor // ignore: cast_nullable_to_non_nullable
              as List<MFavoriteTutor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MTutorResponse
    with DiagnosticableTreeMixin
    implements _MTutorResponse {
  _$_MTutorResponse({required this.tutors, this.favoriteTutor = const []});

  factory _$_MTutorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MTutorResponseFromJson(json);

  @override
  MTutors tutors;
  @override
  @JsonKey()
  List<MFavoriteTutor> favoriteTutor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MTutorResponse(tutors: $tutors, favoriteTutor: $favoriteTutor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MTutorResponse'))
      ..add(DiagnosticsProperty('tutors', tutors))
      ..add(DiagnosticsProperty('favoriteTutor', favoriteTutor));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MTutorResponseCopyWith<_$_MTutorResponse> get copyWith =>
      __$$_MTutorResponseCopyWithImpl<_$_MTutorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MTutorResponseToJson(
      this,
    );
  }
}

abstract class _MTutorResponse implements MTutorResponse {
  factory _MTutorResponse(
      {required MTutors tutors,
      List<MFavoriteTutor> favoriteTutor}) = _$_MTutorResponse;

  factory _MTutorResponse.fromJson(Map<String, dynamic> json) =
      _$_MTutorResponse.fromJson;

  @override
  MTutors get tutors;
  set tutors(MTutors value);
  @override
  List<MFavoriteTutor> get favoriteTutor;
  set favoriteTutor(List<MFavoriteTutor> value);
  @override
  @JsonKey(ignore: true)
  _$$_MTutorResponseCopyWith<_$_MTutorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
