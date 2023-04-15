// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MLearnTopic _$MLearnTopicFromJson(Map<String, dynamic> json) {
  return _MLearnTopic.fromJson(json);
}

/// @nodoc
mixin _$MLearnTopic {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MLearnTopicCopyWith<MLearnTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MLearnTopicCopyWith<$Res> {
  factory $MLearnTopicCopyWith(
          MLearnTopic value, $Res Function(MLearnTopic) then) =
      _$MLearnTopicCopyWithImpl<$Res, MLearnTopic>;
  @useResult
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$MLearnTopicCopyWithImpl<$Res, $Val extends MLearnTopic>
    implements $MLearnTopicCopyWith<$Res> {
  _$MLearnTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MLearnTopicCopyWith<$Res>
    implements $MLearnTopicCopyWith<$Res> {
  factory _$$_MLearnTopicCopyWith(
          _$_MLearnTopic value, $Res Function(_$_MLearnTopic) then) =
      __$$_MLearnTopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$$_MLearnTopicCopyWithImpl<$Res>
    extends _$MLearnTopicCopyWithImpl<$Res, _$_MLearnTopic>
    implements _$$_MLearnTopicCopyWith<$Res> {
  __$$_MLearnTopicCopyWithImpl(
      _$_MLearnTopic _value, $Res Function(_$_MLearnTopic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$_MLearnTopic(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MLearnTopic with DiagnosticableTreeMixin implements _MLearnTopic {
  const _$_MLearnTopic(
      {required this.id, required this.key, required this.name});

  factory _$_MLearnTopic.fromJson(Map<String, dynamic> json) =>
      _$$_MLearnTopicFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MLearnTopic(id: $id, key: $key, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MLearnTopic'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MLearnTopic &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MLearnTopicCopyWith<_$_MLearnTopic> get copyWith =>
      __$$_MLearnTopicCopyWithImpl<_$_MLearnTopic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MLearnTopicToJson(
      this,
    );
  }
}

abstract class _MLearnTopic implements MLearnTopic {
  const factory _MLearnTopic(
      {required final int id,
      required final String key,
      required final String name}) = _$_MLearnTopic;

  factory _MLearnTopic.fromJson(Map<String, dynamic> json) =
      _$_MLearnTopic.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MLearnTopicCopyWith<_$_MLearnTopic> get copyWith =>
      throw _privateConstructorUsedError;
}
