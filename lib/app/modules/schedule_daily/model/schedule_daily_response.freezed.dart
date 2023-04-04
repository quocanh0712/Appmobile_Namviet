// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_daily_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDailyResponse _$ScheduleDailyResponseFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDailyResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDailyResponse {
  DateTime? get timestart => throw _privateConstructorUsedError;
  DateTime? get timeend => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get coursename => throw _privateConstructorUsedError;
  String? get roomname => throw _privateConstructorUsedError;
  String? get lesson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDailyResponseCopyWith<ScheduleDailyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDailyResponseCopyWith<$Res> {
  factory $ScheduleDailyResponseCopyWith(ScheduleDailyResponse value,
          $Res Function(ScheduleDailyResponse) then) =
      _$ScheduleDailyResponseCopyWithImpl<$Res, ScheduleDailyResponse>;
  @useResult
  $Res call(
      {DateTime? timestart,
      DateTime? timeend,
      int? id,
      String? coursename,
      String? roomname,
      String? lesson});
}

/// @nodoc
class _$ScheduleDailyResponseCopyWithImpl<$Res,
        $Val extends ScheduleDailyResponse>
    implements $ScheduleDailyResponseCopyWith<$Res> {
  _$ScheduleDailyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestart = freezed,
    Object? timeend = freezed,
    Object? id = freezed,
    Object? coursename = freezed,
    Object? roomname = freezed,
    Object? lesson = freezed,
  }) {
    return _then(_value.copyWith(
      timestart: freezed == timestart
          ? _value.timestart
          : timestart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeend: freezed == timeend
          ? _value.timeend
          : timeend // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coursename: freezed == coursename
          ? _value.coursename
          : coursename // ignore: cast_nullable_to_non_nullable
              as String?,
      roomname: freezed == roomname
          ? _value.roomname
          : roomname // ignore: cast_nullable_to_non_nullable
              as String?,
      lesson: freezed == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleDailyResponseCopyWith<$Res>
    implements $ScheduleDailyResponseCopyWith<$Res> {
  factory _$$_ScheduleDailyResponseCopyWith(_$_ScheduleDailyResponse value,
          $Res Function(_$_ScheduleDailyResponse) then) =
      __$$_ScheduleDailyResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? timestart,
      DateTime? timeend,
      int? id,
      String? coursename,
      String? roomname,
      String? lesson});
}

/// @nodoc
class __$$_ScheduleDailyResponseCopyWithImpl<$Res>
    extends _$ScheduleDailyResponseCopyWithImpl<$Res, _$_ScheduleDailyResponse>
    implements _$$_ScheduleDailyResponseCopyWith<$Res> {
  __$$_ScheduleDailyResponseCopyWithImpl(_$_ScheduleDailyResponse _value,
      $Res Function(_$_ScheduleDailyResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestart = freezed,
    Object? timeend = freezed,
    Object? id = freezed,
    Object? coursename = freezed,
    Object? roomname = freezed,
    Object? lesson = freezed,
  }) {
    return _then(_$_ScheduleDailyResponse(
      timestart: freezed == timestart
          ? _value.timestart
          : timestart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeend: freezed == timeend
          ? _value.timeend
          : timeend // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coursename: freezed == coursename
          ? _value.coursename
          : coursename // ignore: cast_nullable_to_non_nullable
              as String?,
      roomname: freezed == roomname
          ? _value.roomname
          : roomname // ignore: cast_nullable_to_non_nullable
              as String?,
      lesson: freezed == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDailyResponse implements _ScheduleDailyResponse {
  const _$_ScheduleDailyResponse(
      {this.timestart,
      this.timeend,
      this.id,
      this.coursename,
      this.roomname,
      this.lesson});

  factory _$_ScheduleDailyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDailyResponseFromJson(json);

  @override
  final DateTime? timestart;
  @override
  final DateTime? timeend;
  @override
  final int? id;
  @override
  final String? coursename;
  @override
  final String? roomname;
  @override
  final String? lesson;

  @override
  String toString() {
    return 'ScheduleDailyResponse(timestart: $timestart, timeend: $timeend, id: $id, coursename: $coursename, roomname: $roomname, lesson: $lesson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDailyResponse &&
            (identical(other.timestart, timestart) ||
                other.timestart == timestart) &&
            (identical(other.timeend, timeend) || other.timeend == timeend) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coursename, coursename) ||
                other.coursename == coursename) &&
            (identical(other.roomname, roomname) ||
                other.roomname == roomname) &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestart, timeend, id, coursename, roomname, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDailyResponseCopyWith<_$_ScheduleDailyResponse> get copyWith =>
      __$$_ScheduleDailyResponseCopyWithImpl<_$_ScheduleDailyResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDailyResponseToJson(
      this,
    );
  }
}

abstract class _ScheduleDailyResponse implements ScheduleDailyResponse {
  const factory _ScheduleDailyResponse(
      {final DateTime? timestart,
      final DateTime? timeend,
      final int? id,
      final String? coursename,
      final String? roomname,
      final String? lesson}) = _$_ScheduleDailyResponse;

  factory _ScheduleDailyResponse.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDailyResponse.fromJson;

  @override
  DateTime? get timestart;
  @override
  DateTime? get timeend;
  @override
  int? get id;
  @override
  String? get coursename;
  @override
  String? get roomname;
  @override
  String? get lesson;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDailyResponseCopyWith<_$_ScheduleDailyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
