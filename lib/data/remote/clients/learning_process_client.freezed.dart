// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_process_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningProcessClient {
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
abstract class _$$_LearningProcessListCopyWith<$Res> {
  factory _$$_LearningProcessListCopyWith(_$_LearningProcessList value,
          $Res Function(_$_LearningProcessList) then) =
      __$$_LearningProcessListCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_LearningProcessListCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$_LearningProcessList>
    implements _$$_LearningProcessListCopyWith<$Res> {
  __$$_LearningProcessListCopyWithImpl(_$_LearningProcessList _value,
      $Res Function(_$_LearningProcessList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_LearningProcessList(
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

class _$_LearningProcessList extends _LearningProcessList {
  _$_LearningProcessList(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'LearningProcessClient.getLearningProcessList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningProcessList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningProcessListCopyWith<_$_LearningProcessList> get copyWith =>
      __$$_LearningProcessListCopyWithImpl<_$_LearningProcessList>(
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
      _$_LearningProcessList;
  _LearningProcessList._() : super._();

  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$_LearningProcessListCopyWith<_$_LearningProcessList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LearningProfileListCopyWith<$Res> {
  factory _$$_LearningProfileListCopyWith(_$_LearningProfileList value,
          $Res Function(_$_LearningProfileList) then) =
      __$$_LearningProfileListCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_LearningProfileListCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$_LearningProfileList>
    implements _$$_LearningProfileListCopyWith<$Res> {
  __$$_LearningProfileListCopyWithImpl(_$_LearningProfileList _value,
      $Res Function(_$_LearningProfileList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_LearningProfileList(
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

class _$_LearningProfileList extends _LearningProfileList {
  _$_LearningProfileList(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'LearningProcessClient.getLearningProfileList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningProfileList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningProfileListCopyWith<_$_LearningProfileList> get copyWith =>
      __$$_LearningProfileListCopyWithImpl<_$_LearningProfileList>(
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
      _$_LearningProfileList;
  _LearningProfileList._() : super._();

  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$_LearningProfileListCopyWith<_$_LearningProfileList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateLearningProfileListCopyWith<$Res> {
  factory _$$_UpdateLearningProfileListCopyWith(
          _$_UpdateLearningProfileList value,
          $Res Function(_$_UpdateLearningProfileList) then) =
      __$$_UpdateLearningProfileListCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProfileResponse? model});

  $LearningProfileResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UpdateLearningProfileListCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res,
        _$_UpdateLearningProfileList>
    implements _$$_UpdateLearningProfileListCopyWith<$Res> {
  __$$_UpdateLearningProfileListCopyWithImpl(
      _$_UpdateLearningProfileList _value,
      $Res Function(_$_UpdateLearningProfileList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UpdateLearningProfileList(
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

class _$_UpdateLearningProfileList extends _UpdateLearningProfileList {
  _$_UpdateLearningProfileList(this.model) : super._();

  @override
  final LearningProfileResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.updateLearningProfileList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLearningProfileList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLearningProfileListCopyWith<_$_UpdateLearningProfileList>
      get copyWith => __$$_UpdateLearningProfileListCopyWithImpl<
          _$_UpdateLearningProfileList>(this, _$identity);

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
      _$_UpdateLearningProfileList;
  _UpdateLearningProfileList._() : super._();

  LearningProfileResponse? get model;
  @JsonKey(ignore: true)
  _$$_UpdateLearningProfileListCopyWith<_$_UpdateLearningProfileList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteLearningProcessCopyWith<$Res> {
  factory _$$_DeleteLearningProcessCopyWith(_$_DeleteLearningProcess value,
          $Res Function(_$_DeleteLearningProcess) then) =
      __$$_DeleteLearningProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProcessResponse? model});

  $LearningProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DeleteLearningProcessCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$_DeleteLearningProcess>
    implements _$$_DeleteLearningProcessCopyWith<$Res> {
  __$$_DeleteLearningProcessCopyWithImpl(_$_DeleteLearningProcess _value,
      $Res Function(_$_DeleteLearningProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DeleteLearningProcess(
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

class _$_DeleteLearningProcess extends _DeleteLearningProcess {
  _$_DeleteLearningProcess(this.model) : super._();

  @override
  final LearningProcessResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.deleteLearningProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteLearningProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteLearningProcessCopyWith<_$_DeleteLearningProcess> get copyWith =>
      __$$_DeleteLearningProcessCopyWithImpl<_$_DeleteLearningProcess>(
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
      _$_DeleteLearningProcess;
  _DeleteLearningProcess._() : super._();

  LearningProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_DeleteLearningProcessCopyWith<_$_DeleteLearningProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateLearningProcessCopyWith<$Res> {
  factory _$$_UpdateLearningProcessCopyWith(_$_UpdateLearningProcess value,
          $Res Function(_$_UpdateLearningProcess) then) =
      __$$_UpdateLearningProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProcessResponse? model});

  $LearningProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UpdateLearningProcessCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$_UpdateLearningProcess>
    implements _$$_UpdateLearningProcessCopyWith<$Res> {
  __$$_UpdateLearningProcessCopyWithImpl(_$_UpdateLearningProcess _value,
      $Res Function(_$_UpdateLearningProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UpdateLearningProcess(
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

class _$_UpdateLearningProcess extends _UpdateLearningProcess {
  _$_UpdateLearningProcess(this.model) : super._();

  @override
  final LearningProcessResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.updateLearningProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLearningProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLearningProcessCopyWith<_$_UpdateLearningProcess> get copyWith =>
      __$$_UpdateLearningProcessCopyWithImpl<_$_UpdateLearningProcess>(
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
      _$_UpdateLearningProcess;
  _UpdateLearningProcess._() : super._();

  LearningProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_UpdateLearningProcessCopyWith<_$_UpdateLearningProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertLearningProcessCopyWith<$Res> {
  factory _$$_InsertLearningProcessCopyWith(_$_InsertLearningProcess value,
          $Res Function(_$_InsertLearningProcess) then) =
      __$$_InsertLearningProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({LearningProcessResponse? model});

  $LearningProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_InsertLearningProcessCopyWithImpl<$Res>
    extends _$LearningProcessClientCopyWithImpl<$Res, _$_InsertLearningProcess>
    implements _$$_InsertLearningProcessCopyWith<$Res> {
  __$$_InsertLearningProcessCopyWithImpl(_$_InsertLearningProcess _value,
      $Res Function(_$_InsertLearningProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_InsertLearningProcess(
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

class _$_InsertLearningProcess extends _InsertLearningProcess {
  _$_InsertLearningProcess(this.model) : super._();

  @override
  final LearningProcessResponse? model;

  @override
  String toString() {
    return 'LearningProcessClient.insertLearningProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertLearningProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertLearningProcessCopyWith<_$_InsertLearningProcess> get copyWith =>
      __$$_InsertLearningProcessCopyWithImpl<_$_InsertLearningProcess>(
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
      _$_InsertLearningProcess;
  _InsertLearningProcess._() : super._();

  LearningProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_InsertLearningProcessCopyWith<_$_InsertLearningProcess> get copyWith =>
      throw _privateConstructorUsedError;
}
