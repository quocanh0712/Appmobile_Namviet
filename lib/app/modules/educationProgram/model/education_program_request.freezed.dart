// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_program_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EducationProgramRequest _$EducationProgramRequestFromJson(
    Map<String, dynamic> json) {
  return _EducationProgramRequest.fromJson(json);
}

/// @nodoc
mixin _$EducationProgramRequest {
  String? get year => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationProgramRequestCopyWith<EducationProgramRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationProgramRequestCopyWith<$Res> {
  factory $EducationProgramRequestCopyWith(EducationProgramRequest value,
          $Res Function(EducationProgramRequest) then) =
      _$EducationProgramRequestCopyWithImpl<$Res, EducationProgramRequest>;
  @useResult
  $Res call({String? year, int? semester, int? startindex, int? length});
}

/// @nodoc
class _$EducationProgramRequestCopyWithImpl<$Res,
        $Val extends EducationProgramRequest>
    implements $EducationProgramRequestCopyWith<$Res> {
  _$EducationProgramRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$EducationProgramRequestImplCopyWith<$Res>
    implements $EducationProgramRequestCopyWith<$Res> {
  factory _$$EducationProgramRequestImplCopyWith(
          _$EducationProgramRequestImpl value,
          $Res Function(_$EducationProgramRequestImpl) then) =
      __$$EducationProgramRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? year, int? semester, int? startindex, int? length});
}

/// @nodoc
class __$$EducationProgramRequestImplCopyWithImpl<$Res>
    extends _$EducationProgramRequestCopyWithImpl<$Res,
        _$EducationProgramRequestImpl>
    implements _$$EducationProgramRequestImplCopyWith<$Res> {
  __$$EducationProgramRequestImplCopyWithImpl(
      _$EducationProgramRequestImpl _value,
      $Res Function(_$EducationProgramRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$EducationProgramRequestImpl(
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
class _$EducationProgramRequestImpl implements _EducationProgramRequest {
  const _$EducationProgramRequestImpl(
      {this.year, this.semester, this.startindex, this.length});

  factory _$EducationProgramRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationProgramRequestImplFromJson(json);

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
    return 'EducationProgramRequest(year: $year, semester: $semester, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationProgramRequestImpl &&
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
  _$$EducationProgramRequestImplCopyWith<_$EducationProgramRequestImpl>
      get copyWith => __$$EducationProgramRequestImplCopyWithImpl<
          _$EducationProgramRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationProgramRequestImplToJson(
      this,
    );
  }
}

abstract class _EducationProgramRequest implements EducationProgramRequest {
  const factory _EducationProgramRequest(
      {final String? year,
      final int? semester,
      final int? startindex,
      final int? length}) = _$EducationProgramRequestImpl;

  factory _EducationProgramRequest.fromJson(Map<String, dynamic> json) =
      _$EducationProgramRequestImpl.fromJson;

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
  _$$EducationProgramRequestImplCopyWith<_$EducationProgramRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
