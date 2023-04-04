// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_schedule_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestScheduleClient {
  TestScheduleRequestParams? get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestScheduleRequestParams? params)
        loadTestSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestScheduleRequestParams? params)? loadTestSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestScheduleRequestParams? params)? loadTestSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTestSchedule value) loadTestSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTestSchedule value)? loadTestSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTestSchedule value)? loadTestSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestScheduleClientCopyWith<TestScheduleClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestScheduleClientCopyWith<$Res> {
  factory $TestScheduleClientCopyWith(
          TestScheduleClient value, $Res Function(TestScheduleClient) then) =
      _$TestScheduleClientCopyWithImpl<$Res, TestScheduleClient>;
  @useResult
  $Res call({TestScheduleRequestParams? params});

  $TestScheduleRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$TestScheduleClientCopyWithImpl<$Res, $Val extends TestScheduleClient>
    implements $TestScheduleClientCopyWith<$Res> {
  _$TestScheduleClientCopyWithImpl(this._value, this._then);

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
              as TestScheduleRequestParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TestScheduleRequestParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $TestScheduleRequestParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoadTestScheduleCopyWith<$Res>
    implements $TestScheduleClientCopyWith<$Res> {
  factory _$$_LoadTestScheduleCopyWith(
          _$_LoadTestSchedule value, $Res Function(_$_LoadTestSchedule) then) =
      __$$_LoadTestScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestScheduleRequestParams? params});

  @override
  $TestScheduleRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_LoadTestScheduleCopyWithImpl<$Res>
    extends _$TestScheduleClientCopyWithImpl<$Res, _$_LoadTestSchedule>
    implements _$$_LoadTestScheduleCopyWith<$Res> {
  __$$_LoadTestScheduleCopyWithImpl(
      _$_LoadTestSchedule _value, $Res Function(_$_LoadTestSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$_LoadTestSchedule(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TestScheduleRequestParams?,
    ));
  }
}

/// @nodoc

class _$_LoadTestSchedule extends _LoadTestSchedule {
  _$_LoadTestSchedule({this.params}) : super._();

  @override
  final TestScheduleRequestParams? params;

  @override
  String toString() {
    return 'TestScheduleClient.loadTestSchedule(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadTestSchedule &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadTestScheduleCopyWith<_$_LoadTestSchedule> get copyWith =>
      __$$_LoadTestScheduleCopyWithImpl<_$_LoadTestSchedule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestScheduleRequestParams? params)
        loadTestSchedule,
  }) {
    return loadTestSchedule(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestScheduleRequestParams? params)? loadTestSchedule,
  }) {
    return loadTestSchedule?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestScheduleRequestParams? params)? loadTestSchedule,
    required TResult orElse(),
  }) {
    if (loadTestSchedule != null) {
      return loadTestSchedule(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTestSchedule value) loadTestSchedule,
  }) {
    return loadTestSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTestSchedule value)? loadTestSchedule,
  }) {
    return loadTestSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTestSchedule value)? loadTestSchedule,
    required TResult orElse(),
  }) {
    if (loadTestSchedule != null) {
      return loadTestSchedule(this);
    }
    return orElse();
  }
}

abstract class _LoadTestSchedule extends TestScheduleClient {
  factory _LoadTestSchedule({final TestScheduleRequestParams? params}) =
      _$_LoadTestSchedule;
  _LoadTestSchedule._() : super._();

  @override
  TestScheduleRequestParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_LoadTestScheduleCopyWith<_$_LoadTestSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
