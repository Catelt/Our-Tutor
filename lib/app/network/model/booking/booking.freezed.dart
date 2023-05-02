// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MBooking _$MBookingFromJson(Map<String, dynamic> json) {
  return _MBooking.fromJson(json);
}

/// @nodoc
mixin _$MBooking {
  double get createdAtTimeStamp => throw _privateConstructorUsedError;
  set createdAtTimeStamp(double value) => throw _privateConstructorUsedError;
  double get updatedAtTimeStamp => throw _privateConstructorUsedError;
  set updatedAtTimeStamp(double value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get scheduleDetailId => throw _privateConstructorUsedError;
  set scheduleDetailId(String value) => throw _privateConstructorUsedError;
  String get tutorMeetingLink => throw _privateConstructorUsedError;
  set tutorMeetingLink(String value) => throw _privateConstructorUsedError;
  String get studentMeetingLink => throw _privateConstructorUsedError;
  set studentMeetingLink(String value) => throw _privateConstructorUsedError;
  dynamic get studentRequest => throw _privateConstructorUsedError;
  set studentRequest(dynamic value) => throw _privateConstructorUsedError;
  Object? get tutorReview => throw _privateConstructorUsedError;
  set tutorReview(Object? value) => throw _privateConstructorUsedError;
  Object? get scoreByTutor => throw _privateConstructorUsedError;
  set scoreByTutor(Object? value) => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  set createdAt(String value) => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String value) => throw _privateConstructorUsedError;
  String get recordUrl => throw _privateConstructorUsedError;
  set recordUrl(String value) => throw _privateConstructorUsedError;
  String get cancelReasonId => throw _privateConstructorUsedError;
  set cancelReasonId(String value) => throw _privateConstructorUsedError;
  String get lessonPlanId => throw _privateConstructorUsedError;
  set lessonPlanId(String value) => throw _privateConstructorUsedError;
  String get calendarId => throw _privateConstructorUsedError;
  set calendarId(String value) => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  set isDeleted(bool value) => throw _privateConstructorUsedError;
  MClassReview? get classReview => throw _privateConstructorUsedError;
  set classReview(MClassReview? value) => throw _privateConstructorUsedError;
  bool get showRecordUrl => throw _privateConstructorUsedError;
  set showRecordUrl(bool value) => throw _privateConstructorUsedError;
  List<dynamic> get studentMaterials => throw _privateConstructorUsedError;
  set studentMaterials(List<dynamic> value) =>
      throw _privateConstructorUsedError;
  List<MFeedback> get feedbacks => throw _privateConstructorUsedError;
  set feedbacks(List<MFeedback> value) => throw _privateConstructorUsedError;
  MSchedule get scheduleDetailInfo => throw _privateConstructorUsedError;
  set scheduleDetailInfo(MSchedule value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MBookingCopyWith<MBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MBookingCopyWith<$Res> {
  factory $MBookingCopyWith(MBooking value, $Res Function(MBooking) then) =
      _$MBookingCopyWithImpl<$Res, MBooking>;
  @useResult
  $Res call(
      {double createdAtTimeStamp,
      double updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String tutorMeetingLink,
      String studentMeetingLink,
      dynamic studentRequest,
      Object? tutorReview,
      Object? scoreByTutor,
      String createdAt,
      String updatedAt,
      String recordUrl,
      String cancelReasonId,
      String lessonPlanId,
      String calendarId,
      bool isDeleted,
      MClassReview? classReview,
      bool showRecordUrl,
      List<dynamic> studentMaterials,
      List<MFeedback> feedbacks,
      MSchedule scheduleDetailInfo});

  $MClassReviewCopyWith<$Res>? get classReview;
  $MScheduleCopyWith<$Res> get scheduleDetailInfo;
}

/// @nodoc
class _$MBookingCopyWithImpl<$Res, $Val extends MBooking>
    implements $MBookingCopyWith<$Res> {
  _$MBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAtTimeStamp = null,
    Object? updatedAtTimeStamp = null,
    Object? id = null,
    Object? userId = null,
    Object? scheduleDetailId = null,
    Object? tutorMeetingLink = null,
    Object? studentMeetingLink = null,
    Object? studentRequest = freezed,
    Object? tutorReview = freezed,
    Object? scoreByTutor = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? recordUrl = null,
    Object? cancelReasonId = null,
    Object? lessonPlanId = null,
    Object? calendarId = null,
    Object? isDeleted = null,
    Object? classReview = freezed,
    Object? showRecordUrl = null,
    Object? studentMaterials = null,
    Object? feedbacks = null,
    Object? scheduleDetailInfo = null,
  }) {
    return _then(_value.copyWith(
      createdAtTimeStamp: null == createdAtTimeStamp
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAtTimeStamp: null == updatedAtTimeStamp
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleDetailId: null == scheduleDetailId
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorMeetingLink: null == tutorMeetingLink
          ? _value.tutorMeetingLink
          : tutorMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentMeetingLink: null == studentMeetingLink
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentRequest: freezed == studentRequest
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorReview: freezed == tutorReview ? _value.tutorReview : tutorReview,
      scoreByTutor:
          freezed == scoreByTutor ? _value.scoreByTutor : scoreByTutor,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      recordUrl: null == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReasonId: null == cancelReasonId
          ? _value.cancelReasonId
          : cancelReasonId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonPlanId: null == lessonPlanId
          ? _value.lessonPlanId
          : lessonPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      calendarId: null == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      classReview: freezed == classReview
          ? _value.classReview
          : classReview // ignore: cast_nullable_to_non_nullable
              as MClassReview?,
      showRecordUrl: null == showRecordUrl
          ? _value.showRecordUrl
          : showRecordUrl // ignore: cast_nullable_to_non_nullable
              as bool,
      studentMaterials: null == studentMaterials
          ? _value.studentMaterials
          : studentMaterials // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<MFeedback>,
      scheduleDetailInfo: null == scheduleDetailInfo
          ? _value.scheduleDetailInfo
          : scheduleDetailInfo // ignore: cast_nullable_to_non_nullable
              as MSchedule,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MClassReviewCopyWith<$Res>? get classReview {
    if (_value.classReview == null) {
      return null;
    }

    return $MClassReviewCopyWith<$Res>(_value.classReview!, (value) {
      return _then(_value.copyWith(classReview: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MScheduleCopyWith<$Res> get scheduleDetailInfo {
    return $MScheduleCopyWith<$Res>(_value.scheduleDetailInfo, (value) {
      return _then(_value.copyWith(scheduleDetailInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MBookingCopyWith<$Res> implements $MBookingCopyWith<$Res> {
  factory _$$_MBookingCopyWith(
          _$_MBooking value, $Res Function(_$_MBooking) then) =
      __$$_MBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double createdAtTimeStamp,
      double updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String tutorMeetingLink,
      String studentMeetingLink,
      dynamic studentRequest,
      Object? tutorReview,
      Object? scoreByTutor,
      String createdAt,
      String updatedAt,
      String recordUrl,
      String cancelReasonId,
      String lessonPlanId,
      String calendarId,
      bool isDeleted,
      MClassReview? classReview,
      bool showRecordUrl,
      List<dynamic> studentMaterials,
      List<MFeedback> feedbacks,
      MSchedule scheduleDetailInfo});

  @override
  $MClassReviewCopyWith<$Res>? get classReview;
  @override
  $MScheduleCopyWith<$Res> get scheduleDetailInfo;
}

/// @nodoc
class __$$_MBookingCopyWithImpl<$Res>
    extends _$MBookingCopyWithImpl<$Res, _$_MBooking>
    implements _$$_MBookingCopyWith<$Res> {
  __$$_MBookingCopyWithImpl(
      _$_MBooking _value, $Res Function(_$_MBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAtTimeStamp = null,
    Object? updatedAtTimeStamp = null,
    Object? id = null,
    Object? userId = null,
    Object? scheduleDetailId = null,
    Object? tutorMeetingLink = null,
    Object? studentMeetingLink = null,
    Object? studentRequest = freezed,
    Object? tutorReview = freezed,
    Object? scoreByTutor = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? recordUrl = null,
    Object? cancelReasonId = null,
    Object? lessonPlanId = null,
    Object? calendarId = null,
    Object? isDeleted = null,
    Object? classReview = freezed,
    Object? showRecordUrl = null,
    Object? studentMaterials = null,
    Object? feedbacks = null,
    Object? scheduleDetailInfo = null,
  }) {
    return _then(_$_MBooking(
      createdAtTimeStamp: null == createdAtTimeStamp
          ? _value.createdAtTimeStamp
          : createdAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      updatedAtTimeStamp: null == updatedAtTimeStamp
          ? _value.updatedAtTimeStamp
          : updatedAtTimeStamp // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleDetailId: null == scheduleDetailId
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorMeetingLink: null == tutorMeetingLink
          ? _value.tutorMeetingLink
          : tutorMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentMeetingLink: null == studentMeetingLink
          ? _value.studentMeetingLink
          : studentMeetingLink // ignore: cast_nullable_to_non_nullable
              as String,
      studentRequest:
          freezed == studentRequest ? _value.studentRequest! : studentRequest,
      tutorReview: freezed == tutorReview ? _value.tutorReview : tutorReview,
      scoreByTutor:
          freezed == scoreByTutor ? _value.scoreByTutor : scoreByTutor,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      recordUrl: null == recordUrl
          ? _value.recordUrl
          : recordUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReasonId: null == cancelReasonId
          ? _value.cancelReasonId
          : cancelReasonId // ignore: cast_nullable_to_non_nullable
              as String,
      lessonPlanId: null == lessonPlanId
          ? _value.lessonPlanId
          : lessonPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      calendarId: null == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      classReview: freezed == classReview
          ? _value.classReview
          : classReview // ignore: cast_nullable_to_non_nullable
              as MClassReview?,
      showRecordUrl: null == showRecordUrl
          ? _value.showRecordUrl
          : showRecordUrl // ignore: cast_nullable_to_non_nullable
              as bool,
      studentMaterials: null == studentMaterials
          ? _value.studentMaterials
          : studentMaterials // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<MFeedback>,
      scheduleDetailInfo: null == scheduleDetailInfo
          ? _value.scheduleDetailInfo
          : scheduleDetailInfo // ignore: cast_nullable_to_non_nullable
              as MSchedule,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MBooking implements _MBooking {
  _$_MBooking(
      {this.createdAtTimeStamp = 0,
      this.updatedAtTimeStamp = 0,
      this.id = "",
      this.userId = "",
      this.scheduleDetailId = "",
      this.tutorMeetingLink = "",
      this.studentMeetingLink = "",
      this.studentRequest = "",
      this.tutorReview,
      this.scoreByTutor,
      this.createdAt = "",
      this.updatedAt = "",
      this.recordUrl = "",
      this.cancelReasonId = "",
      this.lessonPlanId = "",
      this.calendarId = "",
      this.isDeleted = false,
      this.classReview,
      this.showRecordUrl = false,
      this.studentMaterials = const [],
      this.feedbacks = const [],
      required this.scheduleDetailInfo});

  factory _$_MBooking.fromJson(Map<String, dynamic> json) =>
      _$$_MBookingFromJson(json);

  @override
  @JsonKey()
  double createdAtTimeStamp;
  @override
  @JsonKey()
  double updatedAtTimeStamp;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String userId;
  @override
  @JsonKey()
  String scheduleDetailId;
  @override
  @JsonKey()
  String tutorMeetingLink;
  @override
  @JsonKey()
  String studentMeetingLink;
  @override
  @JsonKey()
  dynamic studentRequest;
  @override
  Object? tutorReview;
  @override
  Object? scoreByTutor;
  @override
  @JsonKey()
  String createdAt;
  @override
  @JsonKey()
  String updatedAt;
  @override
  @JsonKey()
  String recordUrl;
  @override
  @JsonKey()
  String cancelReasonId;
  @override
  @JsonKey()
  String lessonPlanId;
  @override
  @JsonKey()
  String calendarId;
  @override
  @JsonKey()
  bool isDeleted;
  @override
  MClassReview? classReview;
  @override
  @JsonKey()
  bool showRecordUrl;
  @override
  @JsonKey()
  List<dynamic> studentMaterials;
  @override
  @JsonKey()
  List<MFeedback> feedbacks;
  @override
  MSchedule scheduleDetailInfo;

  @override
  String toString() {
    return 'MBooking(createdAtTimeStamp: $createdAtTimeStamp, updatedAtTimeStamp: $updatedAtTimeStamp, id: $id, userId: $userId, scheduleDetailId: $scheduleDetailId, tutorMeetingLink: $tutorMeetingLink, studentMeetingLink: $studentMeetingLink, studentRequest: $studentRequest, tutorReview: $tutorReview, scoreByTutor: $scoreByTutor, createdAt: $createdAt, updatedAt: $updatedAt, recordUrl: $recordUrl, cancelReasonId: $cancelReasonId, lessonPlanId: $lessonPlanId, calendarId: $calendarId, isDeleted: $isDeleted, classReview: $classReview, showRecordUrl: $showRecordUrl, studentMaterials: $studentMaterials, feedbacks: $feedbacks, scheduleDetailInfo: $scheduleDetailInfo)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MBookingCopyWith<_$_MBooking> get copyWith =>
      __$$_MBookingCopyWithImpl<_$_MBooking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MBookingToJson(
      this,
    );
  }
}

abstract class _MBooking implements MBooking {
  factory _MBooking(
      {double createdAtTimeStamp,
      double updatedAtTimeStamp,
      String id,
      String userId,
      String scheduleDetailId,
      String tutorMeetingLink,
      String studentMeetingLink,
      dynamic studentRequest,
      Object? tutorReview,
      Object? scoreByTutor,
      String createdAt,
      String updatedAt,
      String recordUrl,
      String cancelReasonId,
      String lessonPlanId,
      String calendarId,
      bool isDeleted,
      MClassReview? classReview,
      bool showRecordUrl,
      List<dynamic> studentMaterials,
      List<MFeedback> feedbacks,
      required MSchedule scheduleDetailInfo}) = _$_MBooking;

  factory _MBooking.fromJson(Map<String, dynamic> json) = _$_MBooking.fromJson;

  @override
  double get createdAtTimeStamp;
  set createdAtTimeStamp(double value);
  @override
  double get updatedAtTimeStamp;
  set updatedAtTimeStamp(double value);
  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get scheduleDetailId;
  set scheduleDetailId(String value);
  @override
  String get tutorMeetingLink;
  set tutorMeetingLink(String value);
  @override
  String get studentMeetingLink;
  set studentMeetingLink(String value);
  @override
  dynamic get studentRequest;
  set studentRequest(dynamic value);
  @override
  Object? get tutorReview;
  set tutorReview(Object? value);
  @override
  Object? get scoreByTutor;
  set scoreByTutor(Object? value);
  @override
  String get createdAt;
  set createdAt(String value);
  @override
  String get updatedAt;
  set updatedAt(String value);
  @override
  String get recordUrl;
  set recordUrl(String value);
  @override
  String get cancelReasonId;
  set cancelReasonId(String value);
  @override
  String get lessonPlanId;
  set lessonPlanId(String value);
  @override
  String get calendarId;
  set calendarId(String value);
  @override
  bool get isDeleted;
  set isDeleted(bool value);
  @override
  MClassReview? get classReview;
  set classReview(MClassReview? value);
  @override
  bool get showRecordUrl;
  set showRecordUrl(bool value);
  @override
  List<dynamic> get studentMaterials;
  set studentMaterials(List<dynamic> value);
  @override
  List<MFeedback> get feedbacks;
  set feedbacks(List<MFeedback> value);
  @override
  MSchedule get scheduleDetailInfo;
  set scheduleDetailInfo(MSchedule value);
  @override
  @JsonKey(ignore: true)
  _$$_MBookingCopyWith<_$_MBooking> get copyWith =>
      throw _privateConstructorUsedError;
}
