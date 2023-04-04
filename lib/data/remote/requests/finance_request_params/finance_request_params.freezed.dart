// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'finance_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinanceRequestParams _$FinanceRequestParamsFromJson(Map<String, dynamic> json) {
  return _FinanceRequestParams.fromJson(json);
}

/// @nodoc
mixin _$FinanceRequestParams {
  int? get semester => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get idKhoanThu => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceRequestParamsCopyWith<FinanceRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceRequestParamsCopyWith<$Res> {
  factory $FinanceRequestParamsCopyWith(FinanceRequestParams value,
          $Res Function(FinanceRequestParams) then) =
      _$FinanceRequestParamsCopyWithImpl<$Res, FinanceRequestParams>;
  @useResult
  $Res call(
      {int? semester,
      String? year,
      int? idKhoanThu,
      int? status,
      int? startindex,
      int? length});
}

/// @nodoc
class _$FinanceRequestParamsCopyWithImpl<$Res,
        $Val extends FinanceRequestParams>
    implements $FinanceRequestParamsCopyWith<$Res> {
  _$FinanceRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = freezed,
    Object? year = freezed,
    Object? idKhoanThu = freezed,
    Object? status = freezed,
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
      idKhoanThu: freezed == idKhoanThu
          ? _value.idKhoanThu
          : idKhoanThu // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_FinanceRequestParamsCopyWith<$Res>
    implements $FinanceRequestParamsCopyWith<$Res> {
  factory _$$_FinanceRequestParamsCopyWith(_$_FinanceRequestParams value,
          $Res Function(_$_FinanceRequestParams) then) =
      __$$_FinanceRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? semester,
      String? year,
      int? idKhoanThu,
      int? status,
      int? startindex,
      int? length});
}

/// @nodoc
class __$$_FinanceRequestParamsCopyWithImpl<$Res>
    extends _$FinanceRequestParamsCopyWithImpl<$Res, _$_FinanceRequestParams>
    implements _$$_FinanceRequestParamsCopyWith<$Res> {
  __$$_FinanceRequestParamsCopyWithImpl(_$_FinanceRequestParams _value,
      $Res Function(_$_FinanceRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semester = freezed,
    Object? year = freezed,
    Object? idKhoanThu = freezed,
    Object? status = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_FinanceRequestParams(
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      idKhoanThu: freezed == idKhoanThu
          ? _value.idKhoanThu
          : idKhoanThu // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$_FinanceRequestParams implements _FinanceRequestParams {
  _$_FinanceRequestParams(
      {this.semester,
      this.year,
      this.idKhoanThu,
      this.status,
      this.startindex = 1,
      this.length = 100});

  factory _$_FinanceRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$_FinanceRequestParamsFromJson(json);

  @override
  final int? semester;
  @override
  final String? year;
  @override
  final int? idKhoanThu;
  @override
  final int? status;
  @override
  @JsonKey()
  final int? startindex;
  @override
  @JsonKey()
  final int? length;

  @override
  String toString() {
    return 'FinanceRequestParams(semester: $semester, year: $year, idKhoanThu: $idKhoanThu, status: $status, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinanceRequestParams &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.idKhoanThu, idKhoanThu) ||
                other.idKhoanThu == idKhoanThu) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, semester, year, idKhoanThu, status, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinanceRequestParamsCopyWith<_$_FinanceRequestParams> get copyWith =>
      __$$_FinanceRequestParamsCopyWithImpl<_$_FinanceRequestParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinanceRequestParamsToJson(
      this,
    );
  }
}

abstract class _FinanceRequestParams implements FinanceRequestParams {
  factory _FinanceRequestParams(
      {final int? semester,
      final String? year,
      final int? idKhoanThu,
      final int? status,
      final int? startindex,
      final int? length}) = _$_FinanceRequestParams;

  factory _FinanceRequestParams.fromJson(Map<String, dynamic> json) =
      _$_FinanceRequestParams.fromJson;

  @override
  int? get semester;
  @override
  String? get year;
  @override
  int? get idKhoanThu;
  @override
  int? get status;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$_FinanceRequestParamsCopyWith<_$_FinanceRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}
