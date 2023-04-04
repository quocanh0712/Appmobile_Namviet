// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'elearning_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ELearningClient {
  ELearningRequest? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ELearningRequest? model) getELearningList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ELearningRequest? model)? getELearningList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ELearningRequest? model)? getELearningList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ELearningList value) getELearningList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ELearningList value)? getELearningList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ELearningList value)? getELearningList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ELearningClientCopyWith<ELearningClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ELearningClientCopyWith<$Res> {
  factory $ELearningClientCopyWith(
          ELearningClient value, $Res Function(ELearningClient) then) =
      _$ELearningClientCopyWithImpl<$Res, ELearningClient>;
  @useResult
  $Res call({ELearningRequest? model});

  $ELearningRequestCopyWith<$Res>? get model;
}

/// @nodoc
class _$ELearningClientCopyWithImpl<$Res, $Val extends ELearningClient>
    implements $ELearningClientCopyWith<$Res> {
  _$ELearningClientCopyWithImpl(this._value, this._then);

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
              as ELearningRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ELearningRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ELearningRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ELearningListCopyWith<$Res>
    implements $ELearningClientCopyWith<$Res> {
  factory _$$_ELearningListCopyWith(
          _$_ELearningList value, $Res Function(_$_ELearningList) then) =
      __$$_ELearningListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ELearningRequest? model});

  @override
  $ELearningRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ELearningListCopyWithImpl<$Res>
    extends _$ELearningClientCopyWithImpl<$Res, _$_ELearningList>
    implements _$$_ELearningListCopyWith<$Res> {
  __$$_ELearningListCopyWithImpl(
      _$_ELearningList _value, $Res Function(_$_ELearningList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ELearningList(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ELearningRequest?,
    ));
  }
}

/// @nodoc

class _$_ELearningList extends _ELearningList {
  _$_ELearningList(this.model) : super._();

  @override
  final ELearningRequest? model;

  @override
  String toString() {
    return 'ELearningClient.getELearningList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ELearningList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ELearningListCopyWith<_$_ELearningList> get copyWith =>
      __$$_ELearningListCopyWithImpl<_$_ELearningList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ELearningRequest? model) getELearningList,
  }) {
    return getELearningList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ELearningRequest? model)? getELearningList,
  }) {
    return getELearningList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ELearningRequest? model)? getELearningList,
    required TResult orElse(),
  }) {
    if (getELearningList != null) {
      return getELearningList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ELearningList value) getELearningList,
  }) {
    return getELearningList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ELearningList value)? getELearningList,
  }) {
    return getELearningList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ELearningList value)? getELearningList,
    required TResult orElse(),
  }) {
    if (getELearningList != null) {
      return getELearningList(this);
    }
    return orElse();
  }
}

abstract class _ELearningList extends ELearningClient {
  factory _ELearningList(final ELearningRequest? model) = _$_ELearningList;
  _ELearningList._() : super._();

  @override
  ELearningRequest? get model;
  @override
  @JsonKey(ignore: true)
  _$$_ELearningListCopyWith<_$_ELearningList> get copyWith =>
      throw _privateConstructorUsedError;
}
