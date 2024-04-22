// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_daily_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDailyResponse _$ScheduleDailyResponseFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDailyResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDailyResponse {
  String? get timestart => throw _privateConstructorUsedError;
  String? get timeend => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get coursename => throw _privateConstructorUsedError;
  String? get roomname => throw _privateConstructorUsedError;
  String? get lession => throw _privateConstructorUsedError;

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
      {String? timestart,
      String? timeend,
      int? id,
      String? coursename,
      String? roomname,
      String? lession});
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
    Object? lession = freezed,
  }) {
    return _then(_value.copyWith(
      timestart: freezed == timestart
          ? _value.timestart
          : timestart // ignore: cast_nullable_to_non_nullable
              as String?,
      timeend: freezed == timeend
          ? _value.timeend
          : timeend // ignore: cast_nullable_to_non_nullable
              as String?,
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
      lession: freezed == lession
          ? _value.lession
          : lession // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDailyResponseImplCopyWith<$Res>
    implements $ScheduleDailyResponseCopyWith<$Res> {
  factory _$$ScheduleDailyResponseImplCopyWith(
          _$ScheduleDailyResponseImpl value,
          $Res Function(_$ScheduleDailyResponseImpl) then) =
      __$$ScheduleDailyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? timestart,
      String? timeend,
      int? id,
      String? coursename,
      String? roomname,
      String? lession});
}

/// @nodoc
class __$$ScheduleDailyResponseImplCopyWithImpl<$Res>
    extends _$ScheduleDailyResponseCopyWithImpl<$Res,
        _$ScheduleDailyResponseImpl>
    implements _$$ScheduleDailyResponseImplCopyWith<$Res> {
  __$$ScheduleDailyResponseImplCopyWithImpl(_$ScheduleDailyResponseImpl _value,
      $Res Function(_$ScheduleDailyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestart = freezed,
    Object? timeend = freezed,
    Object? id = freezed,
    Object? coursename = freezed,
    Object? roomname = freezed,
    Object? lession = freezed,
  }) {
    return _then(_$ScheduleDailyResponseImpl(
      timestart: freezed == timestart
          ? _value.timestart
          : timestart // ignore: cast_nullable_to_non_nullable
              as String?,
      timeend: freezed == timeend
          ? _value.timeend
          : timeend // ignore: cast_nullable_to_non_nullable
              as String?,
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
      lession: freezed == lession
          ? _value.lession
          : lession // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDailyResponseImpl implements _ScheduleDailyResponse {
  const _$ScheduleDailyResponseImpl(
      {this.timestart,
      this.timeend,
      this.id,
      this.coursename,
      this.roomname,
      this.lession});

  factory _$ScheduleDailyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDailyResponseImplFromJson(json);

  @override
  final String? timestart;
  @override
  final String? timeend;
  @override
  final int? id;
  @override
  final String? coursename;
  @override
  final String? roomname;
  @override
  final String? lession;

  @override
  String toString() {
    return 'ScheduleDailyResponse(timestart: $timestart, timeend: $timeend, id: $id, coursename: $coursename, roomname: $roomname, lession: $lession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDailyResponseImpl &&
            (identical(other.timestart, timestart) ||
                other.timestart == timestart) &&
            (identical(other.timeend, timeend) || other.timeend == timeend) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coursename, coursename) ||
                other.coursename == coursename) &&
            (identical(other.roomname, roomname) ||
                other.roomname == roomname) &&
            (identical(other.lession, lession) || other.lession == lession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestart, timeend, id, coursename, roomname, lession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDailyResponseImplCopyWith<_$ScheduleDailyResponseImpl>
      get copyWith => __$$ScheduleDailyResponseImplCopyWithImpl<
          _$ScheduleDailyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDailyResponseImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDailyResponse implements ScheduleDailyResponse {
  const factory _ScheduleDailyResponse(
      {final String? timestart,
      final String? timeend,
      final int? id,
      final String? coursename,
      final String? roomname,
      final String? lession}) = _$ScheduleDailyResponseImpl;

  factory _ScheduleDailyResponse.fromJson(Map<String, dynamic> json) =
      _$ScheduleDailyResponseImpl.fromJson;

  @override
  String? get timestart;
  @override
  String? get timeend;
  @override
  int? get id;
  @override
  String? get coursename;
  @override
  String? get roomname;
  @override
  String? get lession;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleDailyResponseImplCopyWith<_$ScheduleDailyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
