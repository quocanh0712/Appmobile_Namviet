// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'semester_bill_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SemesterBillResponseObject _$SemesterBillResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _SemesterBillResponseObject.fromJson(json);
}

/// @nodoc
mixin _$SemesterBillResponseObject {
  int? get feeId => throw _privateConstructorUsedError;
  String? get feeName => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SemesterBillResponseObjectCopyWith<SemesterBillResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SemesterBillResponseObjectCopyWith<$Res> {
  factory $SemesterBillResponseObjectCopyWith(SemesterBillResponseObject value,
          $Res Function(SemesterBillResponseObject) then) =
      _$SemesterBillResponseObjectCopyWithImpl<$Res,
          SemesterBillResponseObject>;
  @useResult
  $Res call(
      {int? feeId,
      String? feeName,
      int? value,
      int? semester,
      String? year,
      int? status,
      String? qrCode});
}

/// @nodoc
class _$SemesterBillResponseObjectCopyWithImpl<$Res,
        $Val extends SemesterBillResponseObject>
    implements $SemesterBillResponseObjectCopyWith<$Res> {
  _$SemesterBillResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeId = freezed,
    Object? feeName = freezed,
    Object? value = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? status = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      feeId: freezed == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int?,
      feeName: freezed == feeName
          ? _value.feeName
          : feeName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SemesterBillResponseObjectImplCopyWith<$Res>
    implements $SemesterBillResponseObjectCopyWith<$Res> {
  factory _$$SemesterBillResponseObjectImplCopyWith(
          _$SemesterBillResponseObjectImpl value,
          $Res Function(_$SemesterBillResponseObjectImpl) then) =
      __$$SemesterBillResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? feeId,
      String? feeName,
      int? value,
      int? semester,
      String? year,
      int? status,
      String? qrCode});
}

/// @nodoc
class __$$SemesterBillResponseObjectImplCopyWithImpl<$Res>
    extends _$SemesterBillResponseObjectCopyWithImpl<$Res,
        _$SemesterBillResponseObjectImpl>
    implements _$$SemesterBillResponseObjectImplCopyWith<$Res> {
  __$$SemesterBillResponseObjectImplCopyWithImpl(
      _$SemesterBillResponseObjectImpl _value,
      $Res Function(_$SemesterBillResponseObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeId = freezed,
    Object? feeName = freezed,
    Object? value = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? status = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$SemesterBillResponseObjectImpl(
      feeId: freezed == feeId
          ? _value.feeId
          : feeId // ignore: cast_nullable_to_non_nullable
              as int?,
      feeName: freezed == feeName
          ? _value.feeName
          : feeName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SemesterBillResponseObjectImpl implements _SemesterBillResponseObject {
  _$SemesterBillResponseObjectImpl(
      {this.feeId,
      this.feeName,
      this.value,
      this.semester,
      this.year,
      this.status,
      this.qrCode});

  factory _$SemesterBillResponseObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SemesterBillResponseObjectImplFromJson(json);

  @override
  final int? feeId;
  @override
  final String? feeName;
  @override
  final int? value;
  @override
  final int? semester;
  @override
  final String? year;
  @override
  final int? status;
  @override
  final String? qrCode;

  @override
  String toString() {
    return 'SemesterBillResponseObject(feeId: $feeId, feeName: $feeName, value: $value, semester: $semester, year: $year, status: $status, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SemesterBillResponseObjectImpl &&
            (identical(other.feeId, feeId) || other.feeId == feeId) &&
            (identical(other.feeName, feeName) || other.feeName == feeName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, feeId, feeName, value, semester, year, status, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SemesterBillResponseObjectImplCopyWith<_$SemesterBillResponseObjectImpl>
      get copyWith => __$$SemesterBillResponseObjectImplCopyWithImpl<
          _$SemesterBillResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SemesterBillResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _SemesterBillResponseObject
    implements SemesterBillResponseObject {
  factory _SemesterBillResponseObject(
      {final int? feeId,
      final String? feeName,
      final int? value,
      final int? semester,
      final String? year,
      final int? status,
      final String? qrCode}) = _$SemesterBillResponseObjectImpl;

  factory _SemesterBillResponseObject.fromJson(Map<String, dynamic> json) =
      _$SemesterBillResponseObjectImpl.fromJson;

  @override
  int? get feeId;
  @override
  String? get feeName;
  @override
  int? get value;
  @override
  int? get semester;
  @override
  String? get year;
  @override
  int? get status;
  @override
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$SemesterBillResponseObjectImplCopyWith<_$SemesterBillResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
