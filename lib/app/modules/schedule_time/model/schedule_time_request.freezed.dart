// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_time_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleTimeRequest _$ScheduleTimeRequestFromJson(Map<String, dynamic> json) {
  return _ScheduleTimeRequest.fromJson(json);
}

/// @nodoc
mixin _$ScheduleTimeRequest {
  String? get year => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get session => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleTimeRequestCopyWith<ScheduleTimeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleTimeRequestCopyWith<$Res> {
  factory $ScheduleTimeRequestCopyWith(
          ScheduleTimeRequest value, $Res Function(ScheduleTimeRequest) then) =
      _$ScheduleTimeRequestCopyWithImpl<$Res, ScheduleTimeRequest>;
  @useResult
  $Res call(
      {String? year,
      int? semester,
      int? session,
      int? startindex,
      int? length});
}

/// @nodoc
class _$ScheduleTimeRequestCopyWithImpl<$Res, $Val extends ScheduleTimeRequest>
    implements $ScheduleTimeRequestCopyWith<$Res> {
  _$ScheduleTimeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? session = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ScheduleTimeRequestImplCopyWith<$Res>
    implements $ScheduleTimeRequestCopyWith<$Res> {
  factory _$$ScheduleTimeRequestImplCopyWith(_$ScheduleTimeRequestImpl value,
          $Res Function(_$ScheduleTimeRequestImpl) then) =
      __$$ScheduleTimeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? year,
      int? semester,
      int? session,
      int? startindex,
      int? length});
}

/// @nodoc
class __$$ScheduleTimeRequestImplCopyWithImpl<$Res>
    extends _$ScheduleTimeRequestCopyWithImpl<$Res, _$ScheduleTimeRequestImpl>
    implements _$$ScheduleTimeRequestImplCopyWith<$Res> {
  __$$ScheduleTimeRequestImplCopyWithImpl(_$ScheduleTimeRequestImpl _value,
      $Res Function(_$ScheduleTimeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? session = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$ScheduleTimeRequestImpl(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
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
class _$ScheduleTimeRequestImpl implements _ScheduleTimeRequest {
  const _$ScheduleTimeRequestImpl(
      {this.year, this.semester, this.session, this.startindex, this.length});

  factory _$ScheduleTimeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleTimeRequestImplFromJson(json);

  @override
  final String? year;
  @override
  final int? semester;
  @override
  final int? session;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'ScheduleTimeRequest(year: $year, semester: $semester, session: $session, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleTimeRequestImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, semester, session, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleTimeRequestImplCopyWith<_$ScheduleTimeRequestImpl> get copyWith =>
      __$$ScheduleTimeRequestImplCopyWithImpl<_$ScheduleTimeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleTimeRequestImplToJson(
      this,
    );
  }
}

abstract class _ScheduleTimeRequest implements ScheduleTimeRequest {
  const factory _ScheduleTimeRequest(
      {final String? year,
      final int? semester,
      final int? session,
      final int? startindex,
      final int? length}) = _$ScheduleTimeRequestImpl;

  factory _ScheduleTimeRequest.fromJson(Map<String, dynamic> json) =
      _$ScheduleTimeRequestImpl.fromJson;

  @override
  String? get year;
  @override
  int? get semester;
  @override
  int? get session;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleTimeRequestImplCopyWith<_$ScheduleTimeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
