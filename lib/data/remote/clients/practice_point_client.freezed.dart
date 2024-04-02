// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_point_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PracticePointsClient {
  PracticePointRequestParams? get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PracticePointRequestParams? params) getAll,
    required TResult Function(PracticePointRequestParams? params) getChiTiet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PracticePointRequestParams? params)? getAll,
    TResult? Function(PracticePointRequestParams? params)? getChiTiet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PracticePointRequestParams? params)? getAll,
    TResult Function(PracticePointRequestParams? params)? getChiTiet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetChiTiet value) getChiTiet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetChiTiet value)? getChiTiet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetChiTiet value)? getChiTiet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PracticePointsClientCopyWith<PracticePointsClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticePointsClientCopyWith<$Res> {
  factory $PracticePointsClientCopyWith(PracticePointsClient value,
          $Res Function(PracticePointsClient) then) =
      _$PracticePointsClientCopyWithImpl<$Res, PracticePointsClient>;
  @useResult
  $Res call({PracticePointRequestParams? params});

  $PracticePointRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$PracticePointsClientCopyWithImpl<$Res,
        $Val extends PracticePointsClient>
    implements $PracticePointsClientCopyWith<$Res> {
  _$PracticePointsClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PracticePointRequestParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PracticePointRequestParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $PracticePointRequestParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res>
    implements $PracticePointsClientCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PracticePointRequestParams? params});

  @override
  $PracticePointRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$PracticePointsClientCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
      _$GetAllImpl _value, $Res Function(_$GetAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$GetAllImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PracticePointRequestParams?,
    ));
  }
}

/// @nodoc

class _$GetAllImpl extends _GetAll {
  _$GetAllImpl(this.params) : super._();

  @override
  final PracticePointRequestParams? params;

  @override
  String toString() {
    return 'PracticePointsClient.getAll(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      __$$GetAllImplCopyWithImpl<_$GetAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PracticePointRequestParams? params) getAll,
    required TResult Function(PracticePointRequestParams? params) getChiTiet,
  }) {
    return getAll(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PracticePointRequestParams? params)? getAll,
    TResult? Function(PracticePointRequestParams? params)? getChiTiet,
  }) {
    return getAll?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PracticePointRequestParams? params)? getAll,
    TResult Function(PracticePointRequestParams? params)? getChiTiet,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetChiTiet value) getChiTiet,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetChiTiet value)? getChiTiet,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetChiTiet value)? getChiTiet,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll extends PracticePointsClient {
  factory _GetAll(final PracticePointRequestParams? params) = _$GetAllImpl;
  _GetAll._() : super._();

  @override
  PracticePointRequestParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChiTietImplCopyWith<$Res>
    implements $PracticePointsClientCopyWith<$Res> {
  factory _$$GetChiTietImplCopyWith(
          _$GetChiTietImpl value, $Res Function(_$GetChiTietImpl) then) =
      __$$GetChiTietImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PracticePointRequestParams? params});

  @override
  $PracticePointRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$GetChiTietImplCopyWithImpl<$Res>
    extends _$PracticePointsClientCopyWithImpl<$Res, _$GetChiTietImpl>
    implements _$$GetChiTietImplCopyWith<$Res> {
  __$$GetChiTietImplCopyWithImpl(
      _$GetChiTietImpl _value, $Res Function(_$GetChiTietImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$GetChiTietImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PracticePointRequestParams?,
    ));
  }
}

/// @nodoc

class _$GetChiTietImpl extends _GetChiTiet {
  _$GetChiTietImpl(this.params) : super._();

  @override
  final PracticePointRequestParams? params;

  @override
  String toString() {
    return 'PracticePointsClient.getChiTiet(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChiTietImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChiTietImplCopyWith<_$GetChiTietImpl> get copyWith =>
      __$$GetChiTietImplCopyWithImpl<_$GetChiTietImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PracticePointRequestParams? params) getAll,
    required TResult Function(PracticePointRequestParams? params) getChiTiet,
  }) {
    return getChiTiet(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PracticePointRequestParams? params)? getAll,
    TResult? Function(PracticePointRequestParams? params)? getChiTiet,
  }) {
    return getChiTiet?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PracticePointRequestParams? params)? getAll,
    TResult Function(PracticePointRequestParams? params)? getChiTiet,
    required TResult orElse(),
  }) {
    if (getChiTiet != null) {
      return getChiTiet(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetChiTiet value) getChiTiet,
  }) {
    return getChiTiet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetChiTiet value)? getChiTiet,
  }) {
    return getChiTiet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetChiTiet value)? getChiTiet,
    required TResult orElse(),
  }) {
    if (getChiTiet != null) {
      return getChiTiet(this);
    }
    return orElse();
  }
}

abstract class _GetChiTiet extends PracticePointsClient {
  factory _GetChiTiet(final PracticePointRequestParams? params) =
      _$GetChiTietImpl;
  _GetChiTiet._() : super._();

  @override
  PracticePointRequestParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$GetChiTietImplCopyWith<_$GetChiTietImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
