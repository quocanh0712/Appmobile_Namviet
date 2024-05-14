// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeRequest _$HomeRequestFromJson(Map<String, dynamic> json) {
  return _HomeRequest.fromJson(json);
}

/// @nodoc
mixin _$HomeRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  int? get weeksOfYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeRequestCopyWith<HomeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRequestCopyWith<$Res> {
  factory $HomeRequestCopyWith(
          HomeRequest value, $Res Function(HomeRequest) then) =
      _$HomeRequestCopyWithImpl<$Res, HomeRequest>;
  @useResult
  $Res call(
      {String? iduser,
      int? startindex,
      int? length,
      String? year,
      int? weeksOfYear});
}

/// @nodoc
class _$HomeRequestCopyWithImpl<$Res, $Val extends HomeRequest>
    implements $HomeRequestCopyWith<$Res> {
  _$HomeRequestCopyWithImpl(this._value, this._then);

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
    Object? weeksOfYear = freezed,
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
      weeksOfYear: freezed == weeksOfYear
          ? _value.weeksOfYear
          : weeksOfYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeRequestImplCopyWith<$Res>
    implements $HomeRequestCopyWith<$Res> {
  factory _$$HomeRequestImplCopyWith(
          _$HomeRequestImpl value, $Res Function(_$HomeRequestImpl) then) =
      __$$HomeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iduser,
      int? startindex,
      int? length,
      String? year,
      int? weeksOfYear});
}

/// @nodoc
class __$$HomeRequestImplCopyWithImpl<$Res>
    extends _$HomeRequestCopyWithImpl<$Res, _$HomeRequestImpl>
    implements _$$HomeRequestImplCopyWith<$Res> {
  __$$HomeRequestImplCopyWithImpl(
      _$HomeRequestImpl _value, $Res Function(_$HomeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? year = freezed,
    Object? weeksOfYear = freezed,
  }) {
    return _then(_$HomeRequestImpl(
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
      weeksOfYear: freezed == weeksOfYear
          ? _value.weeksOfYear
          : weeksOfYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeRequestImpl implements _HomeRequest {
  _$HomeRequestImpl(
      {this.iduser, this.startindex, this.length, this.year, this.weeksOfYear});

  factory _$HomeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeRequestImplFromJson(json);

  @override
  final String? iduser;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? year;
  @override
  final int? weeksOfYear;

  @override
  String toString() {
    return 'HomeRequest(iduser: $iduser, startindex: $startindex, length: $length, year: $year, weeksOfYear: $weeksOfYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRequestImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.weeksOfYear, weeksOfYear) ||
                other.weeksOfYear == weeksOfYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iduser, startindex, length, year, weeksOfYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRequestImplCopyWith<_$HomeRequestImpl> get copyWith =>
      __$$HomeRequestImplCopyWithImpl<_$HomeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeRequestImplToJson(
      this,
    );
  }
}

abstract class _HomeRequest implements HomeRequest {
  factory _HomeRequest(
      {final String? iduser,
      final int? startindex,
      final int? length,
      final String? year,
      final int? weeksOfYear}) = _$HomeRequestImpl;

  factory _HomeRequest.fromJson(Map<String, dynamic> json) =
      _$HomeRequestImpl.fromJson;

  @override
  String? get iduser;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get year;
  @override
  int? get weeksOfYear;
  @override
  @JsonKey(ignore: true)
  _$$HomeRequestImplCopyWith<_$HomeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
