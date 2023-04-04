// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_result_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningResultRequestParams _$LearningResultRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _LearningResultRequestParams.fromJson(json);
}

/// @nodoc
mixin _$LearningResultRequestParams {
  int? get semester => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningResultRequestParamsCopyWith<LearningResultRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningResultRequestParamsCopyWith<$Res> {
  factory $LearningResultRequestParamsCopyWith(
          LearningResultRequestParams value,
          $Res Function(LearningResultRequestParams) then) =
      _$LearningResultRequestParamsCopyWithImpl<$Res,
          LearningResultRequestParams>;
  @useResult
  $Res call(
      {int? semester,
      String? year,
      int? courseId,
      int? startindex,
      int? length});
}

/// @nodoc
class _$LearningResultRequestParamsCopyWithImpl<$Res,
        $Val extends LearningResultRequestParams>
    implements $LearningResultRequestParamsCopyWith<$Res> {
  _$LearningResultRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = freezed,
    Object? year = freezed,
    Object? courseId = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LearningResultRequestParamsCopyWith<$Res>
    implements $LearningResultRequestParamsCopyWith<$Res> {
  factory _$$_LearningResultRequestParamsCopyWith(
          _$_LearningResultRequestParams value,
          $Res Function(_$_LearningResultRequestParams) then) =
      __$$_LearningResultRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? semester,
      String? year,
      int? courseId,
      int? startindex,
      int? length});
}

/// @nodoc
class __$$_LearningResultRequestParamsCopyWithImpl<$Res>
    extends _$LearningResultRequestParamsCopyWithImpl<$Res,
        _$_LearningResultRequestParams>
    implements _$$_LearningResultRequestParamsCopyWith<$Res> {
  __$$_LearningResultRequestParamsCopyWithImpl(
      _$_LearningResultRequestParams _value,
      $Res Function(_$_LearningResultRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = freezed,
    Object? year = freezed,
    Object? courseId = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_LearningResultRequestParams(
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
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
class _$_LearningResultRequestParams implements _LearningResultRequestParams {
  _$_LearningResultRequestParams(
      {this.semester, this.year, this.courseId, this.startindex, this.length});

  factory _$_LearningResultRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$_LearningResultRequestParamsFromJson(json);

  @override
  final int? semester;
  @override
  final String? year;
  @override
  final int? courseId;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'LearningResultRequestParams(semester: $semester, year: $year, courseId: $courseId, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningResultRequestParams &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, semester, year, courseId, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningResultRequestParamsCopyWith<_$_LearningResultRequestParams>
      get copyWith => __$$_LearningResultRequestParamsCopyWithImpl<
          _$_LearningResultRequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningResultRequestParamsToJson(
      this,
    );
  }
}

abstract class _LearningResultRequestParams
    implements LearningResultRequestParams {
  factory _LearningResultRequestParams(
      {final int? semester,
      final String? year,
      final int? courseId,
      final int? startindex,
      final int? length}) = _$_LearningResultRequestParams;

  factory _LearningResultRequestParams.fromJson(Map<String, dynamic> json) =
      _$_LearningResultRequestParams.fromJson;

  @override
  int? get semester;
  @override
  String? get year;
  @override
  int? get courseId;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$_LearningResultRequestParamsCopyWith<_$_LearningResultRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}
