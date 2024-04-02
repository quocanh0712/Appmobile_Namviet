// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discipline_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DisciplineClient {
  RewardDisciplineRequest? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RewardDisciplineRequest? model) getDisciplineList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RewardDisciplineRequest? model)? getDisciplineList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RewardDisciplineRequest? model)? getDisciplineList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisciplineClient value) getDisciplineList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisciplineClient value)? getDisciplineList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisciplineClient value)? getDisciplineList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisciplineClientCopyWith<DisciplineClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisciplineClientCopyWith<$Res> {
  factory $DisciplineClientCopyWith(
          DisciplineClient value, $Res Function(DisciplineClient) then) =
      _$DisciplineClientCopyWithImpl<$Res, DisciplineClient>;
  @useResult
  $Res call({RewardDisciplineRequest? model});

  $RewardDisciplineRequestCopyWith<$Res>? get model;
}

/// @nodoc
class _$DisciplineClientCopyWithImpl<$Res, $Val extends DisciplineClient>
    implements $DisciplineClientCopyWith<$Res> {
  _$DisciplineClientCopyWithImpl(this._value, this._then);

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
abstract class _$$DisciplineClientImplCopyWith<$Res>
    implements $DisciplineClientCopyWith<$Res> {
  factory _$$DisciplineClientImplCopyWith(_$DisciplineClientImpl value,
          $Res Function(_$DisciplineClientImpl) then) =
      __$$DisciplineClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardDisciplineRequest? model});

  @override
  $RewardDisciplineRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DisciplineClientImplCopyWithImpl<$Res>
    extends _$DisciplineClientCopyWithImpl<$Res, _$DisciplineClientImpl>
    implements _$$DisciplineClientImplCopyWith<$Res> {
  __$$DisciplineClientImplCopyWithImpl(_$DisciplineClientImpl _value,
      $Res Function(_$DisciplineClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DisciplineClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RewardDisciplineRequest?,
    ));
  }
}

/// @nodoc

class _$DisciplineClientImpl extends _DisciplineClient {
  _$DisciplineClientImpl(this.model) : super._();

  @override
  final RewardDisciplineRequest? model;

  @override
  String toString() {
    return 'DisciplineClient.getDisciplineList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisciplineClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisciplineClientImplCopyWith<_$DisciplineClientImpl> get copyWith =>
      __$$DisciplineClientImplCopyWithImpl<_$DisciplineClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RewardDisciplineRequest? model) getDisciplineList,
  }) {
    return getDisciplineList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RewardDisciplineRequest? model)? getDisciplineList,
  }) {
    return getDisciplineList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RewardDisciplineRequest? model)? getDisciplineList,
    required TResult orElse(),
  }) {
    if (getDisciplineList != null) {
      return getDisciplineList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisciplineClient value) getDisciplineList,
  }) {
    return getDisciplineList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisciplineClient value)? getDisciplineList,
  }) {
    return getDisciplineList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisciplineClient value)? getDisciplineList,
    required TResult orElse(),
  }) {
    if (getDisciplineList != null) {
      return getDisciplineList(this);
    }
    return orElse();
  }
}

abstract class _DisciplineClient extends DisciplineClient {
  factory _DisciplineClient(final RewardDisciplineRequest? model) =
      _$DisciplineClientImpl;
  _DisciplineClient._() : super._();

  @override
  RewardDisciplineRequest? get model;
  @override
  @JsonKey(ignore: true)
  _$$DisciplineClientImplCopyWith<_$DisciplineClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
