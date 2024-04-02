// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'semester_finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SemesterFinance _$SemesterFinanceFromJson(Map<String, dynamic> json) {
  return _SemesterFinance.fromJson(json);
}

/// @nodoc
mixin _$SemesterFinance {
  String? get year => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get totalFee => throw _privateConstructorUsedError;
  int? get feePaid => throw _privateConstructorUsedError;
  int? get excessFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SemesterFinanceCopyWith<SemesterFinance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SemesterFinanceCopyWith<$Res> {
  factory $SemesterFinanceCopyWith(
          SemesterFinance value, $Res Function(SemesterFinance) then) =
      _$SemesterFinanceCopyWithImpl<$Res, SemesterFinance>;
  @useResult
  $Res call(
      {String? year,
      int? semester,
      int? totalFee,
      int? feePaid,
      int? excessFee});
}

/// @nodoc
class _$SemesterFinanceCopyWithImpl<$Res, $Val extends SemesterFinance>
    implements $SemesterFinanceCopyWith<$Res> {
  _$SemesterFinanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? totalFee = freezed,
    Object? feePaid = freezed,
    Object? excessFee = freezed,
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
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int?,
      feePaid: freezed == feePaid
          ? _value.feePaid
          : feePaid // ignore: cast_nullable_to_non_nullable
              as int?,
      excessFee: freezed == excessFee
          ? _value.excessFee
          : excessFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SemesterFinanceImplCopyWith<$Res>
    implements $SemesterFinanceCopyWith<$Res> {
  factory _$$SemesterFinanceImplCopyWith(_$SemesterFinanceImpl value,
          $Res Function(_$SemesterFinanceImpl) then) =
      __$$SemesterFinanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? year,
      int? semester,
      int? totalFee,
      int? feePaid,
      int? excessFee});
}

/// @nodoc
class __$$SemesterFinanceImplCopyWithImpl<$Res>
    extends _$SemesterFinanceCopyWithImpl<$Res, _$SemesterFinanceImpl>
    implements _$$SemesterFinanceImplCopyWith<$Res> {
  __$$SemesterFinanceImplCopyWithImpl(
      _$SemesterFinanceImpl _value, $Res Function(_$SemesterFinanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? semester = freezed,
    Object? totalFee = freezed,
    Object? feePaid = freezed,
    Object? excessFee = freezed,
  }) {
    return _then(_$SemesterFinanceImpl(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int?,
      feePaid: freezed == feePaid
          ? _value.feePaid
          : feePaid // ignore: cast_nullable_to_non_nullable
              as int?,
      excessFee: freezed == excessFee
          ? _value.excessFee
          : excessFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SemesterFinanceImpl implements _SemesterFinance {
  _$SemesterFinanceImpl(
      {this.year, this.semester, this.totalFee, this.feePaid, this.excessFee});

  factory _$SemesterFinanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SemesterFinanceImplFromJson(json);

  @override
  final String? year;
  @override
  final int? semester;
  @override
  final int? totalFee;
  @override
  final int? feePaid;
  @override
  final int? excessFee;

  @override
  String toString() {
    return 'SemesterFinance(year: $year, semester: $semester, totalFee: $totalFee, feePaid: $feePaid, excessFee: $excessFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SemesterFinanceImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.feePaid, feePaid) || other.feePaid == feePaid) &&
            (identical(other.excessFee, excessFee) ||
                other.excessFee == excessFee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, semester, totalFee, feePaid, excessFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SemesterFinanceImplCopyWith<_$SemesterFinanceImpl> get copyWith =>
      __$$SemesterFinanceImplCopyWithImpl<_$SemesterFinanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SemesterFinanceImplToJson(
      this,
    );
  }
}

abstract class _SemesterFinance implements SemesterFinance {
  factory _SemesterFinance(
      {final String? year,
      final int? semester,
      final int? totalFee,
      final int? feePaid,
      final int? excessFee}) = _$SemesterFinanceImpl;

  factory _SemesterFinance.fromJson(Map<String, dynamic> json) =
      _$SemesterFinanceImpl.fromJson;

  @override
  String? get year;
  @override
  int? get semester;
  @override
  int? get totalFee;
  @override
  int? get feePaid;
  @override
  int? get excessFee;
  @override
  @JsonKey(ignore: true)
  _$$SemesterFinanceImplCopyWith<_$SemesterFinanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
