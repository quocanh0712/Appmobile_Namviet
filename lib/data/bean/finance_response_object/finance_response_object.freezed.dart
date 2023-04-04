// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'finance_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinanceResponseObject _$FinanceResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _FinanceResponseObject.fromJson(json);
}

/// @nodoc
mixin _$FinanceResponseObject {
  int? get totalFee => throw _privateConstructorUsedError;
  int? get feePaid => throw _privateConstructorUsedError;
  int? get excessFee => throw _privateConstructorUsedError;
  List<SemesterFinance>? get semesters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceResponseObjectCopyWith<FinanceResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceResponseObjectCopyWith<$Res> {
  factory $FinanceResponseObjectCopyWith(FinanceResponseObject value,
          $Res Function(FinanceResponseObject) then) =
      _$FinanceResponseObjectCopyWithImpl<$Res, FinanceResponseObject>;
  @useResult
  $Res call(
      {int? totalFee,
      int? feePaid,
      int? excessFee,
      List<SemesterFinance>? semesters});
}

/// @nodoc
class _$FinanceResponseObjectCopyWithImpl<$Res,
        $Val extends FinanceResponseObject>
    implements $FinanceResponseObjectCopyWith<$Res> {
  _$FinanceResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFee = freezed,
    Object? feePaid = freezed,
    Object? excessFee = freezed,
    Object? semesters = freezed,
  }) {
    return _then(_value.copyWith(
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
      semesters: freezed == semesters
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<SemesterFinance>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FinanceResponseObjectCopyWith<$Res>
    implements $FinanceResponseObjectCopyWith<$Res> {
  factory _$$_FinanceResponseObjectCopyWith(_$_FinanceResponseObject value,
          $Res Function(_$_FinanceResponseObject) then) =
      __$$_FinanceResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalFee,
      int? feePaid,
      int? excessFee,
      List<SemesterFinance>? semesters});
}

/// @nodoc
class __$$_FinanceResponseObjectCopyWithImpl<$Res>
    extends _$FinanceResponseObjectCopyWithImpl<$Res, _$_FinanceResponseObject>
    implements _$$_FinanceResponseObjectCopyWith<$Res> {
  __$$_FinanceResponseObjectCopyWithImpl(_$_FinanceResponseObject _value,
      $Res Function(_$_FinanceResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFee = freezed,
    Object? feePaid = freezed,
    Object? excessFee = freezed,
    Object? semesters = freezed,
  }) {
    return _then(_$_FinanceResponseObject(
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
      semesters: freezed == semesters
          ? _value._semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<SemesterFinance>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinanceResponseObject implements _FinanceResponseObject {
  _$_FinanceResponseObject(
      {this.totalFee,
      this.feePaid,
      this.excessFee,
      final List<SemesterFinance>? semesters})
      : _semesters = semesters;

  factory _$_FinanceResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_FinanceResponseObjectFromJson(json);

  @override
  final int? totalFee;
  @override
  final int? feePaid;
  @override
  final int? excessFee;
  final List<SemesterFinance>? _semesters;
  @override
  List<SemesterFinance>? get semesters {
    final value = _semesters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FinanceResponseObject(totalFee: $totalFee, feePaid: $feePaid, excessFee: $excessFee, semesters: $semesters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinanceResponseObject &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.feePaid, feePaid) || other.feePaid == feePaid) &&
            (identical(other.excessFee, excessFee) ||
                other.excessFee == excessFee) &&
            const DeepCollectionEquality()
                .equals(other._semesters, _semesters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalFee, feePaid, excessFee,
      const DeepCollectionEquality().hash(_semesters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinanceResponseObjectCopyWith<_$_FinanceResponseObject> get copyWith =>
      __$$_FinanceResponseObjectCopyWithImpl<_$_FinanceResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinanceResponseObjectToJson(
      this,
    );
  }
}

abstract class _FinanceResponseObject implements FinanceResponseObject {
  factory _FinanceResponseObject(
      {final int? totalFee,
      final int? feePaid,
      final int? excessFee,
      final List<SemesterFinance>? semesters}) = _$_FinanceResponseObject;

  factory _FinanceResponseObject.fromJson(Map<String, dynamic> json) =
      _$_FinanceResponseObject.fromJson;

  @override
  int? get totalFee;
  @override
  int? get feePaid;
  @override
  int? get excessFee;
  @override
  List<SemesterFinance>? get semesters;
  @override
  @JsonKey(ignore: true)
  _$$_FinanceResponseObjectCopyWith<_$_FinanceResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
