// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'working_process_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkingProcessClient {
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
abstract class _$$_WorkingProcessListCopyWith<$Res> {
  factory _$$_WorkingProcessListCopyWith(_$_WorkingProcessList value,
          $Res Function(_$_WorkingProcessList) then) =
      __$$_WorkingProcessListCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_WorkingProcessListCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_WorkingProcessList>
    implements _$$_WorkingProcessListCopyWith<$Res> {
  __$$_WorkingProcessListCopyWithImpl(
      _$_WorkingProcessList _value, $Res Function(_$_WorkingProcessList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_WorkingProcessList(
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

class _$_WorkingProcessList extends _WorkingProcessList {
  _$_WorkingProcessList(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'WorkingProcessClient.getWorkingProcessList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingProcessList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkingProcessListCopyWith<_$_WorkingProcessList> get copyWith =>
      __$$_WorkingProcessListCopyWithImpl<_$_WorkingProcessList>(
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
      _$_WorkingProcessList;
  _WorkingProcessList._() : super._();

  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$_WorkingProcessListCopyWith<_$_WorkingProcessList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LanguageProcessListCopyWith<$Res> {
  factory _$$_LanguageProcessListCopyWith(_$_LanguageProcessList value,
          $Res Function(_$_LanguageProcessList) then) =
      __$$_LanguageProcessListCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessRequest? model});

  $WorkingProcessRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_LanguageProcessListCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_LanguageProcessList>
    implements _$$_LanguageProcessListCopyWith<$Res> {
  __$$_LanguageProcessListCopyWithImpl(_$_LanguageProcessList _value,
      $Res Function(_$_LanguageProcessList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_LanguageProcessList(
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

class _$_LanguageProcessList extends _LanguageProcessList {
  _$_LanguageProcessList(this.model) : super._();

  @override
  final WorkingProcessRequest? model;

  @override
  String toString() {
    return 'WorkingProcessClient.getLanguageProcessList(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageProcessList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageProcessListCopyWith<_$_LanguageProcessList> get copyWith =>
      __$$_LanguageProcessListCopyWithImpl<_$_LanguageProcessList>(
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
      _$_LanguageProcessList;
  _LanguageProcessList._() : super._();

  WorkingProcessRequest? get model;
  @JsonKey(ignore: true)
  _$$_LanguageProcessListCopyWith<_$_LanguageProcessList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteWorkingProcessCopyWith<$Res> {
  factory _$$_DeleteWorkingProcessCopyWith(_$_DeleteWorkingProcess value,
          $Res Function(_$_DeleteWorkingProcess) then) =
      __$$_DeleteWorkingProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessResponse? model});

  $WorkingProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DeleteWorkingProcessCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_DeleteWorkingProcess>
    implements _$$_DeleteWorkingProcessCopyWith<$Res> {
  __$$_DeleteWorkingProcessCopyWithImpl(_$_DeleteWorkingProcess _value,
      $Res Function(_$_DeleteWorkingProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DeleteWorkingProcess(
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

class _$_DeleteWorkingProcess extends _DeleteWorkingProcess {
  _$_DeleteWorkingProcess(this.model) : super._();

  @override
  final WorkingProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.deleteWorkingProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteWorkingProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteWorkingProcessCopyWith<_$_DeleteWorkingProcess> get copyWith =>
      __$$_DeleteWorkingProcessCopyWithImpl<_$_DeleteWorkingProcess>(
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
      _$_DeleteWorkingProcess;
  _DeleteWorkingProcess._() : super._();

  WorkingProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_DeleteWorkingProcessCopyWith<_$_DeleteWorkingProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteLanguageProcessCopyWith<$Res> {
  factory _$$_DeleteLanguageProcessCopyWith(_$_DeleteLanguageProcess value,
          $Res Function(_$_DeleteLanguageProcess) then) =
      __$$_DeleteLanguageProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageProcessResponse? model});

  $LanguageProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DeleteLanguageProcessCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_DeleteLanguageProcess>
    implements _$$_DeleteLanguageProcessCopyWith<$Res> {
  __$$_DeleteLanguageProcessCopyWithImpl(_$_DeleteLanguageProcess _value,
      $Res Function(_$_DeleteLanguageProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DeleteLanguageProcess(
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

class _$_DeleteLanguageProcess extends _DeleteLanguageProcess {
  _$_DeleteLanguageProcess(this.model) : super._();

  @override
  final LanguageProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.deleteLanguageProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteLanguageProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteLanguageProcessCopyWith<_$_DeleteLanguageProcess> get copyWith =>
      __$$_DeleteLanguageProcessCopyWithImpl<_$_DeleteLanguageProcess>(
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
      _$_DeleteLanguageProcess;
  _DeleteLanguageProcess._() : super._();

  LanguageProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_DeleteLanguageProcessCopyWith<_$_DeleteLanguageProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateWorkingProcessCopyWith<$Res> {
  factory _$$_UpdateWorkingProcessCopyWith(_$_UpdateWorkingProcess value,
          $Res Function(_$_UpdateWorkingProcess) then) =
      __$$_UpdateWorkingProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessResponse? model});

  $WorkingProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UpdateWorkingProcessCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_UpdateWorkingProcess>
    implements _$$_UpdateWorkingProcessCopyWith<$Res> {
  __$$_UpdateWorkingProcessCopyWithImpl(_$_UpdateWorkingProcess _value,
      $Res Function(_$_UpdateWorkingProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UpdateWorkingProcess(
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

class _$_UpdateWorkingProcess extends _UpdateWorkingProcess {
  _$_UpdateWorkingProcess(this.model) : super._();

  @override
  final WorkingProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.updateWorkingProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateWorkingProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateWorkingProcessCopyWith<_$_UpdateWorkingProcess> get copyWith =>
      __$$_UpdateWorkingProcessCopyWithImpl<_$_UpdateWorkingProcess>(
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
      _$_UpdateWorkingProcess;
  _UpdateWorkingProcess._() : super._();

  WorkingProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_UpdateWorkingProcessCopyWith<_$_UpdateWorkingProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateLanguageProcessCopyWith<$Res> {
  factory _$$_UpdateLanguageProcessCopyWith(_$_UpdateLanguageProcess value,
          $Res Function(_$_UpdateLanguageProcess) then) =
      __$$_UpdateLanguageProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageProcessResponse? model});

  $LanguageProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UpdateLanguageProcessCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_UpdateLanguageProcess>
    implements _$$_UpdateLanguageProcessCopyWith<$Res> {
  __$$_UpdateLanguageProcessCopyWithImpl(_$_UpdateLanguageProcess _value,
      $Res Function(_$_UpdateLanguageProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UpdateLanguageProcess(
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

class _$_UpdateLanguageProcess extends _UpdateLanguageProcess {
  _$_UpdateLanguageProcess(this.model) : super._();

  @override
  final LanguageProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.updateLanguageProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLanguageProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLanguageProcessCopyWith<_$_UpdateLanguageProcess> get copyWith =>
      __$$_UpdateLanguageProcessCopyWithImpl<_$_UpdateLanguageProcess>(
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
      _$_UpdateLanguageProcess;
  _UpdateLanguageProcess._() : super._();

  LanguageProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_UpdateLanguageProcessCopyWith<_$_UpdateLanguageProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertWorkingProcessCopyWith<$Res> {
  factory _$$_InsertWorkingProcessCopyWith(_$_InsertWorkingProcess value,
          $Res Function(_$_InsertWorkingProcess) then) =
      __$$_InsertWorkingProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkingProcessResponse? model});

  $WorkingProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_InsertWorkingProcessCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_InsertWorkingProcess>
    implements _$$_InsertWorkingProcessCopyWith<$Res> {
  __$$_InsertWorkingProcessCopyWithImpl(_$_InsertWorkingProcess _value,
      $Res Function(_$_InsertWorkingProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_InsertWorkingProcess(
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

class _$_InsertWorkingProcess extends _InsertWorkingProcess {
  _$_InsertWorkingProcess(this.model) : super._();

  @override
  final WorkingProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.insertWorkingProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertWorkingProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertWorkingProcessCopyWith<_$_InsertWorkingProcess> get copyWith =>
      __$$_InsertWorkingProcessCopyWithImpl<_$_InsertWorkingProcess>(
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
      _$_InsertWorkingProcess;
  _InsertWorkingProcess._() : super._();

  WorkingProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_InsertWorkingProcessCopyWith<_$_InsertWorkingProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertLanguageProcessCopyWith<$Res> {
  factory _$$_InsertLanguageProcessCopyWith(_$_InsertLanguageProcess value,
          $Res Function(_$_InsertLanguageProcess) then) =
      __$$_InsertLanguageProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({LanguageProcessResponse? model});

  $LanguageProcessResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_InsertLanguageProcessCopyWithImpl<$Res>
    extends _$WorkingProcessClientCopyWithImpl<$Res, _$_InsertLanguageProcess>
    implements _$$_InsertLanguageProcessCopyWith<$Res> {
  __$$_InsertLanguageProcessCopyWithImpl(_$_InsertLanguageProcess _value,
      $Res Function(_$_InsertLanguageProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_InsertLanguageProcess(
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

class _$_InsertLanguageProcess extends _InsertLanguageProcess {
  _$_InsertLanguageProcess(this.model) : super._();

  @override
  final LanguageProcessResponse? model;

  @override
  String toString() {
    return 'WorkingProcessClient.insertLanguageProcess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertLanguageProcess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertLanguageProcessCopyWith<_$_InsertLanguageProcess> get copyWith =>
      __$$_InsertLanguageProcessCopyWithImpl<_$_InsertLanguageProcess>(
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
      _$_InsertLanguageProcess;
  _InsertLanguageProcess._() : super._();

  LanguageProcessResponse? get model;
  @JsonKey(ignore: true)
  _$$_InsertLanguageProcessCopyWith<_$_InsertLanguageProcess> get copyWith =>
      throw _privateConstructorUsedError;
}
