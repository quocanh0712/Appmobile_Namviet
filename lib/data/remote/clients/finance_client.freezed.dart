// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinanceClient {
  Object? get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinanceRequestParams? params) getAll,
    required TResult Function(FinanceRequestParams? params) getAllBills,
    required TResult Function(FinanceTeacherRequest? params) getSalary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinanceRequestParams? params)? getAll,
    TResult? Function(FinanceRequestParams? params)? getAllBills,
    TResult? Function(FinanceTeacherRequest? params)? getSalary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinanceRequestParams? params)? getAll,
    TResult Function(FinanceRequestParams? params)? getAllBills,
    TResult Function(FinanceTeacherRequest? params)? getSalary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetAllBills value) getAllBills,
    required TResult Function(_GetSalary value) getSalary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetAllBills value)? getAllBills,
    TResult? Function(_GetSalary value)? getSalary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetAllBills value)? getAllBills,
    TResult Function(_GetSalary value)? getSalary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceClientCopyWith<$Res> {
  factory $FinanceClientCopyWith(
          FinanceClient value, $Res Function(FinanceClient) then) =
      _$FinanceClientCopyWithImpl<$Res, FinanceClient>;
}

/// @nodoc
class _$FinanceClientCopyWithImpl<$Res, $Val extends FinanceClient>
    implements $FinanceClientCopyWith<$Res> {
  _$FinanceClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FinanceRequestParams? params});

  $FinanceRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$FinanceClientCopyWithImpl<$Res, _$GetAllImpl>
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
              as FinanceRequestParams?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FinanceRequestParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $FinanceRequestParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetAllImpl extends _GetAll {
  _$GetAllImpl(this.params) : super._();

  @override
  final FinanceRequestParams? params;

  @override
  String toString() {
    return 'FinanceClient.getAll(params: $params)';
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
    required TResult Function(FinanceRequestParams? params) getAll,
    required TResult Function(FinanceRequestParams? params) getAllBills,
    required TResult Function(FinanceTeacherRequest? params) getSalary,
  }) {
    return getAll(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinanceRequestParams? params)? getAll,
    TResult? Function(FinanceRequestParams? params)? getAllBills,
    TResult? Function(FinanceTeacherRequest? params)? getSalary,
  }) {
    return getAll?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinanceRequestParams? params)? getAll,
    TResult Function(FinanceRequestParams? params)? getAllBills,
    TResult Function(FinanceTeacherRequest? params)? getSalary,
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
    required TResult Function(_GetAllBills value) getAllBills,
    required TResult Function(_GetSalary value) getSalary,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetAllBills value)? getAllBills,
    TResult? Function(_GetSalary value)? getSalary,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetAllBills value)? getAllBills,
    TResult Function(_GetSalary value)? getSalary,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll extends FinanceClient {
  factory _GetAll(final FinanceRequestParams? params) = _$GetAllImpl;
  _GetAll._() : super._();

  @override
  FinanceRequestParams? get params;
  @JsonKey(ignore: true)
  _$$GetAllImplCopyWith<_$GetAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllBillsImplCopyWith<$Res> {
  factory _$$GetAllBillsImplCopyWith(
          _$GetAllBillsImpl value, $Res Function(_$GetAllBillsImpl) then) =
      __$$GetAllBillsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FinanceRequestParams? params});

  $FinanceRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$GetAllBillsImplCopyWithImpl<$Res>
    extends _$FinanceClientCopyWithImpl<$Res, _$GetAllBillsImpl>
    implements _$$GetAllBillsImplCopyWith<$Res> {
  __$$GetAllBillsImplCopyWithImpl(
      _$GetAllBillsImpl _value, $Res Function(_$GetAllBillsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$GetAllBillsImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FinanceRequestParams?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FinanceRequestParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $FinanceRequestParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetAllBillsImpl extends _GetAllBills {
  _$GetAllBillsImpl(this.params) : super._();

  @override
  final FinanceRequestParams? params;

  @override
  String toString() {
    return 'FinanceClient.getAllBills(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBillsImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllBillsImplCopyWith<_$GetAllBillsImpl> get copyWith =>
      __$$GetAllBillsImplCopyWithImpl<_$GetAllBillsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinanceRequestParams? params) getAll,
    required TResult Function(FinanceRequestParams? params) getAllBills,
    required TResult Function(FinanceTeacherRequest? params) getSalary,
  }) {
    return getAllBills(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinanceRequestParams? params)? getAll,
    TResult? Function(FinanceRequestParams? params)? getAllBills,
    TResult? Function(FinanceTeacherRequest? params)? getSalary,
  }) {
    return getAllBills?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinanceRequestParams? params)? getAll,
    TResult Function(FinanceRequestParams? params)? getAllBills,
    TResult Function(FinanceTeacherRequest? params)? getSalary,
    required TResult orElse(),
  }) {
    if (getAllBills != null) {
      return getAllBills(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetAllBills value) getAllBills,
    required TResult Function(_GetSalary value) getSalary,
  }) {
    return getAllBills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetAllBills value)? getAllBills,
    TResult? Function(_GetSalary value)? getSalary,
  }) {
    return getAllBills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetAllBills value)? getAllBills,
    TResult Function(_GetSalary value)? getSalary,
    required TResult orElse(),
  }) {
    if (getAllBills != null) {
      return getAllBills(this);
    }
    return orElse();
  }
}

