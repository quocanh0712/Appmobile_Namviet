// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'semester_finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_SemesterFinanceCopyWith<$Res>
    implements $SemesterFinanceCopyWith<$Res> {
  factory _$$_SemesterFinanceCopyWith(
          _$_SemesterFinance value, $Res Function(_$_SemesterFinance) then) =
      __$$_SemesterFinanceCopyWithImpl<$Res>;
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
class __$$_SemesterFinanceCopyWithImpl<$Res>
    extends _$SemesterFinanceCopyWithImpl<$Res, _$_SemesterFinance>
    implements _$$_SemesterFinanceCopyWith<$Res> {
  __$$_SemesterFinanceCopyWithImpl(
      _$_SemesterFinance _value, $Res Function(_$_SemesterFinance) _then)
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
    return _then(_$_SemesterFinance(
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
class _$_SemesterFinance implements _SemesterFinance {
  _$_SemesterFinance(
      {this.year, this.semester, this.totalFee, this.feePaid, this.excessFee});

  factory _$_SemesterFinance.fromJson(Map<String, dynamic> json) =>
      _$$_SemesterFinanceFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SemesterFinance &&
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
  _$$_SemesterFinanceCopyWith<_$_SemesterFinance> get copyWith =>
      __$$_SemesterFinanceCopyWithImpl<_$_SemesterFinance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SemesterFinanceToJson(
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
      final int? excessFee}) = _$_SemesterFinance;

  factory _SemesterFinance.fromJson(Map<String, dynamic> json) =
      _$_SemesterFinance.fromJson;

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
  _$$_SemesterFinanceCopyWith<_$_SemesterFinance> get copyWith =>
      throw _privateConstructorUsedError;
}
