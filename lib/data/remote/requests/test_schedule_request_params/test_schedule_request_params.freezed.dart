// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_schedule_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestScheduleRequestParams _$TestScheduleRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _TestScheduleRequestParams.fromJson(json);
}

/// @nodoc
mixin _$TestScheduleRequestParams {
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get examination => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestScheduleRequestParamsCopyWith<TestScheduleRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestScheduleRequestParamsCopyWith<$Res> {
  factory $TestScheduleRequestParamsCopyWith(TestScheduleRequestParams value,
          $Res Function(TestScheduleRequestParams) then) =
      _$TestScheduleRequestParamsCopyWithImpl<$Res, TestScheduleRequestParams>;
  @useResult
  $Res call(
      {DateTime? fromDate,
      DateTime? toDate,
      int? semester,
      String? year,
      int? examination,
      int? startindex,
      int? length});
}

/// @nodoc
class _$TestScheduleRequestParamsCopyWithImpl<$Res,
        $Val extends TestScheduleRequestParams>
    implements $TestScheduleRequestParamsCopyWith<$Res> {
  _$TestScheduleRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? examination = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      examination: freezed == examination
          ? _value.examination
          : examination // ignore: cast_nullable_to_non_nullable
              as int?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestScheduleRequestParamsImplCopyWith<$Res>
    implements $TestScheduleRequestParamsCopyWith<$Res> {
  factory _$$TestScheduleRequestParamsImplCopyWith(
          _$TestScheduleRequestParamsImpl value,
          $Res Function(_$TestScheduleRequestParamsImpl) then) =
      __$$TestScheduleRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? fromDate,
      DateTime? toDate,
      int? semester,
      String? year,
      int? examination,
      int? startindex,
      int? length});
}

/// @nodoc
class __$$TestScheduleRequestParamsImplCopyWithImpl<$Res>
    extends _$TestScheduleRequestParamsCopyWithImpl<$Res,
        _$TestScheduleRequestParamsImpl>
    implements _$$TestScheduleRequestParamsImplCopyWith<$Res> {
  __$$TestScheduleRequestParamsImplCopyWithImpl(
      _$TestScheduleRequestParamsImpl _value,
      $Res Function(_$TestScheduleRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? examination = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$TestScheduleRequestParamsImpl(
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      examination: freezed == examination
          ? _value.examination
          : examination // ignore: cast_nullable_to_non_nullable
              as int?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestScheduleRequestParamsImpl implements _TestScheduleRequestParams {
  _$TestScheduleRequestParamsImpl(
      {this.fromDate,
      this.toDate,
      this.semester,
      this.year,
      this.examination,
      this.startindex,
      this.length});

  factory _$TestScheduleRequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestScheduleRequestParamsImplFromJson(json);

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final int? semester;
  @override
  final String? year;
  @override
  final int? examination;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'TestScheduleRequestParams(fromDate: $fromDate, toDate: $toDate, semester: $semester, year: $year, examination: $examination, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestScheduleRequestParamsImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.examination, examination) ||
                other.examination == examination) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate, semester, year,
      examination, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestScheduleRequestParamsImplCopyWith<_$TestScheduleRequestParamsImpl>
      get copyWith => __$$TestScheduleRequestParamsImplCopyWithImpl<
          _$TestScheduleRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestScheduleRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _TestScheduleRequestParams implements TestScheduleRequestParams {
  factory _TestScheduleRequestParams(
      {final DateTime? fromDate,
      final DateTime? toDate,
      final int? semester,
      final String? year,
      final int? examination,
      final int? startindex,
      final int? length}) = _$TestScheduleRequestParamsImpl;

  factory _TestScheduleRequestParams.fromJson(Map<String, dynamic> json) =
      _$TestScheduleRequestParamsImpl.fromJson;

  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  int? get semester;
  @override
  String? get year;
  @override
  int? get examination;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$TestScheduleRequestParamsImplCopyWith<_$TestScheduleRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
