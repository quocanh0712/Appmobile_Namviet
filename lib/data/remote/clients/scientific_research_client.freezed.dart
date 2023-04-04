// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scientific_research_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScientificResearchClient {
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
abstract class _$$_ScientificResearchListCopyWith<$Res> {
  factory _$$_ScientificResearchListCopyWith(_$_ScientificResearchList value,
          $Res Function(_$_ScientificResearchList) then) =
      __$$_ScientificResearchListCopyWithImpl<$Res>;
  @useResult
  $Res call({ScientificResearchRequest? model});

  $ScientificResearchRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ScientificResearchListCopyWithImpl<$Res>
    extends _$ScientificResearchClientCopyWithImpl<$Res,
        _$_ScientificResearchList>
    implements _$$_ScientificResearchListCopyWith<$Res> {
  __$$_ScientificResearchListCopyWithImpl(_$_ScientificResearchList _value,
      $Res Function(_$_ScientificResearchList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ScientificResearchList(
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

class _$_ScientificResearchList extends _ScientificResearchList {
  _$_ScientificResearchList(this.model) : super._();

  @override
  final ScientificResearchRequest? model;

  @override
  String toString() {
    return 'ScientificResearchClient.getScientificResearchList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScientificResearchList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScientificResearchListCopyWith<_$_ScientificResearchList> get copyWith =>
      __$$_ScientificResearchListCopyWithImpl<_$_ScientificResearchList>(
          this, _$identity);

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
      _$_ScientificResearchList;
  _ScientificResearchList._() : super._();

  ScientificResearchRequest? get model;
  @JsonKey(ignore: true)
  _$$_ScientificResearchListCopyWith<_$_ScientificResearchList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemScientificResearchCopyWith<$Res> {
  factory _$$_ItemScientificResearchCopyWith(_$_ItemScientificResearch value,
          $Res Function(_$_ItemScientificResearch) then) =
      __$$_ItemScientificResearchCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemScientificResearchRequest? model});

  $ItemScientificResearchRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ItemScientificResearchCopyWithImpl<$Res>
    extends _$ScientificResearchClientCopyWithImpl<$Res,
        _$_ItemScientificResearch>
    implements _$$_ItemScientificResearchCopyWith<$Res> {
  __$$_ItemScientificResearchCopyWithImpl(_$_ItemScientificResearch _value,
      $Res Function(_$_ItemScientificResearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ItemScientificResearch(
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

class _$_ItemScientificResearch extends _ItemScientificResearch {
  _$_ItemScientificResearch(this.model) : super._();

  @override
  final ItemScientificResearchRequest? model;

  @override
  String toString() {
    return 'ScientificResearchClient.getDetailItemScientificResearch(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemScientificResearch &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemScientificResearchCopyWith<_$_ItemScientificResearch> get copyWith =>
      __$$_ItemScientificResearchCopyWithImpl<_$_ItemScientificResearch>(
          this, _$identity);

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
      _$_ItemScientificResearch;
  _ItemScientificResearch._() : super._();

  ItemScientificResearchRequest? get model;
  @JsonKey(ignore: true)
  _$$_ItemScientificResearchCopyWith<_$_ItemScientificResearch> get copyWith =>
      throw _privateConstructorUsedError;
}
