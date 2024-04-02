// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveyResultResponse _$SurveyResultResponseFromJson(Map<String, dynamic> json) {
  return _SurveyResultResponse.fromJson(json);
}

/// @nodoc
mixin _$SurveyResultResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResultResponseCopyWith<SurveyResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultResponseCopyWith<$Res> {
  factory $SurveyResultResponseCopyWith(SurveyResultResponse value,
          $Res Function(SurveyResultResponse) then) =
      _$SurveyResultResponseCopyWithImpl<$Res, SurveyResultResponse>;
  @useResult
  $Res call({int? id, String? name, String? semester, String? year});
}

/// @nodoc
class _$SurveyResultResponseCopyWithImpl<$Res,
        $Val extends SurveyResultResponse>
    implements $SurveyResultResponseCopyWith<$Res> {
  _$SurveyResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? semester = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyResultResponseImplCopyWith<$Res>
    implements $SurveyResultResponseCopyWith<$Res> {
  factory _$$SurveyResultResponseImplCopyWith(_$SurveyResultResponseImpl value,
          $Res Function(_$SurveyResultResponseImpl) then) =
      __$$SurveyResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? semester, String? year});
}

/// @nodoc
class __$$SurveyResultResponseImplCopyWithImpl<$Res>
    extends _$SurveyResultResponseCopyWithImpl<$Res, _$SurveyResultResponseImpl>
    implements _$$SurveyResultResponseImplCopyWith<$Res> {
  __$$SurveyResultResponseImplCopyWithImpl(_$SurveyResultResponseImpl _value,
      $Res Function(_$SurveyResultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? semester = freezed,
    Object? year = freezed,
  }) {
    return _then(_$SurveyResultResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyResultResponseImpl implements _SurveyResultResponse {
  const _$SurveyResultResponseImpl(
      {this.id, this.name, this.semester, this.year});

  factory _$SurveyResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyResultResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? semester;
  @override
  final String? year;

  @override
  String toString() {
    return 'SurveyResultResponse(id: $id, name: $name, semester: $semester, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyResultResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, semester, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyResultResponseImplCopyWith<_$SurveyResultResponseImpl>
      get copyWith =>
          __$$SurveyResultResponseImplCopyWithImpl<_$SurveyResultResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyResultResponseImplToJson(
      this,
    );
  }
}

abstract class _SurveyResultResponse implements SurveyResultResponse {
  const factory _SurveyResultResponse(
      {final int? id,
      final String? name,
      final String? semester,
      final String? year}) = _$SurveyResultResponseImpl;

  factory _SurveyResultResponse.fromJson(Map<String, dynamic> json) =
      _$SurveyResultResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get semester;
  @override
  String? get year;
  @override
  @JsonKey(ignore: true)
  _$$SurveyResultResponseImplCopyWith<_$SurveyResultResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
