// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveyItemResponse _$SurveyItemResponseFromJson(Map<String, dynamic> json) {
  return _SurveyItemResponse.fromJson(json);
}

/// @nodoc
mixin _$SurveyItemResponse {
  String? get criteria => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyItemResponseCopyWith<SurveyItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyItemResponseCopyWith<$Res> {
  factory $SurveyItemResponseCopyWith(
          SurveyItemResponse value, $Res Function(SurveyItemResponse) then) =
      _$SurveyItemResponseCopyWithImpl<$Res, SurveyItemResponse>;
  @useResult
  $Res call({String? criteria, String? result, int? count, int? total});
}

/// @nodoc
class _$SurveyItemResponseCopyWithImpl<$Res, $Val extends SurveyItemResponse>
    implements $SurveyItemResponseCopyWith<$Res> {
  _$SurveyItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? criteria = freezed,
    Object? result = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      criteria: freezed == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyItemResponseImplCopyWith<$Res>
    implements $SurveyItemResponseCopyWith<$Res> {
  factory _$$SurveyItemResponseImplCopyWith(_$SurveyItemResponseImpl value,
          $Res Function(_$SurveyItemResponseImpl) then) =
      __$$SurveyItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? criteria, String? result, int? count, int? total});
}

/// @nodoc
class __$$SurveyItemResponseImplCopyWithImpl<$Res>
    extends _$SurveyItemResponseCopyWithImpl<$Res, _$SurveyItemResponseImpl>
    implements _$$SurveyItemResponseImplCopyWith<$Res> {
  __$$SurveyItemResponseImplCopyWithImpl(_$SurveyItemResponseImpl _value,
      $Res Function(_$SurveyItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? criteria = freezed,
    Object? result = freezed,
    Object? count = freezed,
    Object? total = freezed,
  }) {
    return _then(_$SurveyItemResponseImpl(
      criteria: freezed == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyItemResponseImpl implements _SurveyItemResponse {
  const _$SurveyItemResponseImpl(
      {this.criteria, this.result, this.count, this.total});

  factory _$SurveyItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyItemResponseImplFromJson(json);

  @override
  final String? criteria;
  @override
  final String? result;
  @override
  final int? count;
  @override
  final int? total;

  @override
  String toString() {
    return 'SurveyItemResponse(criteria: $criteria, result: $result, count: $count, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyItemResponseImpl &&
            (identical(other.criteria, criteria) ||
                other.criteria == criteria) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, criteria, result, count, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyItemResponseImplCopyWith<_$SurveyItemResponseImpl> get copyWith =>
      __$$SurveyItemResponseImplCopyWithImpl<_$SurveyItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyItemResponseImplToJson(
      this,
    );
  }
}

abstract class _SurveyItemResponse implements SurveyItemResponse {
  const factory _SurveyItemResponse(
      {final String? criteria,
      final String? result,
      final int? count,
      final int? total}) = _$SurveyItemResponseImpl;

  factory _SurveyItemResponse.fromJson(Map<String, dynamic> json) =
      _$SurveyItemResponseImpl.fromJson;

  @override
  String? get criteria;
  @override
  String? get result;
  @override
  int? get count;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$SurveyItemResponseImplCopyWith<_$SurveyItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
