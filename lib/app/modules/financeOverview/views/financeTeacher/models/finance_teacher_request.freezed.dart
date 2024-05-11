// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_teacher_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinanceTeacherRequest _$FinanceTeacherRequestFromJson(
    Map<String, dynamic> json) {
  return _FinanceTeacherRequest.fromJson(json);
}

/// @nodoc
mixin _$FinanceTeacherRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinanceTeacherRequestCopyWith<FinanceTeacherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceTeacherRequestCopyWith<$Res> {
  factory $FinanceTeacherRequestCopyWith(FinanceTeacherRequest value,
          $Res Function(FinanceTeacherRequest) then) =
      _$FinanceTeacherRequestCopyWithImpl<$Res, FinanceTeacherRequest>;
  @useResult
  $Res call(
      {String? iduser, int? startindex, int? length, String? year, int? month});
}

/// @nodoc
class _$FinanceTeacherRequestCopyWithImpl<$Res,
        $Val extends FinanceTeacherRequest>
    implements $FinanceTeacherRequestCopyWith<$Res> {
  _$FinanceTeacherRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_value.copyWith(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinanceTeacherRequestImplCopyWith<$Res>
    implements $FinanceTeacherRequestCopyWith<$Res> {
  factory _$$FinanceTeacherRequestImplCopyWith(
          _$FinanceTeacherRequestImpl value,
          $Res Function(_$FinanceTeacherRequestImpl) then) =
      __$$FinanceTeacherRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iduser, int? startindex, int? length, String? year, int? month});
}

/// @nodoc
class __$$FinanceTeacherRequestImplCopyWithImpl<$Res>
    extends _$FinanceTeacherRequestCopyWithImpl<$Res,
        _$FinanceTeacherRequestImpl>
    implements _$$FinanceTeacherRequestImplCopyWith<$Res> {
  __$$FinanceTeacherRequestImplCopyWithImpl(_$FinanceTeacherRequestImpl _value,
      $Res Function(_$FinanceTeacherRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_$FinanceTeacherRequestImpl(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinanceTeacherRequestImpl implements _FinanceTeacherRequest {
  _$FinanceTeacherRequestImpl(
      {this.iduser, this.startindex, this.length, this.year, this.month});

  factory _$FinanceTeacherRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceTeacherRequestImplFromJson(json);

  @override
  final String? iduser;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? year;
  @override
  final int? month;

  @override
  String toString() {
    return 'FinanceTeacherRequest(iduser: $iduser, startindex: $startindex, length: $length, year: $year, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceTeacherRequestImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iduser, startindex, length, year, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceTeacherRequestImplCopyWith<_$FinanceTeacherRequestImpl>
      get copyWith => __$$FinanceTeacherRequestImplCopyWithImpl<
          _$FinanceTeacherRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceTeacherRequestImplToJson(
      this,
    );
  }
}

abstract class _FinanceTeacherRequest implements FinanceTeacherRequest {
  factory _FinanceTeacherRequest(
      {final String? iduser,
      final int? startindex,
      final int? length,
      final String? year,
      final int? month}) = _$FinanceTeacherRequestImpl;

  factory _FinanceTeacherRequest.fromJson(Map<String, dynamic> json) =
      _$FinanceTeacherRequestImpl.fromJson;

  @override
  String? get iduser;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get year;
  @override
  int? get month;
  @override
  @JsonKey(ignore: true)
  _$$FinanceTeacherRequestImplCopyWith<_$FinanceTeacherRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
