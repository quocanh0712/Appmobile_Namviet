// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_process_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearningProcessClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningProcessClientCopyWith<$Res> {
  factory $LearningProcessClientCopyWith(LearningProcessClient value,
          $Res Function(LearningProcessClient) then) =
      _$LearningProcessClientCopyWithImpl<$Res, LearningProcessClient>;
}

/// @nodoc
class _$LearningProcessClientCopyWithImpl<$Res,
        $Val extends LearningProcessClient>
    implements $LearningProcessClientCopyWith<$Res> {
  _$LearningProcessClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LearningProcessListImplCopyWith<$Res> {
  factory _$$LearningProcessListImplCopyWith(_$LearningProcessListImpl value,
          $Res Function(_$LearningProcessListImpl) then) =
      __$$LearningProcessListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$LearningProcessListImplCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$LearningProcessListImpl>
    implements _$$LearningProcessListImplCopyWith<$Res> {
  __$$LearningProcessListImplCopyWithImpl(_$LearningProcessListImpl _value,
      $Res Function(_$LearningProcessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$LearningProcessListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WorkingProcessRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingProcessRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $WorkingProcessRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LearningProcessListImpl extends _LearningProcessList {
  _$LearningProcessListImpl(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'LearningProcessClient.getLearningProcessList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningProcessListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningProcessListImplCopyWith<_$LearningProcessListImpl> get copyWith =>
      __$$LearningProcessListImplCopyWithImpl<_$LearningProcessListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) {
    return getLearningProcessList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) {
    return getLearningProcessList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (getLearningProcessList != null) {
      return getLearningProcessList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) {
    return getLearningProcessList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) {
    return getLearningProcessList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (getLearningProcessList != null) {
      return getLearningProcessList(this);
    }
    return orElse();
  }
}

abstract class _LearningProcessList extends LearningProcessClient {
  factory _LearningProcessList(final WorkingProcessRequest? model) =
      _$LearningProcessListImpl;
  _LearningProcessList._() : super._();

  @override
  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$LearningProcessListImplCopyWith<_$LearningProcessListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningProfileListImplCopyWith<$Res> {
  factory _$$LearningProfileListImplCopyWith(_$LearningProfileListImpl value,
          $Res Function(_$LearningProfileListImpl) then) =
      __$$LearningProfileListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$LearningProfileListImplCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$LearningProfileListImpl>
    implements _$$LearningProfileListImplCopyWith<$Res> {
  __$$LearningProfileListImplCopyWithImpl(_$LearningProfileListImpl _value,
      $Res Function(_$LearningProfileListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$LearningProfileListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WorkingProcessRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingProcessRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $WorkingProcessRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LearningProfileListImpl extends _LearningProfileList {
  _$LearningProfileListImpl(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'LearningProcessClient.getLearningProfileList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningProfileListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningProfileListImplCopyWith<_$LearningProfileListImpl> get copyWith =>
      __$$LearningProfileListImplCopyWithImpl<_$LearningProfileListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) {
    return getLearningProfileList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) {
    return getLearningProfileList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (getLearningProfileList != null) {
      return getLearningProfileList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) {
    return getLearningProfileList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) {
    return getLearningProfileList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (getLearningProfileList != null) {
      return getLearningProfileList(this);
    }
    return orElse();
  }
}

abstract class _LearningProfileList extends LearningProcessClient {
  factory _LearningProfileList(final WorkingProcessRequest? model) =
      _$LearningProfileListImpl;
  _LearningProfileList._() : super._();

  @override
  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$LearningProfileListImplCopyWith<_$LearningProfileListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLearningProfileListImplCopyWith<$Res> {
  factory _$$UpdateLearningProfileListImplCopyWith(
          _$UpdateLearningProfileListImpl value,
          $Res Function(_$UpdateLearningProfileListImpl) then) =
      __$$UpdateLearningProfileListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProfileResponse? model});

  $LearningProfileResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UpdateLearningProfileListImplCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res,
        _$UpdateLearningProfileListImpl>
    implements _$$UpdateLearningProfileListImplCopyWith<$Res> {
  __$$UpdateLearningProfileListImplCopyWithImpl(
      _$UpdateLearningProfileListImpl _value,
      $Res Function(_$UpdateLearningProfileListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateLearningProfileListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LearningProfileResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningProfileResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LearningProfileResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateLearningProfileListImpl extends _UpdateLearningProfileList {
  _$UpdateLearningProfileListImpl(this.model) : super._();

  @override
  final LearningProfileResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.updateLearningProfileList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLearningProfileListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLearningProfileListImplCopyWith<_$UpdateLearningProfileListImpl>
      get copyWith => __$$UpdateLearningProfileListImplCopyWithImpl<
          _$UpdateLearningProfileListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) {
    return updateLearningProfileList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) {
    return updateLearningProfileList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (updateLearningProfileList != null) {
      return updateLearningProfileList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) {
    return updateLearningProfileList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) {
    return updateLearningProfileList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (updateLearningProfileList != null) {
      return updateLearningProfileList(this);
    }
    return orElse();
  }
}

abstract class _UpdateLearningProfileList extends LearningProcessClient {
  factory _UpdateLearningProfileList(final LearningProfileResponse? model) =
      _$UpdateLearningProfileListImpl;
  _UpdateLearningProfileList._() : super._();

  @override
  LearningProfileResponse? get model;
  @JsonKey(ignore: true)
  _$$UpdateLearningProfileListImplCopyWith<_$UpdateLearningProfileListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLearningProcessImplCopyWith<$Res> {
  factory _$$DeleteLearningProcessImplCopyWith(
          _$DeleteLearningProcessImpl value,
          $Res Function(_$DeleteLearningProcessImpl) then) =
      __$$DeleteLearningProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProcessResponse? model});

  $LearningProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DeleteLearningProcessImplCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res,
        _$DeleteLearningProcessImpl>
    implements _$$DeleteLearningProcessImplCopyWith<$Res> {
  __$$DeleteLearningProcessImplCopyWithImpl(_$DeleteLearningProcessImpl _value,
      $Res Function(_$DeleteLearningProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DeleteLearningProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LearningProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LearningProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DeleteLearningProcessImpl extends _DeleteLearningProcess {
  _$DeleteLearningProcessImpl(this.model) : super._();

  @override
  final LearningProcessResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.deleteLearningProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLearningProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLearningProcessImplCopyWith<_$DeleteLearningProcessImpl>
      get copyWith => __$$DeleteLearningProcessImplCopyWithImpl<
          _$DeleteLearningProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) {
    return deleteLearningProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) {
    return deleteLearningProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (deleteLearningProcess != null) {
      return deleteLearningProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) {
    return deleteLearningProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) {
    return deleteLearningProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (deleteLearningProcess != null) {
      return deleteLearningProcess(this);
    }
    return orElse();
  }
}

abstract class _DeleteLearningProcess extends LearningProcessClient {
  factory _DeleteLearningProcess(final LearningProcessResponse? model) =
      _$DeleteLearningProcessImpl;
  _DeleteLearningProcess._() : super._();

  @override
  LearningProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$DeleteLearningProcessImplCopyWith<_$DeleteLearningProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLearningProcessImplCopyWith<$Res> {
  factory _$$UpdateLearningProcessImplCopyWith(
          _$UpdateLearningProcessImpl value,
          $Res Function(_$UpdateLearningProcessImpl) then) =
      __$$UpdateLearningProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProcessResponse? model});

  $LearningProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UpdateLearningProcessImplCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res,
        _$UpdateLearningProcessImpl>
    implements _$$UpdateLearningProcessImplCopyWith<$Res> {
  __$$UpdateLearningProcessImplCopyWithImpl(_$UpdateLearningProcessImpl _value,
      $Res Function(_$UpdateLearningProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateLearningProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LearningProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LearningProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateLearningProcessImpl extends _UpdateLearningProcess {
  _$UpdateLearningProcessImpl(this.model) : super._();

  @override
  final LearningProcessResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.updateLearningProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLearningProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLearningProcessImplCopyWith<_$UpdateLearningProcessImpl>
      get copyWith => __$$UpdateLearningProcessImplCopyWithImpl<
          _$UpdateLearningProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) {
    return updateLearningProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) {
    return updateLearningProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (updateLearningProcess != null) {
      return updateLearningProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) {
    return updateLearningProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) {
    return updateLearningProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (updateLearningProcess != null) {
      return updateLearningProcess(this);
    }
    return orElse();
  }
}

abstract class _UpdateLearningProcess extends LearningProcessClient {
  factory _UpdateLearningProcess(final LearningProcessResponse? model) =
      _$UpdateLearningProcessImpl;
  _UpdateLearningProcess._() : super._();

  @override
  LearningProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$UpdateLearningProcessImplCopyWith<_$UpdateLearningProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertLearningProcessImplCopyWith<$Res> {
  factory _$$InsertLearningProcessImplCopyWith(
          _$InsertLearningProcessImpl value,
          $Res Function(_$InsertLearningProcessImpl) then) =
      __$$InsertLearningProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProcessResponse? model});

  $LearningProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertLearningProcessImplCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res,
        _$InsertLearningProcessImpl>
    implements _$$InsertLearningProcessImplCopyWith<$Res> {
  __$$InsertLearningProcessImplCopyWithImpl(_$InsertLearningProcessImpl _value,
      $Res Function(_$InsertLearningProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertLearningProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LearningProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LearningProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertLearningProcessImpl extends _InsertLearningProcess {
  _$InsertLearningProcessImpl(this.model) : super._();

  @override
  final LearningProcessResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.insertLearningProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertLearningProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertLearningProcessImplCopyWith<_$InsertLearningProcessImpl>
      get copyWith => __$$InsertLearningProcessImplCopyWithImpl<
          _$InsertLearningProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getLearningProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLearningProfileList,
    required TResult Function(LearningProfileResponse? model)
        updateLearningProfileList,
    required TResult Function(LearningProcessResponse? model)
        deleteLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        updateLearningProcess,
    required TResult Function(LearningProcessResponse? model)
        insertLearningProcess,
  }) {
    return insertLearningProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult? Function(LearningProfileResponse? model)?
        updateLearningProfileList,
    TResult? Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult? Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult? Function(LearningProcessResponse? model)? insertLearningProcess,
  }) {
    return insertLearningProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getLearningProcessList,
    TResult Function(WorkingProcessRequest? model)? getLearningProfileList,
    TResult Function(LearningProfileResponse? model)? updateLearningProfileList,
    TResult Function(LearningProcessResponse? model)? deleteLearningProcess,
    TResult Function(LearningProcessResponse? model)? updateLearningProcess,
    TResult Function(LearningProcessResponse? model)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (insertLearningProcess != null) {
      return insertLearningProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningProcessList value)
        getLearningProcessList,
    required TResult Function(_LearningProfileList value)
        getLearningProfileList,
    required TResult Function(_UpdateLearningProfileList value)
        updateLearningProfileList,
    required TResult Function(_DeleteLearningProcess value)
        deleteLearningProcess,
    required TResult Function(_UpdateLearningProcess value)
        updateLearningProcess,
    required TResult Function(_InsertLearningProcess value)
        insertLearningProcess,
  }) {
    return insertLearningProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningProcessList value)? getLearningProcessList,
    TResult? Function(_LearningProfileList value)? getLearningProfileList,
    TResult? Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult? Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult? Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult? Function(_InsertLearningProcess value)? insertLearningProcess,
  }) {
    return insertLearningProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningProcessList value)? getLearningProcessList,
    TResult Function(_LearningProfileList value)? getLearningProfileList,
    TResult Function(_UpdateLearningProfileList value)?
        updateLearningProfileList,
    TResult Function(_DeleteLearningProcess value)? deleteLearningProcess,
    TResult Function(_UpdateLearningProcess value)? updateLearningProcess,
    TResult Function(_InsertLearningProcess value)? insertLearningProcess,
    required TResult orElse(),
  }) {
    if (insertLearningProcess != null) {
      return insertLearningProcess(this);
    }
    return orElse();
  }
}

abstract class _InsertLearningProcess extends LearningProcessClient {
  factory _InsertLearningProcess(final LearningProcessResponse? model) =
      _$InsertLearningProcessImpl;
  _InsertLearningProcess._() : super._();

  @override
  LearningProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$InsertLearningProcessImplCopyWith<_$InsertLearningProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
