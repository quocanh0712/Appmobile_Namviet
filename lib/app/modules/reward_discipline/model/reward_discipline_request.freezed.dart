// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_discipline_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RewardDisciplineRequest _$RewardDisciplineRequestFromJson(
    Map<String, dynamic> json) {
  return _RewardDisciplineRequest.fromJson(json);
}

/// @nodoc
mixin _$RewardDisciplineRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardDisciplineRequestCopyWith<RewardDisciplineRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardDisciplineRequestCopyWith<$Res> {
  factory $RewardDisciplineRequestCopyWith(RewardDisciplineRequest value,
          $Res Function(RewardDisciplineRequest) then) =
      _$RewardDisciplineRequestCopyWithImpl<$Res, RewardDisciplineRequest>;
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class _$RewardDisciplineRequestCopyWithImpl<$Res,
        $Val extends RewardDisciplineRequest>
    implements $RewardDisciplineRequestCopyWith<$Res> {
  _$RewardDisciplineRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$RewardDisciplineRequestImplCopyWith<$Res>
    implements $RewardDisciplineRequestCopyWith<$Res> {
  factory _$$RewardDisciplineRequestImplCopyWith(
          _$RewardDisciplineRequestImpl value,
          $Res Function(_$RewardDisciplineRequestImpl) then) =
      __$$RewardDisciplineRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$RewardDisciplineRequestImplCopyWithImpl<$Res>
    extends _$RewardDisciplineRequestCopyWithImpl<$Res,
        _$RewardDisciplineRequestImpl>
    implements _$$RewardDisciplineRequestImplCopyWith<$Res> {
  __$$RewardDisciplineRequestImplCopyWithImpl(
      _$RewardDisciplineRequestImpl _value,
      $Res Function(_$RewardDisciplineRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$RewardDisciplineRequestImpl(
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
class _$RewardDisciplineRequestImpl implements _RewardDisciplineRequest {
  const _$RewardDisciplineRequestImpl({this.startindex, this.length});

  factory _$RewardDisciplineRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardDisciplineRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'RewardDisciplineRequest(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardDisciplineRequestImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardDisciplineRequestImplCopyWith<_$RewardDisciplineRequestImpl>
      get copyWith => __$$RewardDisciplineRequestImplCopyWithImpl<
          _$RewardDisciplineRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardDisciplineRequestImplToJson(
      this,
    );
  }
}

abstract class _RewardDisciplineRequest implements RewardDisciplineRequest {
  const factory _RewardDisciplineRequest(
      {final int? startindex,
      final int? length}) = _$RewardDisciplineRequestImpl;

  factory _RewardDisciplineRequest.fromJson(Map<String, dynamic> json) =
      _$RewardDisciplineRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$RewardDisciplineRequestImplCopyWith<_$RewardDisciplineRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
