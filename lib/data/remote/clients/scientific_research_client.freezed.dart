// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scientific_research_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScientificResearchClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScientificResearchRequest? model)
        getScientificResearchList,
    required TResult Function(ItemScientificResearchRequest? model)
        getDetailItemScientificResearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScientificResearchRequest? model)?
        getScientificResearchList,
    TResult? Function(ItemScientificResearchRequest? model)?
        getDetailItemScientificResearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScientificResearchRequest? model)?
        getScientificResearchList,
    TResult Function(ItemScientificResearchRequest? model)?
        getDetailItemScientificResearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScientificResearchList value)
        getScientificResearchList,
    required TResult Function(_ItemScientificResearch value)
        getDetailItemScientificResearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScientificResearchList value)? getScientificResearchList,
    TResult? Function(_ItemScientificResearch value)?
        getDetailItemScientificResearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScientificResearchList value)? getScientificResearchList,
    TResult Function(_ItemScientificResearch value)?
        getDetailItemScientificResearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScientificResearchClientCopyWith<$Res> {
  factory $ScientificResearchClientCopyWith(ScientificResearchClient value,
          $Res Function(ScientificResearchClient) then) =
      _$ScientificResearchClientCopyWithImpl<$Res, ScientificResearchClient>;
}

/// @nodoc
class _$ScientificResearchClientCopyWithImpl<$Res,
        $Val extends ScientificResearchClient>
    implements $ScientificResearchClientCopyWith<$Res> {
  _$ScientificResearchClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScientificResearchListImplCopyWith<$Res> {
  factory _$$ScientificResearchListImplCopyWith(
          _$ScientificResearchListImpl value,
          $Res Function(_$ScientificResearchListImpl) then) =
      __$$ScientificResearchListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScientificResearchRequest? model});

  $ScientificResearchRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$ScientificResearchListImplCopyWithImpl<$Res>
    extends _$ScientificResearchClientCopyWithImpl<$Res,
        _$ScientificResearchListImpl>
    implements _$$ScientificResearchListImplCopyWith<$Res> {
  __$$ScientificResearchListImplCopyWithImpl(
      _$ScientificResearchListImpl _value,
      $Res Function(_$ScientificResearchListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$ScientificResearchListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ScientificResearchRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScientificResearchRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ScientificResearchRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ScientificResearchListImpl extends _ScientificResearchList {
  _$ScientificResearchListImpl(this.model) : super._();

  @override
  final ScientificResearchRequest? model;

  @override
  String toString() {
    return 'ScientificResearchClient.getScientificResearchList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScientificResearchListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScientificResearchListImplCopyWith<_$ScientificResearchListImpl>
      get copyWith => __$$ScientificResearchListImplCopyWithImpl<
          _$ScientificResearchListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScientificResearchRequest? model)
        getScientificResearchList,
    required TResult Function(ItemScientificResearchRequest? model)
        getDetailItemScientificResearch,
  }) {
    return getScientificResearchList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScientificResearchRequest? model)?
        getScientificResearchList,
    TResult? Function(ItemScientificResearchRequest? model)?
        getDetailItemScientificResearch,
  }) {
    return getScientificResearchList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScientificResearchRequest? model)?
        getScientificResearchList,
    TResult Function(ItemScientificResearchRequest? model)?
        getDetailItemScientificResearch,
    required TResult orElse(),
  }) {
    if (getScientificResearchList != null) {
      return getScientificResearchList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScientificResearchList value)
        getScientificResearchList,
    required TResult Function(_ItemScientificResearch value)
        getDetailItemScientificResearch,
  }) {
    return getScientificResearchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScientificResearchList value)? getScientificResearchList,
    TResult? Function(_ItemScientificResearch value)?
        getDetailItemScientificResearch,
  }) {
    return getScientificResearchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScientificResearchList value)? getScientificResearchList,
    TResult Function(_ItemScientificResearch value)?
        getDetailItemScientificResearch,
    required TResult orElse(),
  }) {
    if (getScientificResearchList != null) {
      return getScientificResearchList(this);
    }
    return orElse();
  }
}

abstract class _ScientificResearchList extends ScientificResearchClient {
  factory _ScientificResearchList(final ScientificResearchRequest? model) =
      _$ScientificResearchListImpl;
  _ScientificResearchList._() : super._();

  @override
  ScientificResearchRequest? get model;
  @JsonKey(ignore: true)
  _$$ScientificResearchListImplCopyWith<_$ScientificResearchListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemScientificResearchImplCopyWith<$Res> {
  factory _$$ItemScientificResearchImplCopyWith(
          _$ItemScientificResearchImpl value,
          $Res Function(_$ItemScientificResearchImpl) then) =
      __$$ItemScientificResearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemScientificResearchRequest? model});

  $ItemScientificResearchRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$ItemScientificResearchImplCopyWithImpl<$Res>
    extends _$ScientificResearchClientCopyWithImpl<$Res,
        _$ItemScientificResearchImpl>
    implements _$$ItemScientificResearchImplCopyWith<$Res> {
  __$$ItemScientificResearchImplCopyWithImpl(
      _$ItemScientificResearchImpl _value,
      $Res Function(_$ItemScientificResearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$ItemScientificResearchImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemScientificResearchRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemScientificResearchRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ItemScientificResearchRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ItemScientificResearchImpl extends _ItemScientificResearch {
  _$ItemScientificResearchImpl(this.model) : super._();

  @override
  final ItemScientificResearchRequest? model;

  @override
  String toString() {
    return 'ScientificResearchClient.getDetailItemScientificResearch(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemScientificResearchImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemScientificResearchImplCopyWith<_$ItemScientificResearchImpl>
      get copyWith => __$$ItemScientificResearchImplCopyWithImpl<
          _$ItemScientificResearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScientificResearchRequest? model)
        getScientificResearchList,
    required TResult Function(ItemScientificResearchRequest? model)
        getDetailItemScientificResearch,
  }) {
    return getDetailItemScientificResearch(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScientificResearchRequest? model)?
        getScientificResearchList,
    TResult? Function(ItemScientificResearchRequest? model)?
        getDetailItemScientificResearch,
  }) {
    return getDetailItemScientificResearch?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScientificResearchRequest? model)?
        getScientificResearchList,
    TResult Function(ItemScientificResearchRequest? model)?
        getDetailItemScientificResearch,
    required TResult orElse(),
  }) {
    if (getDetailItemScientificResearch != null) {
      return getDetailItemScientificResearch(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScientificResearchList value)
        getScientificResearchList,
    required TResult Function(_ItemScientificResearch value)
        getDetailItemScientificResearch,
  }) {
    return getDetailItemScientificResearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScientificResearchList value)? getScientificResearchList,
    TResult? Function(_ItemScientificResearch value)?
        getDetailItemScientificResearch,
  }) {
    return getDetailItemScientificResearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScientificResearchList value)? getScientificResearchList,
    TResult Function(_ItemScientificResearch value)?
        getDetailItemScientificResearch,
    required TResult orElse(),
  }) {
    if (getDetailItemScientificResearch != null) {
      return getDetailItemScientificResearch(this);
    }
    return orElse();
  }
}

abstract class _ItemScientificResearch extends ScientificResearchClient {
  factory _ItemScientificResearch(final ItemScientificResearchRequest? model) =
      _$ItemScientificResearchImpl;
  _ItemScientificResearch._() : super._();

  @override
  ItemScientificResearchRequest? get model;
  @JsonKey(ignore: true)
  _$$ItemScientificResearchImplCopyWith<_$ItemScientificResearchImpl>
      get copyWith => throw _privateConstructorUsedError;
}
