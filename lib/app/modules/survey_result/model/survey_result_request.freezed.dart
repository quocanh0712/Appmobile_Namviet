// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyResultRequest _$SurveyResultRequestFromJson(Map<String, dynamic> json) {
  return _SurveyResultRequest.fromJson(json);
}

/// @nodoc
mixin _$SurveyResultRequest {
  String? get year => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResultRequestCopyWith<SurveyResultRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultRequestCopyWith<$Res> {
  factory $SurveyResultRequestCopyWith(
          SurveyResultRequest value, $Res Function(SurveyResultRequest) then) =
      _$SurveyResultRequestCopyWithImpl<$Res, SurveyResultRequest>;
  @useResult
  $Res call({String? year, int? semester, int? startindex, int? length});
}

/// @nodoc
class _$SurveyResultRequestCopyWithImpl<$Res, $Val extends SurveyResultRequest>
    implements $SurveyResultRequestCopyWith<$Res> {
  _$SurveyResultRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
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
abstract class _$$_SurveyResultRequestCopyWith<$Res>
    implements $SurveyResultRequestCopyWith<$Res> {
  factory _$$_SurveyResultRequestCopyWith(_$_SurveyResultRequest value,
          $Res Function(_$_SurveyResultRequest) then) =
      __$$_SurveyResultRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? year, int? semester, int? startindex, int? length});
}

/// @nodoc
class __$$_SurveyResultRequestCopyWithImpl<$Res>
    extends _$SurveyResultRequestCopyWithImpl<$Res, _$_SurveyResultRequest>
    implements _$$_SurveyResultRequestCopyWith<$Res> {
  __$$_SurveyResultRequestCopyWithImpl(_$_SurveyResultRequest _value,
      $Res Function(_$_SurveyResultRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_SurveyResultRequest(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
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
class _$_SurveyResultRequest implements _SurveyResultRequest {
  const _$_SurveyResultRequest(
      {this.year, this.semester, this.startindex, this.length});

  factory _$_SurveyResultRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyResultRequestFromJson(json);

  @override
  final String? year;
  @override
  final int? semester;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'SurveyResultRequest(year: $year, semester: $semester, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyResultRequest &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, semester, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyResultRequestCopyWith<_$_SurveyResultRequest> get copyWith =>
      __$$_SurveyResultRequestCopyWithImpl<_$_SurveyResultRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyResultRequestToJson(
      this,
    );
  }
}

abstract class _SurveyResultRequest implements SurveyResultRequest {
  const factory _SurveyResultRequest(
      {final String? year,
      final int? semester,
      final int? startindex,
      final int? length}) = _$_SurveyResultRequest;

  factory _SurveyResultRequest.fromJson(Map<String, dynamic> json) =
      _$_SurveyResultRequest.fromJson;

  @override
  String? get year;
  @override
  int? get semester;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyResultRequestCopyWith<_$_SurveyResultRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
