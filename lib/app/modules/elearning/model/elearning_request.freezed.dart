// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elearning_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ELearningRequest _$ELearningRequestFromJson(Map<String, dynamic> json) {
  return _ELearningRequest.fromJson(json);
}

/// @nodoc
mixin _$ELearningRequest {
  DateTime? get nowdate => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ELearningRequestCopyWith<ELearningRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ELearningRequestCopyWith<$Res> {
  factory $ELearningRequestCopyWith(
          ELearningRequest value, $Res Function(ELearningRequest) then) =
      _$ELearningRequestCopyWithImpl<$Res, ELearningRequest>;
  @useResult
  $Res call({DateTime? nowdate, int? startindex, int? length, String? keyword});
}

/// @nodoc
class _$ELearningRequestCopyWithImpl<$Res, $Val extends ELearningRequest>
    implements $ELearningRequestCopyWith<$Res> {
  _$ELearningRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowdate = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_value.copyWith(
      nowdate: freezed == nowdate
          ? _value.nowdate
          : nowdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ELearningRequestImplCopyWith<$Res>
    implements $ELearningRequestCopyWith<$Res> {
  factory _$$ELearningRequestImplCopyWith(_$ELearningRequestImpl value,
          $Res Function(_$ELearningRequestImpl) then) =
      __$$ELearningRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? nowdate, int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$ELearningRequestImplCopyWithImpl<$Res>
    extends _$ELearningRequestCopyWithImpl<$Res, _$ELearningRequestImpl>
    implements _$$ELearningRequestImplCopyWith<$Res> {
  __$$ELearningRequestImplCopyWithImpl(_$ELearningRequestImpl _value,
      $Res Function(_$ELearningRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowdate = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$ELearningRequestImpl(
      nowdate: freezed == nowdate
          ? _value.nowdate
          : nowdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ELearningRequestImpl implements _ELearningRequest {
  const _$ELearningRequestImpl(
      {this.nowdate, this.startindex, this.length, this.keyword});

  factory _$ELearningRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ELearningRequestImplFromJson(json);

  @override
  final DateTime? nowdate;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;

  @override
  String toString() {
    return 'ELearningRequest(nowdate: $nowdate, startindex: $startindex, length: $length, keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ELearningRequestImpl &&
            (identical(other.nowdate, nowdate) || other.nowdate == nowdate) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nowdate, startindex, length, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ELearningRequestImplCopyWith<_$ELearningRequestImpl> get copyWith =>
      __$$ELearningRequestImplCopyWithImpl<_$ELearningRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ELearningRequestImplToJson(
      this,
    );
  }
}

abstract class _ELearningRequest implements ELearningRequest {
  const factory _ELearningRequest(
      {final DateTime? nowdate,
      final int? startindex,
      final int? length,
      final String? keyword}) = _$ELearningRequestImpl;

  factory _ELearningRequest.fromJson(Map<String, dynamic> json) =
      _$ELearningRequestImpl.fromJson;

  @override
  DateTime? get nowdate;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$ELearningRequestImplCopyWith<_$ELearningRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
