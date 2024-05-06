// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seminar_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SeminarClient {
  SeminarDetailRequest? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SeminarDetailRequest? model) getSeminarList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SeminarDetailRequest? model)? getSeminarList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SeminarDetailRequest? model)? getSeminarList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeminarClient value) getSeminarList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeminarClient value)? getSeminarList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeminarClient value)? getSeminarList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeminarClientCopyWith<SeminarClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeminarClientCopyWith<$Res> {
  factory $SeminarClientCopyWith(
          SeminarClient value, $Res Function(SeminarClient) then) =
      _$SeminarClientCopyWithImpl<$Res, SeminarClient>;
  @useResult
  $Res call({SeminarDetailRequest? model});

  $SeminarDetailRequestCopyWith<$Res>? get model;
}

/// @nodoc
class _$SeminarClientCopyWithImpl<$Res, $Val extends SeminarClient>
    implements $SeminarClientCopyWith<$Res> {
  _$SeminarClientCopyWithImpl(this._value, this._then);

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
              as SeminarDetailRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeminarDetailRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $SeminarDetailRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeminarClientImplCopyWith<$Res>
    implements $SeminarClientCopyWith<$Res> {
  factory _$$SeminarClientImplCopyWith(
          _$SeminarClientImpl value, $Res Function(_$SeminarClientImpl) then) =
      __$$SeminarClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeminarDetailRequest? model});

  @override
  $SeminarDetailRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$SeminarClientImplCopyWithImpl<$Res>
    extends _$SeminarClientCopyWithImpl<$Res, _$SeminarClientImpl>
    implements _$$SeminarClientImplCopyWith<$Res> {
  __$$SeminarClientImplCopyWithImpl(
      _$SeminarClientImpl _value, $Res Function(_$SeminarClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$SeminarClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SeminarDetailRequest?,
    ));
  }
}

/// @nodoc

class _$SeminarClientImpl extends _SeminarClient {
  _$SeminarClientImpl(this.model) : super._();

  @override
  final SeminarDetailRequest? model;

  @override
  String toString() {
    return 'SeminarClient.getSeminarList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeminarClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeminarClientImplCopyWith<_$SeminarClientImpl> get copyWith =>
      __$$SeminarClientImplCopyWithImpl<_$SeminarClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SeminarDetailRequest? model) getSeminarList,
  }) {
    return getSeminarList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SeminarDetailRequest? model)? getSeminarList,
  }) {
    return getSeminarList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SeminarDetailRequest? model)? getSeminarList,
    required TResult orElse(),
  }) {
    if (getSeminarList != null) {
      return getSeminarList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeminarClient value) getSeminarList,
  }) {
    return getSeminarList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeminarClient value)? getSeminarList,
  }) {
    return getSeminarList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeminarClient value)? getSeminarList,
    required TResult orElse(),
  }) {
    if (getSeminarList != null) {
      return getSeminarList(this);
    }
    return orElse();
  }
}

abstract class _SeminarClient extends SeminarClient {
  factory _SeminarClient(final SeminarDetailRequest? model) =
      _$SeminarClientImpl;
  _SeminarClient._() : super._();

  @override
  SeminarDetailRequest? get model;
  @override
  @JsonKey(ignore: true)
  _$$SeminarClientImplCopyWith<_$SeminarClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
