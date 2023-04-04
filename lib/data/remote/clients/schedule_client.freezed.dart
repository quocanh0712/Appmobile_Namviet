// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleTimeRequest? model) getScheduleTime,
    required TResult Function(ScheduleDailyRequest? model) getScheduleDaily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduleTimeRequest? model)? getScheduleTime,
    TResult? Function(ScheduleDailyRequest? model)? getScheduleDaily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleTimeRequest? model)? getScheduleTime,
    TResult Function(ScheduleDailyRequest? model)? getScheduleDaily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleTimeClient value) getScheduleTime,
    required TResult Function(_ScheduleDailyClient value) getScheduleDaily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleTimeClient value)? getScheduleTime,
    TResult? Function(_ScheduleDailyClient value)? getScheduleDaily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleTimeClient value)? getScheduleTime,
    TResult Function(_ScheduleDailyClient value)? getScheduleDaily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleClientCopyWith<$Res> {
  factory $ScheduleClientCopyWith(
          ScheduleClient value, $Res Function(ScheduleClient) then) =
      _$ScheduleClientCopyWithImpl<$Res, ScheduleClient>;
}

/// @nodoc
class _$ScheduleClientCopyWithImpl<$Res, $Val extends ScheduleClient>
    implements $ScheduleClientCopyWith<$Res> {
  _$ScheduleClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ScheduleTimeClientCopyWith<$Res> {
  factory _$$_ScheduleTimeClientCopyWith(_$_ScheduleTimeClient value,
          $Res Function(_$_ScheduleTimeClient) then) =
      __$$_ScheduleTimeClientCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleTimeRequest? model});

  $ScheduleTimeRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ScheduleTimeClientCopyWithImpl<$Res>
    extends _$ScheduleClientCopyWithImpl<$Res, _$_ScheduleTimeClient>
    implements _$$_ScheduleTimeClientCopyWith<$Res> {
  __$$_ScheduleTimeClientCopyWithImpl(
      _$_ScheduleTimeClient _value, $Res Function(_$_ScheduleTimeClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ScheduleTimeClient(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ScheduleTimeRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleTimeRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ScheduleTimeRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_ScheduleTimeClient extends _ScheduleTimeClient {
  _$_ScheduleTimeClient(this.model) : super._();

  @override
  final ScheduleTimeRequest? model;

  @override
  String toString() {
    return 'ScheduleClient.getScheduleTime(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleTimeClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleTimeClientCopyWith<_$_ScheduleTimeClient> get copyWith =>
      __$$_ScheduleTimeClientCopyWithImpl<_$_ScheduleTimeClient>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleTimeRequest? model) getScheduleTime,
    required TResult Function(ScheduleDailyRequest? model) getScheduleDaily,
  }) {
    return getScheduleTime(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduleTimeRequest? model)? getScheduleTime,
    TResult? Function(ScheduleDailyRequest? model)? getScheduleDaily,
  }) {
    return getScheduleTime?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleTimeRequest? model)? getScheduleTime,
    TResult Function(ScheduleDailyRequest? model)? getScheduleDaily,
    required TResult orElse(),
  }) {
    if (getScheduleTime != null) {
      return getScheduleTime(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleTimeClient value) getScheduleTime,
    required TResult Function(_ScheduleDailyClient value) getScheduleDaily,
  }) {
    return getScheduleTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleTimeClient value)? getScheduleTime,
    TResult? Function(_ScheduleDailyClient value)? getScheduleDaily,
  }) {
    return getScheduleTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleTimeClient value)? getScheduleTime,
    TResult Function(_ScheduleDailyClient value)? getScheduleDaily,
    required TResult orElse(),
  }) {
    if (getScheduleTime != null) {
      return getScheduleTime(this);
    }
    return orElse();
  }
}

abstract class _ScheduleTimeClient extends ScheduleClient {
  factory _ScheduleTimeClient(final ScheduleTimeRequest? model) =
      _$_ScheduleTimeClient;
  _ScheduleTimeClient._() : super._();

  ScheduleTimeRequest? get model;
  @JsonKey(ignore: true)
  _$$_ScheduleTimeClientCopyWith<_$_ScheduleTimeClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScheduleDailyClientCopyWith<$Res> {
  factory _$$_ScheduleDailyClientCopyWith(_$_ScheduleDailyClient value,
          $Res Function(_$_ScheduleDailyClient) then) =
      __$$_ScheduleDailyClientCopyWithImpl<$Res>;
  @useResult
  $Res call({ScheduleDailyRequest? model});

  $ScheduleDailyRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ScheduleDailyClientCopyWithImpl<$Res>
    extends _$ScheduleClientCopyWithImpl<$Res, _$_ScheduleDailyClient>
    implements _$$_ScheduleDailyClientCopyWith<$Res> {
  __$$_ScheduleDailyClientCopyWithImpl(_$_ScheduleDailyClient _value,
      $Res Function(_$_ScheduleDailyClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ScheduleDailyClient(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ScheduleDailyRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleDailyRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ScheduleDailyRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_ScheduleDailyClient extends _ScheduleDailyClient {
  _$_ScheduleDailyClient(this.model) : super._();

  @override
  final ScheduleDailyRequest? model;

  @override
  String toString() {
    return 'ScheduleClient.getScheduleDaily(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDailyClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDailyClientCopyWith<_$_ScheduleDailyClient> get copyWith =>
      __$$_ScheduleDailyClientCopyWithImpl<_$_ScheduleDailyClient>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleTimeRequest? model) getScheduleTime,
    required TResult Function(ScheduleDailyRequest? model) getScheduleDaily,
  }) {
    return getScheduleDaily(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScheduleTimeRequest? model)? getScheduleTime,
    TResult? Function(ScheduleDailyRequest? model)? getScheduleDaily,
  }) {
    return getScheduleDaily?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleTimeRequest? model)? getScheduleTime,
    TResult Function(ScheduleDailyRequest? model)? getScheduleDaily,
    required TResult orElse(),
  }) {
    if (getScheduleDaily != null) {
      return getScheduleDaily(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScheduleTimeClient value) getScheduleTime,
    required TResult Function(_ScheduleDailyClient value) getScheduleDaily,
  }) {
    return getScheduleDaily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScheduleTimeClient value)? getScheduleTime,
    TResult? Function(_ScheduleDailyClient value)? getScheduleDaily,
  }) {
    return getScheduleDaily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScheduleTimeClient value)? getScheduleTime,
    TResult Function(_ScheduleDailyClient value)? getScheduleDaily,
    required TResult orElse(),
  }) {
    if (getScheduleDaily != null) {
      return getScheduleDaily(this);
    }
    return orElse();
  }
}

abstract class _ScheduleDailyClient extends ScheduleClient {
  factory _ScheduleDailyClient(final ScheduleDailyRequest? model) =
      _$_ScheduleDailyClient;
  _ScheduleDailyClient._() : super._();

  ScheduleDailyRequest? get model;
  @JsonKey(ignore: true)
  _$$_ScheduleDailyClientCopyWith<_$_ScheduleDailyClient> get copyWith =>
      throw _privateConstructorUsedError;
}
