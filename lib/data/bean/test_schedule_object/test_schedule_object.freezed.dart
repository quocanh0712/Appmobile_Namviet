// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_schedule_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestScheduleObject _$TestScheduleObjectFromJson(Map<String, dynamic> json) {
  return _TestScheduleObject.fromJson(json);
}

/// @nodoc
mixin _$TestScheduleObject {
  String? get dayofweeks => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  String? get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'listcourse')
  List<CourseObject?>? get lstCourses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestScheduleObjectCopyWith<TestScheduleObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestScheduleObjectCopyWith<$Res> {
  factory $TestScheduleObjectCopyWith(
          TestScheduleObject value, $Res Function(TestScheduleObject) then) =
      _$TestScheduleObjectCopyWithImpl<$Res, TestScheduleObject>;
  @useResult
  $Res call(
      {String? dayofweeks,
      int? date,
      String? month,
      @JsonKey(name: 'listcourse') List<CourseObject?>? lstCourses});
}

/// @nodoc
class _$TestScheduleObjectCopyWithImpl<$Res, $Val extends TestScheduleObject>
    implements $TestScheduleObjectCopyWith<$Res> {
  _$TestScheduleObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayofweeks = freezed,
    Object? date = freezed,
    Object? month = freezed,
    Object? lstCourses = freezed,
  }) {
    return _then(_value.copyWith(
      dayofweeks: freezed == dayofweeks
          ? _value.dayofweeks
          : dayofweeks // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      lstCourses: freezed == lstCourses
          ? _value.lstCourses
          : lstCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseObject?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestScheduleObjectImplCopyWith<$Res>
    implements $TestScheduleObjectCopyWith<$Res> {
  factory _$$TestScheduleObjectImplCopyWith(_$TestScheduleObjectImpl value,
          $Res Function(_$TestScheduleObjectImpl) then) =
      __$$TestScheduleObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? dayofweeks,
      int? date,
      String? month,
      @JsonKey(name: 'listcourse') List<CourseObject?>? lstCourses});
}

/// @nodoc
class __$$TestScheduleObjectImplCopyWithImpl<$Res>
    extends _$TestScheduleObjectCopyWithImpl<$Res, _$TestScheduleObjectImpl>
    implements _$$TestScheduleObjectImplCopyWith<$Res> {
  __$$TestScheduleObjectImplCopyWithImpl(_$TestScheduleObjectImpl _value,
      $Res Function(_$TestScheduleObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayofweeks = freezed,
    Object? date = freezed,
    Object? month = freezed,
    Object? lstCourses = freezed,
  }) {
    return _then(_$TestScheduleObjectImpl(
      dayofweeks: freezed == dayofweeks
          ? _value.dayofweeks
          : dayofweeks // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      lstCourses: freezed == lstCourses
          ? _value._lstCourses
          : lstCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseObject?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestScheduleObjectImpl implements _TestScheduleObject {
  _$TestScheduleObjectImpl(
      {this.dayofweeks,
      this.date,
      this.month,
      @JsonKey(name: 'listcourse') final List<CourseObject?>? lstCourses})
      : _lstCourses = lstCourses;

  factory _$TestScheduleObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestScheduleObjectImplFromJson(json);

  @override
  final String? dayofweeks;
  @override
  final int? date;
  @override
  final String? month;
  final List<CourseObject?>? _lstCourses;
  @override
  @JsonKey(name: 'listcourse')
  List<CourseObject?>? get lstCourses {
    final value = _lstCourses;
    if (value == null) return null;
    if (_lstCourses is EqualUnmodifiableListView) return _lstCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TestScheduleObject(dayofweeks: $dayofweeks, date: $date, month: $month, lstCourses: $lstCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestScheduleObjectImpl &&
            (identical(other.dayofweeks, dayofweeks) ||
                other.dayofweeks == dayofweeks) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.month, month) || other.month == month) &&
            const DeepCollectionEquality()
                .equals(other._lstCourses, _lstCourses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayofweeks, date, month,
      const DeepCollectionEquality().hash(_lstCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestScheduleObjectImplCopyWith<_$TestScheduleObjectImpl> get copyWith =>
      __$$TestScheduleObjectImplCopyWithImpl<_$TestScheduleObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestScheduleObjectImplToJson(
      this,
    );
  }
}

abstract class _TestScheduleObject implements TestScheduleObject {
  factory _TestScheduleObject(
          {final String? dayofweeks,
          final int? date,
          final String? month,
          @JsonKey(name: 'listcourse') final List<CourseObject?>? lstCourses}) =
      _$TestScheduleObjectImpl;

  factory _TestScheduleObject.fromJson(Map<String, dynamic> json) =
      _$TestScheduleObjectImpl.fromJson;

  @override
  String? get dayofweeks;
  @override
  int? get date;
  @override
  String? get month;
  @override
  @JsonKey(name: 'listcourse')
  List<CourseObject?>? get lstCourses;
  @override
  @JsonKey(ignore: true)
  _$$TestScheduleObjectImplCopyWith<_$TestScheduleObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
