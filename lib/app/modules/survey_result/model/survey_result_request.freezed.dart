// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveyResultRequest _$SurveyResultRequestFromJson(Map<String, dynamic> json) {
  return _SurveyResultRequest.fromJson(json);
}

/// @nodoc
mixin _$SurveyResultRequest {
  String? get year => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get idUser => throw _privateConstructorUsedError;

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
  $Res call(
      {String? year,
      int? semester,
      int? startindex,
      int? length,
      String? idUser});
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
    Object? idUser = freezed,
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
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyResultRequestImplCopyWith<$Res>
    implements $SurveyResultRequestCopyWith<$Res> {
  factory _$$SurveyResultRequestImplCopyWith(_$SurveyResultRequestImpl value,
          $Res Function(_$SurveyResultRequestImpl) then) =
      __$$SurveyResultRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? year,
      int? semester,
      int? startindex,
      int? length,
      String? idUser});
}

/// @nodoc
class __$$SurveyResultRequestImplCopyWithImpl<$Res>
    extends _$SurveyResultRequestCopyWithImpl<$Res, _$SurveyResultRequestImpl>
    implements _$$SurveyResultRequestImplCopyWith<$Res> {
  __$$SurveyResultRequestImplCopyWithImpl(_$SurveyResultRequestImpl _value,
      $Res Function(_$SurveyResultRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_$SurveyResultRequestImpl(
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
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyResultRequestImpl implements _SurveyResultRequest {
  const _$SurveyResultRequestImpl(
      {this.year, this.semester, this.startindex, this.length, this.idUser});

  factory _$SurveyResultRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyResultRequestImplFromJson(json);

  @override
  final String? year;
  @override
  final int? semester;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? idUser;

  @override
  String toString() {
    return 'SurveyResultRequest(year: $year, semester: $semester, startindex: $startindex, length: $length, idUser: $idUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyResultRequestImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, semester, startindex, length, idUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyResultRequestImplCopyWith<_$SurveyResultRequestImpl> get copyWith =>
      __$$SurveyResultRequestImplCopyWithImpl<_$SurveyResultRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyResultRequestImplToJson(
      this,
    );
  }
}

abstract class _SurveyResultRequest implements SurveyResultRequest {
  const factory _SurveyResultRequest(
      {final String? year,
      final int? semester,
      final int? startindex,
      final int? length,
      final String? idUser}) = _$SurveyResultRequestImpl;

  factory _SurveyResultRequest.fromJson(Map<String, dynamic> json) =
      _$SurveyResultRequestImpl.fromJson;

  @override
  String? get year;
  @override
  int? get semester;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get idUser;
  @override
  @JsonKey(ignore: true)
  _$$SurveyResultRequestImplCopyWith<_$SurveyResultRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
