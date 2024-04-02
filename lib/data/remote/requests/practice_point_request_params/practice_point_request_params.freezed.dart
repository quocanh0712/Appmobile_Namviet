// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_point_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PracticePointRequestParams _$PracticePointRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _PracticePointRequestParams.fromJson(json);
}

/// @nodoc
mixin _$PracticePointRequestParams {
  int? get semester => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get subCriteriaId => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PracticePointRequestParamsCopyWith<PracticePointRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticePointRequestParamsCopyWith<$Res> {
  factory $PracticePointRequestParamsCopyWith(PracticePointRequestParams value,
          $Res Function(PracticePointRequestParams) then) =
      _$PracticePointRequestParamsCopyWithImpl<$Res,
          PracticePointRequestParams>;
  @useResult
  $Res call(
      {int? semester,
      String? year,
      int? subCriteriaId,
      int? startindex,
      int? length});
}

/// @nodoc
class _$PracticePointRequestParamsCopyWithImpl<$Res,
        $Val extends PracticePointRequestParams>
    implements $PracticePointRequestParamsCopyWith<$Res> {
  _$PracticePointRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = freezed,
    Object? year = freezed,
    Object? subCriteriaId = freezed,
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
      subCriteriaId: freezed == subCriteriaId
          ? _value.subCriteriaId
          : subCriteriaId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PracticePointRequestParamsImplCopyWith<$Res>
    implements $PracticePointRequestParamsCopyWith<$Res> {
  factory _$$PracticePointRequestParamsImplCopyWith(
          _$PracticePointRequestParamsImpl value,
          $Res Function(_$PracticePointRequestParamsImpl) then) =
      __$$PracticePointRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? semester,
      String? year,
      int? subCriteriaId,
      int? startindex,
      int? length});
}

/// @nodoc
class __$$PracticePointRequestParamsImplCopyWithImpl<$Res>
    extends _$PracticePointRequestParamsCopyWithImpl<$Res,
        _$PracticePointRequestParamsImpl>
    implements _$$PracticePointRequestParamsImplCopyWith<$Res> {
  __$$PracticePointRequestParamsImplCopyWithImpl(
      _$PracticePointRequestParamsImpl _value,
      $Res Function(_$PracticePointRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = freezed,
    Object? year = freezed,
    Object? subCriteriaId = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$PracticePointRequestParamsImpl(
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      subCriteriaId: freezed == subCriteriaId
          ? _value.subCriteriaId
          : subCriteriaId // ignore: cast_nullable_to_non_nullable
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
class _$PracticePointRequestParamsImpl implements _PracticePointRequestParams {
  _$PracticePointRequestParamsImpl(
      {this.semester,
      this.year,
      this.subCriteriaId,
      this.startindex,
      this.length});

  factory _$PracticePointRequestParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PracticePointRequestParamsImplFromJson(json);

  @override
  final int? semester;
  @override
  final String? year;
  @override
  final int? subCriteriaId;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'PracticePointRequestParams(semester: $semester, year: $year, subCriteriaId: $subCriteriaId, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticePointRequestParamsImpl &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.subCriteriaId, subCriteriaId) ||
                other.subCriteriaId == subCriteriaId) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, semester, year, subCriteriaId, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticePointRequestParamsImplCopyWith<_$PracticePointRequestParamsImpl>
      get copyWith => __$$PracticePointRequestParamsImplCopyWithImpl<
          _$PracticePointRequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticePointRequestParamsImplToJson(
      this,
    );
  }
}

abstract class _PracticePointRequestParams
    implements PracticePointRequestParams {
  factory _PracticePointRequestParams(
      {final int? semester,
      final String? year,
      final int? subCriteriaId,
      final int? startindex,
      final int? length}) = _$PracticePointRequestParamsImpl;

  factory _PracticePointRequestParams.fromJson(Map<String, dynamic> json) =
      _$PracticePointRequestParamsImpl.fromJson;

  @override
  int? get semester;
  @override
  String? get year;
  @override
  int? get subCriteriaId;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$PracticePointRequestParamsImplCopyWith<_$PracticePointRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
