// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_process_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkingProcessClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingProcessClientCopyWith<$Res> {
  factory $WorkingProcessClientCopyWith(WorkingProcessClient value,
          $Res Function(WorkingProcessClient) then) =
      _$WorkingProcessClientCopyWithImpl<$Res, WorkingProcessClient>;
}

/// @nodoc
class _$WorkingProcessClientCopyWithImpl<$Res,
        $Val extends WorkingProcessClient>
    implements $WorkingProcessClientCopyWith<$Res> {
  _$WorkingProcessClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WorkingProcessListImplCopyWith<$Res> {
  factory _$$WorkingProcessListImplCopyWith(_$WorkingProcessListImpl value,
          $Res Function(_$WorkingProcessListImpl) then) =
      __$$WorkingProcessListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$WorkingProcessListImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$WorkingProcessListImpl>
    implements _$$WorkingProcessListImplCopyWith<$Res> {
  __$$WorkingProcessListImplCopyWithImpl(_$WorkingProcessListImpl _value,
      $Res Function(_$WorkingProcessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$WorkingProcessListImpl(
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

class _$WorkingProcessListImpl extends _WorkingProcessList {
  _$WorkingProcessListImpl(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'WorkingProcessClient.getWorkingProcessList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingProcessListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingProcessListImplCopyWith<_$WorkingProcessListImpl> get copyWith =>
      __$$WorkingProcessListImplCopyWithImpl<_$WorkingProcessListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return getWorkingProcessList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return getWorkingProcessList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (getWorkingProcessList != null) {
      return getWorkingProcessList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return getWorkingProcessList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return getWorkingProcessList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (getWorkingProcessList != null) {
      return getWorkingProcessList(this);
    }
    return orElse();
  }
}

abstract class _WorkingProcessList extends WorkingProcessClient {
  factory _WorkingProcessList(final WorkingProcessRequest? model) =
      _$WorkingProcessListImpl;
  _WorkingProcessList._() : super._();

  @override
  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$WorkingProcessListImplCopyWith<_$WorkingProcessListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageProcessListImplCopyWith<$Res> {
  factory _$$LanguageProcessListImplCopyWith(_$LanguageProcessListImpl value,
          $Res Function(_$LanguageProcessListImpl) then) =
      __$$LanguageProcessListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$LanguageProcessListImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$LanguageProcessListImpl>
    implements _$$LanguageProcessListImplCopyWith<$Res> {
  __$$LanguageProcessListImplCopyWithImpl(_$LanguageProcessListImpl _value,
      $Res Function(_$LanguageProcessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$LanguageProcessListImpl(
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

class _$LanguageProcessListImpl extends _LanguageProcessList {
  _$LanguageProcessListImpl(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'WorkingProcessClient.getLanguageProcessList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageProcessListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageProcessListImplCopyWith<_$LanguageProcessListImpl> get copyWith =>
      __$$LanguageProcessListImplCopyWithImpl<_$LanguageProcessListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return getLanguageProcessList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return getLanguageProcessList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (getLanguageProcessList != null) {
      return getLanguageProcessList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return getLanguageProcessList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return getLanguageProcessList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (getLanguageProcessList != null) {
      return getLanguageProcessList(this);
    }
    return orElse();
  }
}

abstract class _LanguageProcessList extends WorkingProcessClient {
  factory _LanguageProcessList(final WorkingProcessRequest? model) =
      _$LanguageProcessListImpl;
  _LanguageProcessList._() : super._();

  @override
  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$LanguageProcessListImplCopyWith<_$LanguageProcessListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteWorkingProcessImplCopyWith<$Res> {
  factory _$$DeleteWorkingProcessImplCopyWith(_$DeleteWorkingProcessImpl value,
          $Res Function(_$DeleteWorkingProcessImpl) then) =
      __$$DeleteWorkingProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessResponse? model});

  $WorkingProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DeleteWorkingProcessImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$DeleteWorkingProcessImpl>
    implements _$$DeleteWorkingProcessImplCopyWith<$Res> {
  __$$DeleteWorkingProcessImplCopyWithImpl(_$DeleteWorkingProcessImpl _value,
      $Res Function(_$DeleteWorkingProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DeleteWorkingProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WorkingProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $WorkingProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DeleteWorkingProcessImpl extends _DeleteWorkingProcess {
  _$DeleteWorkingProcessImpl(this.model) : super._();

  @override
  final WorkingProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.deleteWorkingProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWorkingProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWorkingProcessImplCopyWith<_$DeleteWorkingProcessImpl>
      get copyWith =>
          __$$DeleteWorkingProcessImplCopyWithImpl<_$DeleteWorkingProcessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return deleteWorkingProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return deleteWorkingProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (deleteWorkingProcess != null) {
      return deleteWorkingProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return deleteWorkingProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return deleteWorkingProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (deleteWorkingProcess != null) {
      return deleteWorkingProcess(this);
    }
    return orElse();
  }
}

abstract class _DeleteWorkingProcess extends WorkingProcessClient {
  factory _DeleteWorkingProcess(final WorkingProcessResponse? model) =
      _$DeleteWorkingProcessImpl;
  _DeleteWorkingProcess._() : super._();

  @override
  WorkingProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$DeleteWorkingProcessImplCopyWith<_$DeleteWorkingProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLanguageProcessImplCopyWith<$Res> {
  factory _$$DeleteLanguageProcessImplCopyWith(
          _$DeleteLanguageProcessImpl value,
          $Res Function(_$DeleteLanguageProcessImpl) then) =
      __$$DeleteLanguageProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageProcessResponse? model});

  $LanguageProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DeleteLanguageProcessImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res,
        _$DeleteLanguageProcessImpl>
    implements _$$DeleteLanguageProcessImplCopyWith<$Res> {
  __$$DeleteLanguageProcessImplCopyWithImpl(_$DeleteLanguageProcessImpl _value,
      $Res Function(_$DeleteLanguageProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DeleteLanguageProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LanguageProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LanguageProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DeleteLanguageProcessImpl extends _DeleteLanguageProcess {
  _$DeleteLanguageProcessImpl(this.model) : super._();

  @override
  final LanguageProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.deleteLanguageProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLanguageProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLanguageProcessImplCopyWith<_$DeleteLanguageProcessImpl>
      get copyWith => __$$DeleteLanguageProcessImplCopyWithImpl<
          _$DeleteLanguageProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return deleteLanguageProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return deleteLanguageProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (deleteLanguageProcess != null) {
      return deleteLanguageProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return deleteLanguageProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return deleteLanguageProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (deleteLanguageProcess != null) {
      return deleteLanguageProcess(this);
    }
    return orElse();
  }
}

abstract class _DeleteLanguageProcess extends WorkingProcessClient {
  factory _DeleteLanguageProcess(final LanguageProcessResponse? model) =
      _$DeleteLanguageProcessImpl;
  _DeleteLanguageProcess._() : super._();

  @override
  LanguageProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$DeleteLanguageProcessImplCopyWith<_$DeleteLanguageProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWorkingProcessImplCopyWith<$Res> {
  factory _$$UpdateWorkingProcessImplCopyWith(_$UpdateWorkingProcessImpl value,
          $Res Function(_$UpdateWorkingProcessImpl) then) =
      __$$UpdateWorkingProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessResponse? model});

  $WorkingProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UpdateWorkingProcessImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$UpdateWorkingProcessImpl>
    implements _$$UpdateWorkingProcessImplCopyWith<$Res> {
  __$$UpdateWorkingProcessImplCopyWithImpl(_$UpdateWorkingProcessImpl _value,
      $Res Function(_$UpdateWorkingProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateWorkingProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WorkingProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $WorkingProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateWorkingProcessImpl extends _UpdateWorkingProcess {
  _$UpdateWorkingProcessImpl(this.model) : super._();

  @override
  final WorkingProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.updateWorkingProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkingProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkingProcessImplCopyWith<_$UpdateWorkingProcessImpl>
      get copyWith =>
          __$$UpdateWorkingProcessImplCopyWithImpl<_$UpdateWorkingProcessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return updateWorkingProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return updateWorkingProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (updateWorkingProcess != null) {
      return updateWorkingProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return updateWorkingProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return updateWorkingProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (updateWorkingProcess != null) {
      return updateWorkingProcess(this);
    }
    return orElse();
  }
}

abstract class _UpdateWorkingProcess extends WorkingProcessClient {
  factory _UpdateWorkingProcess(final WorkingProcessResponse? model) =
      _$UpdateWorkingProcessImpl;
  _UpdateWorkingProcess._() : super._();

  @override
  WorkingProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$UpdateWorkingProcessImplCopyWith<_$UpdateWorkingProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLanguageProcessImplCopyWith<$Res> {
  factory _$$UpdateLanguageProcessImplCopyWith(
          _$UpdateLanguageProcessImpl value,
          $Res Function(_$UpdateLanguageProcessImpl) then) =
      __$$UpdateLanguageProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageProcessResponse? model});

  $LanguageProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UpdateLanguageProcessImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res,
        _$UpdateLanguageProcessImpl>
    implements _$$UpdateLanguageProcessImplCopyWith<$Res> {
  __$$UpdateLanguageProcessImplCopyWithImpl(_$UpdateLanguageProcessImpl _value,
      $Res Function(_$UpdateLanguageProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateLanguageProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LanguageProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LanguageProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateLanguageProcessImpl extends _UpdateLanguageProcess {
  _$UpdateLanguageProcessImpl(this.model) : super._();

  @override
  final LanguageProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.updateLanguageProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLanguageProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLanguageProcessImplCopyWith<_$UpdateLanguageProcessImpl>
      get copyWith => __$$UpdateLanguageProcessImplCopyWithImpl<
          _$UpdateLanguageProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return updateLanguageProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return updateLanguageProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (updateLanguageProcess != null) {
      return updateLanguageProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return updateLanguageProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return updateLanguageProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (updateLanguageProcess != null) {
      return updateLanguageProcess(this);
    }
    return orElse();
  }
}

abstract class _UpdateLanguageProcess extends WorkingProcessClient {
  factory _UpdateLanguageProcess(final LanguageProcessResponse? model) =
      _$UpdateLanguageProcessImpl;
  _UpdateLanguageProcess._() : super._();

  @override
  LanguageProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$UpdateLanguageProcessImplCopyWith<_$UpdateLanguageProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertWorkingProcessImplCopyWith<$Res> {
  factory _$$InsertWorkingProcessImplCopyWith(_$InsertWorkingProcessImpl value,
          $Res Function(_$InsertWorkingProcessImpl) then) =
      __$$InsertWorkingProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessResponse? model});

  $WorkingProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertWorkingProcessImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$InsertWorkingProcessImpl>
    implements _$$InsertWorkingProcessImplCopyWith<$Res> {
  __$$InsertWorkingProcessImplCopyWithImpl(_$InsertWorkingProcessImpl _value,
      $Res Function(_$InsertWorkingProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertWorkingProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WorkingProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkingProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $WorkingProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertWorkingProcessImpl extends _InsertWorkingProcess {
  _$InsertWorkingProcessImpl(this.model) : super._();

  @override
  final WorkingProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.insertWorkingProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertWorkingProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertWorkingProcessImplCopyWith<_$InsertWorkingProcessImpl>
      get copyWith =>
          __$$InsertWorkingProcessImplCopyWithImpl<_$InsertWorkingProcessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return insertWorkingProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return insertWorkingProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (insertWorkingProcess != null) {
      return insertWorkingProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return insertWorkingProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return insertWorkingProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (insertWorkingProcess != null) {
      return insertWorkingProcess(this);
    }
    return orElse();
  }
}

abstract class _InsertWorkingProcess extends WorkingProcessClient {
  factory _InsertWorkingProcess(final WorkingProcessResponse? model) =
      _$InsertWorkingProcessImpl;
  _InsertWorkingProcess._() : super._();

  @override
  WorkingProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$InsertWorkingProcessImplCopyWith<_$InsertWorkingProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertLanguageProcessImplCopyWith<$Res> {
  factory _$$InsertLanguageProcessImplCopyWith(
          _$InsertLanguageProcessImpl value,
          $Res Function(_$InsertLanguageProcessImpl) then) =
      __$$InsertLanguageProcessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageProcessResponse? model});

  $LanguageProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertLanguageProcessImplCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res,
        _$InsertLanguageProcessImpl>
    implements _$$InsertLanguageProcessImplCopyWith<$Res> {
  __$$InsertLanguageProcessImplCopyWithImpl(_$InsertLanguageProcessImpl _value,
      $Res Function(_$InsertLanguageProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertLanguageProcessImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LanguageProcessResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageProcessResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $LanguageProcessResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertLanguageProcessImpl extends _InsertLanguageProcess {
  _$InsertLanguageProcessImpl(this.model) : super._();

  @override
  final LanguageProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.insertLanguageProcess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertLanguageProcessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertLanguageProcessImplCopyWith<_$InsertLanguageProcessImpl>
      get copyWith => __$$InsertLanguageProcessImplCopyWithImpl<
          _$InsertLanguageProcessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkingProcessRequest? model)
        getWorkingProcessList,
    required TResult Function(WorkingProcessRequest? model)
        getLanguageProcessList,
    required TResult Function(WorkingProcessResponse? model)
        deleteWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        deleteLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        updateWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        updateLanguageProcess,
    required TResult Function(WorkingProcessResponse? model)
        insertWorkingProcess,
    required TResult Function(LanguageProcessResponse? model)
        insertLanguageProcess,
  }) {
    return insertLanguageProcess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult? Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult? Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult? Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult? Function(LanguageProcessResponse? model)? insertLanguageProcess,
  }) {
    return insertLanguageProcess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkingProcessRequest? model)? getWorkingProcessList,
    TResult Function(WorkingProcessRequest? model)? getLanguageProcessList,
    TResult Function(WorkingProcessResponse? model)? deleteWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? deleteLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? updateWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? updateLanguageProcess,
    TResult Function(WorkingProcessResponse? model)? insertWorkingProcess,
    TResult Function(LanguageProcessResponse? model)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (insertLanguageProcess != null) {
      return insertLanguageProcess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkingProcessList value) getWorkingProcessList,
    required TResult Function(_LanguageProcessList value)
        getLanguageProcessList,
    required TResult Function(_DeleteWorkingProcess value) deleteWorkingProcess,
    required TResult Function(_DeleteLanguageProcess value)
        deleteLanguageProcess,
    required TResult Function(_UpdateWorkingProcess value) updateWorkingProcess,
    required TResult Function(_UpdateLanguageProcess value)
        updateLanguageProcess,
    required TResult Function(_InsertWorkingProcess value) insertWorkingProcess,
    required TResult Function(_InsertLanguageProcess value)
        insertLanguageProcess,
  }) {
    return insertLanguageProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult? Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult? Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult? Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult? Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult? Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult? Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult? Function(_InsertLanguageProcess value)? insertLanguageProcess,
  }) {
    return insertLanguageProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkingProcessList value)? getWorkingProcessList,
    TResult Function(_LanguageProcessList value)? getLanguageProcessList,
    TResult Function(_DeleteWorkingProcess value)? deleteWorkingProcess,
    TResult Function(_DeleteLanguageProcess value)? deleteLanguageProcess,
    TResult Function(_UpdateWorkingProcess value)? updateWorkingProcess,
    TResult Function(_UpdateLanguageProcess value)? updateLanguageProcess,
    TResult Function(_InsertWorkingProcess value)? insertWorkingProcess,
    TResult Function(_InsertLanguageProcess value)? insertLanguageProcess,
    required TResult orElse(),
  }) {
    if (insertLanguageProcess != null) {
      return insertLanguageProcess(this);
    }
    return orElse();
  }
}

abstract class _InsertLanguageProcess extends WorkingProcessClient {
  factory _InsertLanguageProcess(final LanguageProcessResponse? model) =
      _$InsertLanguageProcessImpl;
  _InsertLanguageProcess._() : super._();

  @override
  LanguageProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$InsertLanguageProcessImplCopyWith<_$InsertLanguageProcessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
