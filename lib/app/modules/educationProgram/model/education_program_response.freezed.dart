// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_program_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EducationProgramResponse _$EducationProgramResponseFromJson(
    Map<String, dynamic> json) {
  return _EducationProgramResponse.fromJson(json);
}

/// @nodoc
mixin _$EducationProgramResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get coursename => throw _privateConstructorUsedError;
  int? get numbercredits => throw _privateConstructorUsedError;
  int? get numberlession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationProgramResponseCopyWith<EducationProgramResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationProgramResponseCopyWith<$Res> {
  factory $EducationProgramResponseCopyWith(EducationProgramResponse value,
          $Res Function(EducationProgramResponse) then) =
      _$EducationProgramResponseCopyWithImpl<$Res, EducationProgramResponse>;
  @useResult
  $Res call(
      {int? id, String? coursename, int? numbercredits, int? numberlession});
}

/// @nodoc
class _$EducationProgramResponseCopyWithImpl<$Res,
        $Val extends EducationProgramResponse>
    implements $EducationProgramResponseCopyWith<$Res> {
  _$EducationProgramResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coursename = freezed,
    Object? numbercredits = freezed,
    Object? numberlession = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coursename: freezed == coursename
          ? _value.coursename
          : coursename // ignore: cast_nullable_to_non_nullable
              as String?,
      numbercredits: freezed == numbercredits
          ? _value.numbercredits
          : numbercredits // ignore: cast_nullable_to_non_nullable
              as int?,
      numberlession: freezed == numberlession
          ? _value.numberlession
          : numberlession // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationProgramResponseImplCopyWith<$Res>
    implements $EducationProgramResponseCopyWith<$Res> {
  factory _$$EducationProgramResponseImplCopyWith(
          _$EducationProgramResponseImpl value,
          $Res Function(_$EducationProgramResponseImpl) then) =
      __$$EducationProgramResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? coursename, int? numbercredits, int? numberlession});
}

/// @nodoc
class __$$EducationProgramResponseImplCopyWithImpl<$Res>
    extends _$EducationProgramResponseCopyWithImpl<$Res,
        _$EducationProgramResponseImpl>
    implements _$$EducationProgramResponseImplCopyWith<$Res> {
  __$$EducationProgramResponseImplCopyWithImpl(
      _$EducationProgramResponseImpl _value,
      $Res Function(_$EducationProgramResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coursename = freezed,
    Object? numbercredits = freezed,
    Object? numberlession = freezed,
  }) {
    return _then(_$EducationProgramResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coursename: freezed == coursename
          ? _value.coursename
          : coursename // ignore: cast_nullable_to_non_nullable
              as String?,
      numbercredits: freezed == numbercredits
          ? _value.numbercredits
          : numbercredits // ignore: cast_nullable_to_non_nullable
              as int?,
      numberlession: freezed == numberlession
          ? _value.numberlession
          : numberlession // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationProgramResponseImpl implements _EducationProgramResponse {
  const _$EducationProgramResponseImpl(
      {this.id, this.coursename, this.numbercredits, this.numberlession});

  factory _$EducationProgramResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationProgramResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? coursename;
  @override
  final int? numbercredits;
  @override
  final int? numberlession;

  @override
  String toString() {
    return 'EducationProgramResponse(id: $id, coursename: $coursename, numbercredits: $numbercredits, numberlession: $numberlession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationProgramResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coursename, coursename) ||
                other.coursename == coursename) &&
            (identical(other.numbercredits, numbercredits) ||
                other.numbercredits == numbercredits) &&
            (identical(other.numberlession, numberlession) ||
                other.numberlession == numberlession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, coursename, numbercredits, numberlession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationProgramResponseImplCopyWith<_$EducationProgramResponseImpl>
      get copyWith => __$$EducationProgramResponseImplCopyWithImpl<
          _$EducationProgramResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationProgramResponseImplToJson(
      this,
    );
  }
}

abstract class _EducationProgramResponse implements EducationProgramResponse {
  const factory _EducationProgramResponse(
      {final int? id,
      final String? coursename,
      final int? numbercredits,
      final int? numberlession}) = _$EducationProgramResponseImpl;

  factory _EducationProgramResponse.fromJson(Map<String, dynamic> json) =
      _$EducationProgramResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get coursename;
  @override
  int? get numbercredits;
  @override
  int? get numberlession;
  @override
  @JsonKey(ignore: true)
  _$$EducationProgramResponseImplCopyWith<_$EducationProgramResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
