// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MCourse _$MCourseFromJson(Map<String, dynamic> json) {
  return _MCourse.fromJson(json);
}

/// @nodoc
mixin _$MCourse {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String value) => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  set level(String value) => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  set reason(String value) => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  set purpose(String value) => throw _privateConstructorUsedError;
  String get other_details => throw _privateConstructorUsedError;
  set other_details(String value) => throw _privateConstructorUsedError;
  double get default_price => throw _privateConstructorUsedError;
  set default_price(double value) => throw _privateConstructorUsedError;
  double get course_price => throw _privateConstructorUsedError;
  set course_price(double value) => throw _privateConstructorUsedError;
  String? get courseType => throw _privateConstructorUsedError;
  set courseType(String? value) => throw _privateConstructorUsedError;
  String? get sectionType => throw _privateConstructorUsedError;
  set sectionType(String? value) => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  set visible(bool value) => throw _privateConstructorUsedError;
  String? get displayOrder => throw _privateConstructorUsedError;
  set displayOrder(String? value) => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  set createdAt(String? value) => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String? value) => throw _privateConstructorUsedError;
  List<MTopic> get topics => throw _privateConstructorUsedError;
  set topics(List<MTopic> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MCourseCopyWith<MCourse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MCourseCopyWith<$Res> {
  factory $MCourseCopyWith(MCourse value, $Res Function(MCourse) then) =
      _$MCourseCopyWithImpl<$Res, MCourse>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String other_details,
      double default_price,
      double course_price,
      String? courseType,
      String? sectionType,
      bool visible,
      String? displayOrder,
      String? createdAt,
      String? updatedAt,
      List<MTopic> topics});
}

/// @nodoc
class _$MCourseCopyWithImpl<$Res, $Val extends MCourse>
    implements $MCourseCopyWith<$Res> {
  _$MCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? level = null,
    Object? reason = null,
    Object? purpose = null,
    Object? other_details = null,
    Object? default_price = null,
    Object? course_price = null,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = null,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      other_details: null == other_details
          ? _value.other_details
          : other_details // ignore: cast_nullable_to_non_nullable
              as String,
      default_price: null == default_price
          ? _value.default_price
          : default_price // ignore: cast_nullable_to_non_nullable
              as double,
      course_price: null == course_price
          ? _value.course_price
          : course_price // ignore: cast_nullable_to_non_nullable
              as double,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<MTopic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MCourseCopyWith<$Res> implements $MCourseCopyWith<$Res> {
  factory _$$_MCourseCopyWith(
          _$_MCourse value, $Res Function(_$_MCourse) then) =
      __$$_MCourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String other_details,
      double default_price,
      double course_price,
      String? courseType,
      String? sectionType,
      bool visible,
      String? displayOrder,
      String? createdAt,
      String? updatedAt,
      List<MTopic> topics});
}

/// @nodoc
class __$$_MCourseCopyWithImpl<$Res>
    extends _$MCourseCopyWithImpl<$Res, _$_MCourse>
    implements _$$_MCourseCopyWith<$Res> {
  __$$_MCourseCopyWithImpl(_$_MCourse _value, $Res Function(_$_MCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? level = null,
    Object? reason = null,
    Object? purpose = null,
    Object? other_details = null,
    Object? default_price = null,
    Object? course_price = null,
    Object? courseType = freezed,
    Object? sectionType = freezed,
    Object? visible = null,
    Object? displayOrder = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topics = null,
  }) {
    return _then(_$_MCourse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      other_details: null == other_details
          ? _value.other_details
          : other_details // ignore: cast_nullable_to_non_nullable
              as String,
      default_price: null == default_price
          ? _value.default_price
          : default_price // ignore: cast_nullable_to_non_nullable
              as double,
      course_price: null == course_price
          ? _value.course_price
          : course_price // ignore: cast_nullable_to_non_nullable
              as double,
      courseType: freezed == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: freezed == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<MTopic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MCourse implements _MCourse {
  _$_MCourse(
      {this.id = "",
      this.name = "",
      this.description = "",
      this.imageUrl = "",
      this.level = "",
      this.reason = "",
      this.purpose = "",
      this.other_details = "",
      this.default_price = 0,
      this.course_price = 0,
      this.courseType,
      this.sectionType,
      this.visible = false,
      this.displayOrder,
      this.createdAt,
      this.updatedAt,
      this.topics = const []});

  factory _$_MCourse.fromJson(Map<String, dynamic> json) =>
      _$$_MCourseFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String description;
  @override
  @JsonKey()
  String imageUrl;
  @override
  @JsonKey()
  String level;
  @override
  @JsonKey()
  String reason;
  @override
  @JsonKey()
  String purpose;
  @override
  @JsonKey()
  String other_details;
  @override
  @JsonKey()
  double default_price;
  @override
  @JsonKey()
  double course_price;
  @override
  String? courseType;
  @override
  String? sectionType;
  @override
  @JsonKey()
  bool visible;
  @override
  String? displayOrder;
  @override
  String? createdAt;
  @override
  String? updatedAt;
  @override
  @JsonKey()
  List<MTopic> topics;

  @override
  String toString() {
    return 'MCourse(id: $id, name: $name, description: $description, imageUrl: $imageUrl, level: $level, reason: $reason, purpose: $purpose, other_details: $other_details, default_price: $default_price, course_price: $course_price, courseType: $courseType, sectionType: $sectionType, visible: $visible, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, topics: $topics)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MCourseCopyWith<_$_MCourse> get copyWith =>
      __$$_MCourseCopyWithImpl<_$_MCourse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MCourseToJson(
      this,
    );
  }
}

abstract class _MCourse implements MCourse {
  factory _MCourse(
      {String id,
      String name,
      String description,
      String imageUrl,
      String level,
      String reason,
      String purpose,
      String other_details,
      double default_price,
      double course_price,
      String? courseType,
      String? sectionType,
      bool visible,
      String? displayOrder,
      String? createdAt,
      String? updatedAt,
      List<MTopic> topics}) = _$_MCourse;

  factory _MCourse.fromJson(Map<String, dynamic> json) = _$_MCourse.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get description;
  set description(String value);
  @override
  String get imageUrl;
  set imageUrl(String value);
  @override
  String get level;
  set level(String value);
  @override
  String get reason;
  set reason(String value);
  @override
  String get purpose;
  set purpose(String value);
  @override
  String get other_details;
  set other_details(String value);
  @override
  double get default_price;
  set default_price(double value);
  @override
  double get course_price;
  set course_price(double value);
  @override
  String? get courseType;
  set courseType(String? value);
  @override
  String? get sectionType;
  set sectionType(String? value);
  @override
  bool get visible;
  set visible(bool value);
  @override
  String? get displayOrder;
  set displayOrder(String? value);
  @override
  String? get createdAt;
  set createdAt(String? value);
  @override
  String? get updatedAt;
  set updatedAt(String? value);
  @override
  List<MTopic> get topics;
  set topics(List<MTopic> value);
  @override
  @JsonKey(ignore: true)
  _$$_MCourseCopyWith<_$_MCourse> get copyWith =>
      throw _privateConstructorUsedError;
}
