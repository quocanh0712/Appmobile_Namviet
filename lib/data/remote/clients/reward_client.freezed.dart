// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardClient {
  RewardDisciplineRequest? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RewardDisciplineRequest? model) getRewardList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RewardDisciplineRequest? model)? getRewardList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RewardDisciplineRequest? model)? getRewardList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardClient value) getRewardList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RewardClient value)? getRewardList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardClient value)? getRewardList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardClientCopyWith<RewardClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardClientCopyWith<$Res> {
  factory $RewardClientCopyWith(
          RewardClient value, $Res Function(RewardClient) then) =
      _$RewardClientCopyWithImpl<$Res, RewardClient>;
  @useResult
  $Res call({RewardDisciplineRequest? model});

  $RewardDisciplineRequestCopyWith<$Res>? get model;
}

/// @nodoc
class _$RewardClientCopyWithImpl<$Res, $Val extends RewardClient>
    implements $RewardClientCopyWith<$Res> {
  _$RewardClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RewardDisciplineRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardDisciplineRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $RewardDisciplineRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RewardClientCopyWith<$Res>
    implements $RewardClientCopyWith<$Res> {
  factory _$$_RewardClientCopyWith(
          _$_RewardClient value, $Res Function(_$_RewardClient) then) =
      __$$_RewardClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardDisciplineRequest? model});

  @override
  $RewardDisciplineRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_RewardClientCopyWithImpl<$Res>
    extends _$RewardClientCopyWithImpl<$Res, _$_RewardClient>
    implements _$$_RewardClientCopyWith<$Res> {
  __$$_RewardClientCopyWithImpl(
      _$_RewardClient _value, $Res Function(_$_RewardClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_RewardClient(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RewardDisciplineRequest?,
    ));
  }
}

/// @nodoc

class _$_RewardClient extends _RewardClient {
  _$_RewardClient(this.model) : super._();

  @override
  final RewardDisciplineRequest? model;

  @override
  String toString() {
    return 'RewardClient.getRewardList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardClientCopyWith<_$_RewardClient> get copyWith =>
      __$$_RewardClientCopyWithImpl<_$_RewardClient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RewardDisciplineRequest? model) getRewardList,
  }) {
    return getRewardList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RewardDisciplineRequest? model)? getRewardList,
  }) {
    return getRewardList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RewardDisciplineRequest? model)? getRewardList,
    required TResult orElse(),
  }) {
    if (getRewardList != null) {
      return getRewardList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RewardClient value) getRewardList,
  }) {
    return getRewardList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RewardClient value)? getRewardList,
  }) {
    return getRewardList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RewardClient value)? getRewardList,
    required TResult orElse(),
  }) {
    if (getRewardList != null) {
      return getRewardList(this);
    }
    return orElse();
  }
}

abstract class _RewardClient extends RewardClient {
  factory _RewardClient(final RewardDisciplineRequest? model) = _$_RewardClient;
  _RewardClient._() : super._();

  @override
  RewardDisciplineRequest? get model;
  @override
  @JsonKey(ignore: true)
  _$$_RewardClientCopyWith<_$_RewardClient> get copyWith =>
      throw _privateConstructorUsedError;
}