abstract class _GetAllBills extends FinanceClient {
  factory _GetAllBills(final FinanceRequestParams? params) = _$GetAllBillsImpl;
  _GetAllBills._() : super._();

  @override
  FinanceRequestParams? get params;
  @JsonKey(ignore: true)
  _$$GetAllBillsImplCopyWith<_$GetAllBillsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSalaryImplCopyWith<$Res> {
  factory _$$GetSalaryImplCopyWith(
          _$GetSalaryImpl value, $Res Function(_$GetSalaryImpl) then) =
      __$$GetSalaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FinanceTeacherRequest? params});

  $FinanceTeacherRequestCopyWith<$Res>? get params;
}

/// @nodoc
class __$$GetSalaryImplCopyWithImpl<$Res>
    extends _$FinanceClientCopyWithImpl<$Res, _$GetSalaryImpl>
    implements _$$GetSalaryImplCopyWith<$Res> {
  __$$GetSalaryImplCopyWithImpl(
      _$GetSalaryImpl _value, $Res Function(_$GetSalaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$GetSalaryImpl(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FinanceTeacherRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FinanceTeacherRequestCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $FinanceTeacherRequestCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetSalaryImpl extends _GetSalary {
  _$GetSalaryImpl(this.params) : super._();

  @override
  final FinanceTeacherRequest? params;

  @override
  String toString() {
    return 'FinanceClient.getSalary(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSalaryImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSalaryImplCopyWith<_$GetSalaryImpl> get copyWith =>
      __$$GetSalaryImplCopyWithImpl<_$GetSalaryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinanceRequestParams? params) getAll,
    required TResult Function(FinanceRequestParams? params) getAllBills,
    required TResult Function(FinanceTeacherRequest? params) getSalary,
  }) {
    return getSalary(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinanceRequestParams? params)? getAll,
    TResult? Function(FinanceRequestParams? params)? getAllBills,
    TResult? Function(FinanceTeacherRequest? params)? getSalary,
  }) {
    return getSalary?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinanceRequestParams? params)? getAll,
    TResult Function(FinanceRequestParams? params)? getAllBills,
    TResult Function(FinanceTeacherRequest? params)? getSalary,
    required TResult orElse(),
  }) {
    if (getSalary != null) {
      return getSalary(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_GetAllBills value) getAllBills,
    required TResult Function(_GetSalary value) getSalary,
  }) {
    return getSalary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_GetAllBills value)? getAllBills,
    TResult? Function(_GetSalary value)? getSalary,
  }) {
    return getSalary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_GetAllBills value)? getAllBills,
    TResult Function(_GetSalary value)? getSalary,
    required TResult orElse(),
  }) {
    if (getSalary != null) {
      return getSalary(this);
    }
    return orElse();
  }
}

abstract class _GetSalary extends FinanceClient {
  factory _GetSalary(final FinanceTeacherRequest? params) = _$GetSalaryImpl;
  _GetSalary._() : super._();

  @override
  FinanceTeacherRequest? get params;
  @JsonKey(ignore: true)
  _$$GetSalaryImplCopyWith<_$GetSalaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
