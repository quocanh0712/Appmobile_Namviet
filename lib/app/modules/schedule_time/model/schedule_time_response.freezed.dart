// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_time_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleTimeResponse _$ScheduleTimeResponseFromJson(Map<String, dynamic> json) {
  return _ScheduleTimeResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleTimeResponse {
  String? get weeksOfYear => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  List<CourseItem>? get listcourse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleTimeResponseCopyWith<ScheduleTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleTimeResponseCopyWith<$Res> {
  factory $ScheduleTimeResponseCopyWith(ScheduleTimeResponse value,
          $Res Function(ScheduleTimeResponse) then) =
      _$ScheduleTimeResponseCopyWithImpl<$Res, ScheduleTimeResponse>;
  @useResult
  $Res call(
      {String? weeksOfYear, DateTime? date, List<CourseItem>? listcourse});
}

/// @nodoc
class _$ScheduleTimeResponseCopyWithImpl<$Res,
        $Val extends ScheduleTimeResponse>
    implements $ScheduleTimeResponseCopyWith<$Res> {
  _$ScheduleTimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeksOfYear = freezed,
    Object? date = freezed,
    Object? listcourse = freezed,
  }) {
    return _then(_value.copyWith(
      weeksOfYear: freezed == weeksOfYear
          ? _value.weeksOfYear
          : weeksOfYear // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      listcourse: freezed == listcourse
          ? _value.listcourse
          : listcourse // ignore: cast_nullable_to_non_nullable
              as List<CourseItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleTimeResponseImplCopyWith<$Res>
    implements $ScheduleTimeResponseCopyWith<$Res> {
  factory _$$ScheduleTimeResponseImplCopyWith(_$ScheduleTimeResponseImpl value,
          $Res Function(_$ScheduleTimeResponseImpl) then) =
      __$$ScheduleTimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? weeksOfYear, DateTime? date, List<CourseItem>? listcourse});
}

/// @nodoc
class __$$ScheduleTimeResponseImplCopyWithImpl<$Res>
    extends _$ScheduleTimeResponseCopyWithImpl<$Res, _$ScheduleTimeResponseImpl>
    implements _$$ScheduleTimeResponseImplCopyWith<$Res> {
  __$$ScheduleTimeResponseImplCopyWithImpl(_$ScheduleTimeResponseImpl _value,
      $Res Function(_$ScheduleTimeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeksOfYear = freezed,
    Object? date = freezed,
    Object? listcourse = freezed,
  }) {
    return _then(_$ScheduleTimeResponseImpl(
      weeksOfYear: freezed == weeksOfYear
          ? _value.weeksOfYear
          : weeksOfYear // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      listcourse: freezed == listcourse
          ? _value._listcourse
          : listcourse // ignore: cast_nullable_to_non_nullable
              as List<CourseItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleTimeResponseImpl implements _ScheduleTimeResponse {
  const _$ScheduleTimeResponseImpl(
      {this.weeksOfYear, this.date, final List<CourseItem>? listcourse})
      : _listcourse = listcourse;

  factory _$ScheduleTimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleTimeResponseImplFromJson(json);

  @override
  final String? weeksOfYear;
  @override
  final DateTime? date;
  final List<CourseItem>? _listcourse;
  @override
  List<CourseItem>? get listcourse {
    final value = _listcourse;
    if (value == null) return null;
    if (_listcourse is EqualUnmodifiableListView) return _listcourse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleTimeResponse(weeksOfYear: $weeksOfYear, date: $date, listcourse: $listcourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleTimeResponseImpl &&
            (identical(other.weeksOfYear, weeksOfYear) ||
                other.weeksOfYear == weeksOfYear) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._listcourse, _listcourse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weeksOfYear, date,
      const DeepCollectionEquality().hash(_listcourse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleTimeResponseImplCopyWith<_$ScheduleTimeResponseImpl>
      get copyWith =>
          __$$ScheduleTimeResponseImplCopyWithImpl<_$ScheduleTimeResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleTimeResponseImplToJson(
      this,
    );
  }
}

abstract class _ScheduleTimeResponse implements ScheduleTimeResponse {
  const factory _ScheduleTimeResponse(
      {final String? weeksOfYear,
      final DateTime? date,
      final List<CourseItem>? listcourse}) = _$ScheduleTimeResponseImpl;

  factory _ScheduleTimeResponse.fromJson(Map<String, dynamic> json) =
      _$ScheduleTimeResponseImpl.fromJson;

  @override
  String? get weeksOfYear;
  @override
  DateTime? get date;
  @override
  List<CourseItem>? get listcourse;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleTimeResponseImplCopyWith<_$ScheduleTimeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CourseItem _$CourseItemFromJson(Map<String, dynamic> json) {
  return _CourseItem.fromJson(json);
}

/// @nodoc
mixin _$CourseItem {
  int? get id => throw _privateConstructorUsedError;
  String? get coursename => throw _privateConstructorUsedError;
  int? get numbercredits => throw _privateConstructorUsedError;
  int? get numberlession => throw _privateConstructorUsedError;
  int? get coefficient => throw _privateConstructorUsedError;
  int? get gpaPoint => throw _privateConstructorUsedError;
  int? get gpa => throw _privateConstructorUsedError;
  String? get roomname => throw _privateConstructorUsedError;
  String? get timestart => throw _privateConstructorUsedError;
  String? get timeend => throw _privateConstructorUsedError;
  String? get lession => throw _privateConstructorUsedError;
  String? get dayofweeks => throw _privateConstructorUsedError;
  int? get rank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseItemCopyWith<CourseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseItemCopyWith<$Res> {
  factory $CourseItemCopyWith(
          CourseItem value, $Res Function(CourseItem) then) =
      _$CourseItemCopyWithImpl<$Res, CourseItem>;
  @useResult
  $Res call(
      {int? id,
      String? coursename,
      int? numbercredits,
      int? numberlession,
      int? coefficient,
      int? gpaPoint,
      int? gpa,
      String? roomname,
      String? timestart,
      String? timeend,
      String? lession,
      String? dayofweeks,
      int? rank});
}

/// @nodoc
class _$CourseItemCopyWithImpl<$Res, $Val extends CourseItem>
    implements $CourseItemCopyWith<$Res> {
  _$CourseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coursename = freezed,
    Object? numbercredits = freezed,
    Object? numberlession = freezed,
    Object? coefficient = freezed,
    Object? gpaPoint = freezed,
    Object? gpa = freezed,
    Object? roomname = freezed,
    Object? timestart = freezed,
    Object? timeend = freezed,
    Object? lession = freezed,
    Object? dayofweeks = freezed,
    Object? rank = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coursename: freezed == coursename
          ? _value.coursename
          : coursename // ignore: cast_nullable_to_non_nullable
              as String?,
      numbercredits: freezed == numbercredits
          ? _value.numbercredits
          : numbercredits // ignore: cast_nullable_to_non_nullable
              as int?,
      numberlession: freezed == numberlession
          ? _value.numberlession
          : numberlession // ignore: cast_nullable_to_non_nullable
              as int?,
      coefficient: freezed == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as int?,
      gpaPoint: freezed == gpaPoint
          ? _value.gpaPoint
          : gpaPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      gpa: freezed == gpa
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as int?,
      roomname: freezed == roomname
          ? _value.roomname
          : roomname // ignore: cast_nullable_to_non_nullable
              as String?,
      timestart: freezed == timestart
          ? _value.timestart
          : timestart // ignore: cast_nullable_to_non_nullable
              as String?,
      timeend: freezed == timeend
          ? _value.timeend
          : timeend // ignore: cast_nullable_to_non_nullable
              as String?,
      lession: freezed == lession
          ? _value.lession
          : lession // ignore: cast_nullable_to_non_nullable
              as String?,
      dayofweeks: freezed == dayofweeks
          ? _value.dayofweeks
          : dayofweeks // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseItemImplCopyWith<$Res>
    implements $CourseItemCopyWith<$Res> {
  factory _$$CourseItemImplCopyWith(
          _$CourseItemImpl value, $Res Function(_$CourseItemImpl) then) =
      __$$CourseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? coursename,
      int? numbercredits,
      int? numberlession,
      int? coefficient,
      int? gpaPoint,
      int? gpa,
      String? roomname,
      String? timestart,
      String? timeend,
      String? lession,
      String? dayofweeks,
      int? rank});
}

/// @nodoc
class __$$CourseItemImplCopyWithImpl<$Res>
    extends _$CourseItemCopyWithImpl<$Res, _$CourseItemImpl>
    implements _$$CourseItemImplCopyWith<$Res> {
  __$$CourseItemImplCopyWithImpl(
      _$CourseItemImpl _value, $Res Function(_$CourseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coursename = freezed,
    Object? numbercredits = freezed,
    Object? numberlession = freezed,
    Object? coefficient = freezed,
    Object? gpaPoint = freezed,
    Object? gpa = freezed,
    Object? roomname = freezed,
    Object? timestart = freezed,
    Object? timeend = freezed,
    Object? lession = freezed,
    Object? dayofweeks = freezed,
    Object? rank = freezed,
  }) {
    return _then(_$CourseItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coursename: freezed == coursename
          ? _value.coursename
          : coursename // ignore: cast_nullable_to_non_nullable
              as String?,
      numbercredits: freezed == numbercredits
          ? _value.numbercredits
          : numbercredits // ignore: cast_nullable_to_non_nullable
              as int?,
      numberlession: freezed == numberlession
          ? _value.numberlession
          : numberlession // ignore: cast_nullable_to_non_nullable
              as int?,
      coefficient: freezed == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as int?,
      gpaPoint: freezed == gpaPoint
          ? _value.gpaPoint
          : gpaPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      gpa: freezed == gpa
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as int?,
      roomname: freezed == roomname
          ? _value.roomname
          : roomname // ignore: cast_nullable_to_non_nullable
              as String?,
      timestart: freezed == timestart
          ? _value.timestart
          : timestart // ignore: cast_nullable_to_non_nullable
              as String?,
      timeend: freezed == timeend
          ? _value.timeend
          : timeend // ignore: cast_nullable_to_non_nullable
              as String?,
      lession: freezed == lession
          ? _value.lession
          : lession // ignore: cast_nullable_to_non_nullable
              as String?,
      dayofweeks: freezed == dayofweeks
          ? _value.dayofweeks
          : dayofweeks // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseItemImpl implements _CourseItem {
  const _$CourseItemImpl(
      {this.id,
      this.coursename,
      this.numbercredits,
      this.numberlession,
      this.coefficient,
      this.gpaPoint,
      this.gpa,
      this.roomname,
      this.timestart,
      this.timeend,
      this.lession,
      this.dayofweeks,
      this.rank});

  factory _$CourseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? coursename;
  @override
  final int? numbercredits;
  @override
  final int? numberlession;
  @override
  final int? coefficient;
  @override
  final int? gpaPoint;
  @override
  final int? gpa;
  @override
  final String? roomname;
  @override
  final String? timestart;
  @override
  final String? timeend;
  @override
  final String? lession;
  @override
  final String? dayofweeks;
  @override
  final int? rank;

  @override
  String toString() {
    return 'CourseItem(id: $id, coursename: $coursename, numbercredits: $numbercredits, numberlession: $numberlession, coefficient: $coefficient, gpaPoint: $gpaPoint, gpa: $gpa, roomname: $roomname, timestart: $timestart, timeend: $timeend, lession: $lession, dayofweeks: $dayofweeks, rank: $rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coursename, coursename) ||
                other.coursename == coursename) &&
            (identical(other.numbercredits, numbercredits) ||
                other.numbercredits == numbercredits) &&
            (identical(other.numberlession, numberlession) ||
                other.numberlession == numberlession) &&
            (identical(other.coefficient, coefficient) ||
                other.coefficient == coefficient) &&
            (identical(other.gpaPoint, gpaPoint) ||
                other.gpaPoint == gpaPoint) &&
            (identical(other.gpa, gpa) || other.gpa == gpa) &&
            (identical(other.roomname, roomname) ||
                other.roomname == roomname) &&
            (identical(other.timestart, timestart) ||
                other.timestart == timestart) &&
            (identical(other.timeend, timeend) || other.timeend == timeend) &&
            (identical(other.lession, lession) || other.lession == lession) &&
            (identical(other.dayofweeks, dayofweeks) ||
                other.dayofweeks == dayofweeks) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coursename,
      numbercredits,
      numberlession,
      coefficient,
      gpaPoint,
      gpa,
      roomname,
      timestart,
      timeend,
      lession,
      dayofweeks,
      rank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseItemImplCopyWith<_$CourseItemImpl> get copyWith =>
      __$$CourseItemImplCopyWithImpl<_$CourseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseItemImplToJson(
      this,
    );
  }
}

abstract class _CourseItem implements CourseItem {
  const factory _CourseItem(
      {final int? id,
      final String? coursename,
      final int? numbercredits,
      final int? numberlession,
      final int? coefficient,
      final int? gpaPoint,
      final int? gpa,
      final String? roomname,
      final String? timestart,
      final String? timeend,
      final String? lession,
      final String? dayofweeks,
      final int? rank}) = _$CourseItemImpl;

  factory _CourseItem.fromJson(Map<String, dynamic> json) =
      _$CourseItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get coursename;
  @override
  int? get numbercredits;
  @override
  int? get numberlession;
  @override
  int? get coefficient;
  @override
  int? get gpaPoint;
  @override
  int? get gpa;
  @override
  String? get roomname;
  @override
  String? get timestart;
  @override
  String? get timeend;
  @override
  String? get lession;
  @override
  String? get dayofweeks;
  @override
  int? get rank;
  @override
  @JsonKey(ignore: true)
  _$$CourseItemImplCopyWith<_$CourseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
