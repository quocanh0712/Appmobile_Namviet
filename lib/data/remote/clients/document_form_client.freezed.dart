// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_form_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocumentFormClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentFormClientCopyWith<$Res> {
  factory $DocumentFormClientCopyWith(
          DocumentFormClient value, $Res Function(DocumentFormClient) then) =
      _$DocumentFormClientCopyWithImpl<$Res, DocumentFormClient>;
}

/// @nodoc
class _$DocumentFormClientCopyWithImpl<$Res, $Val extends DocumentFormClient>
    implements $DocumentFormClientCopyWith<$Res> {
  _$DocumentFormClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DocumentFormClientImplCopyWith<$Res> {
  factory _$$DocumentFormClientImplCopyWith(_$DocumentFormClientImpl value,
          $Res Function(_$DocumentFormClientImpl) then) =
      __$$DocumentFormClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentFormRequest? model});

  $DocumentFormRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DocumentFormClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$DocumentFormClientImpl>
    implements _$$DocumentFormClientImplCopyWith<$Res> {
  __$$DocumentFormClientImplCopyWithImpl(_$DocumentFormClientImpl _value,
      $Res Function(_$DocumentFormClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DocumentFormClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DocumentFormRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentFormRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DocumentFormRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DocumentFormClientImpl extends _DocumentFormClient {
  _$DocumentFormClientImpl(this.model) : super._();

  @override
  final DocumentFormRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.getDocumentForm(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentFormClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentFormClientImplCopyWith<_$DocumentFormClientImpl> get copyWith =>
      __$$DocumentFormClientImplCopyWithImpl<_$DocumentFormClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return getDocumentForm(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return getDocumentForm?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (getDocumentForm != null) {
      return getDocumentForm(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return getDocumentForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return getDocumentForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (getDocumentForm != null) {
      return getDocumentForm(this);
    }
    return orElse();
  }
}

abstract class _DocumentFormClient extends DocumentFormClient {
  factory _DocumentFormClient(final DocumentFormRequest? model) =
      _$DocumentFormClientImpl;
  _DocumentFormClient._() : super._();

  @override
  DocumentFormRequest? get model;
  @JsonKey(ignore: true)
  _$$DocumentFormClientImplCopyWith<_$DocumentFormClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadFileClientImplCopyWith<$Res> {
  factory _$$UploadFileClientImplCopyWith(_$UploadFileClientImpl value,
          $Res Function(_$UploadFileClientImpl) then) =
      __$$UploadFileClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadFileRequest? model});

  $UploadFileRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UploadFileClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$UploadFileClientImpl>
    implements _$$UploadFileClientImplCopyWith<$Res> {
  __$$UploadFileClientImplCopyWithImpl(_$UploadFileClientImpl _value,
      $Res Function(_$UploadFileClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UploadFileClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UploadFileRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadFileRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $UploadFileRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UploadFileClientImpl extends _UploadFileClient {
  _$UploadFileClientImpl(this.model) : super._();

  @override
  final UploadFileRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.uploadFile(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileClientImplCopyWith<_$UploadFileClientImpl> get copyWith =>
      __$$UploadFileClientImplCopyWithImpl<_$UploadFileClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return uploadFile(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return uploadFile?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return uploadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return uploadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (uploadFile != null) {
      return uploadFile(this);
    }
    return orElse();
  }
}

abstract class _UploadFileClient extends DocumentFormClient {
  factory _UploadFileClient(final UploadFileRequest? model) =
      _$UploadFileClientImpl;
  _UploadFileClient._() : super._();

  @override
  UploadFileRequest? get model;
  @JsonKey(ignore: true)
  _$$UploadFileClientImplCopyWith<_$UploadFileClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyRequestClientImplCopyWith<$Res> {
  factory _$$MyRequestClientImplCopyWith(_$MyRequestClientImpl value,
          $Res Function(_$MyRequestClientImpl) then) =
      __$$MyRequestClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyRequestDocumentRequest? model});

  $MyRequestDocumentRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$MyRequestClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$MyRequestClientImpl>
    implements _$$MyRequestClientImplCopyWith<$Res> {
  __$$MyRequestClientImplCopyWithImpl(
      _$MyRequestClientImpl _value, $Res Function(_$MyRequestClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$MyRequestClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MyRequestDocumentRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MyRequestDocumentRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $MyRequestDocumentRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$MyRequestClientImpl extends _MyRequestClient {
  _$MyRequestClientImpl(this.model) : super._();

  @override
  final MyRequestDocumentRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.getMyRequestDocument(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRequestClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyRequestClientImplCopyWith<_$MyRequestClientImpl> get copyWith =>
      __$$MyRequestClientImplCopyWithImpl<_$MyRequestClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return getMyRequestDocument(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return getMyRequestDocument?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (getMyRequestDocument != null) {
      return getMyRequestDocument(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return getMyRequestDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return getMyRequestDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (getMyRequestDocument != null) {
      return getMyRequestDocument(this);
    }
    return orElse();
  }
}

abstract class _MyRequestClient extends DocumentFormClient {
  factory _MyRequestClient(final MyRequestDocumentRequest? model) =
      _$MyRequestClientImpl;
  _MyRequestClient._() : super._();

  @override
  MyRequestDocumentRequest? get model;
  @JsonKey(ignore: true)
  _$$MyRequestClientImplCopyWith<_$MyRequestClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailRequestClientImplCopyWith<$Res> {
  factory _$$DetailRequestClientImplCopyWith(_$DetailRequestClientImpl value,
          $Res Function(_$DetailRequestClientImpl) then) =
      __$$DetailRequestClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailRequestDocumentRequest? model});

  $DetailRequestDocumentRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DetailRequestClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$DetailRequestClientImpl>
    implements _$$DetailRequestClientImplCopyWith<$Res> {
  __$$DetailRequestClientImplCopyWithImpl(_$DetailRequestClientImpl _value,
      $Res Function(_$DetailRequestClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DetailRequestClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DetailRequestDocumentRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailRequestDocumentRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DetailRequestDocumentRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DetailRequestClientImpl extends _DetailRequestClient {
  _$DetailRequestClientImpl(this.model) : super._();

  @override
  final DetailRequestDocumentRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.getDetailRequestDocument(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRequestClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRequestClientImplCopyWith<_$DetailRequestClientImpl> get copyWith =>
      __$$DetailRequestClientImplCopyWithImpl<_$DetailRequestClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return getDetailRequestDocument(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return getDetailRequestDocument?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (getDetailRequestDocument != null) {
      return getDetailRequestDocument(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return getDetailRequestDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return getDetailRequestDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (getDetailRequestDocument != null) {
      return getDetailRequestDocument(this);
    }
    return orElse();
  }
}

abstract class _DetailRequestClient extends DocumentFormClient {
  factory _DetailRequestClient(final DetailRequestDocumentRequest? model) =
      _$DetailRequestClientImpl;
  _DetailRequestClient._() : super._();

  @override
  DetailRequestDocumentRequest? get model;
  @JsonKey(ignore: true)
  _$$DetailRequestClientImplCopyWith<_$DetailRequestClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertNewRequestClientImplCopyWith<$Res> {
  factory _$$InsertNewRequestClientImplCopyWith(
          _$InsertNewRequestClientImpl value,
          $Res Function(_$InsertNewRequestClientImpl) then) =
      __$$InsertNewRequestClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentFormResponse? model});

  $DocumentFormResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertNewRequestClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$InsertNewRequestClientImpl>
    implements _$$InsertNewRequestClientImplCopyWith<$Res> {
  __$$InsertNewRequestClientImplCopyWithImpl(
      _$InsertNewRequestClientImpl _value,
      $Res Function(_$InsertNewRequestClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertNewRequestClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DocumentFormResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentFormResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DocumentFormResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertNewRequestClientImpl extends _InsertNewRequestClient {
  _$InsertNewRequestClientImpl(this.model) : super._();

  @override
  final DocumentFormResponse? model;

  @override
  String toString() {
    return 'DocumentFormClient.insertNewRequestDocument(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertNewRequestClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertNewRequestClientImplCopyWith<_$InsertNewRequestClientImpl>
      get copyWith => __$$InsertNewRequestClientImplCopyWithImpl<
          _$InsertNewRequestClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return insertNewRequestDocument(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return insertNewRequestDocument?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (insertNewRequestDocument != null) {
      return insertNewRequestDocument(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return insertNewRequestDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return insertNewRequestDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (insertNewRequestDocument != null) {
      return insertNewRequestDocument(this);
    }
    return orElse();
  }
}

abstract class _InsertNewRequestClient extends DocumentFormClient {
  factory _InsertNewRequestClient(final DocumentFormResponse? model) =
      _$InsertNewRequestClientImpl;
  _InsertNewRequestClient._() : super._();

  @override
  DocumentFormResponse? get model;
  @JsonKey(ignore: true)
  _$$InsertNewRequestClientImplCopyWith<_$InsertNewRequestClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRequestClientImplCopyWith<$Res> {
  factory _$$DeleteRequestClientImplCopyWith(_$DeleteRequestClientImpl value,
          $Res Function(_$DeleteRequestClientImpl) then) =
      __$$DeleteRequestClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteRequestModel? model});

  $DeleteRequestModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DeleteRequestClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$DeleteRequestClientImpl>
    implements _$$DeleteRequestClientImplCopyWith<$Res> {
  __$$DeleteRequestClientImplCopyWithImpl(_$DeleteRequestClientImpl _value,
      $Res Function(_$DeleteRequestClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DeleteRequestClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DeleteRequestModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteRequestModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DeleteRequestModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DeleteRequestClientImpl extends _DeleteRequestClient {
  _$DeleteRequestClientImpl(this.model) : super._();

  @override
  final DeleteRequestModel? model;

  @override
  String toString() {
    return 'DocumentFormClient.deleteRequestDocument(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRequestClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRequestClientImplCopyWith<_$DeleteRequestClientImpl> get copyWith =>
      __$$DeleteRequestClientImplCopyWithImpl<_$DeleteRequestClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return deleteRequestDocument(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return deleteRequestDocument?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (deleteRequestDocument != null) {
      return deleteRequestDocument(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return deleteRequestDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return deleteRequestDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (deleteRequestDocument != null) {
      return deleteRequestDocument(this);
    }
    return orElse();
  }
}

abstract class _DeleteRequestClient extends DocumentFormClient {
  factory _DeleteRequestClient(final DeleteRequestModel? model) =
      _$DeleteRequestClientImpl;
  _DeleteRequestClient._() : super._();

  @override
  DeleteRequestModel? get model;
  @JsonKey(ignore: true)
  _$$DeleteRequestClientImplCopyWith<_$DeleteRequestClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRequestClientImplCopyWith<$Res> {
  factory _$$UpdateRequestClientImplCopyWith(_$UpdateRequestClientImpl value,
          $Res Function(_$UpdateRequestClientImpl) then) =
      __$$UpdateRequestClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentFormResponse? model});

  $DocumentFormResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UpdateRequestClientImplCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$UpdateRequestClientImpl>
    implements _$$UpdateRequestClientImplCopyWith<$Res> {
  __$$UpdateRequestClientImplCopyWithImpl(_$UpdateRequestClientImpl _value,
      $Res Function(_$UpdateRequestClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateRequestClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DocumentFormResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentFormResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DocumentFormResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateRequestClientImpl extends _UpdateRequestClient {
  _$UpdateRequestClientImpl(this.model) : super._();

  @override
  final DocumentFormResponse? model;

  @override
  String toString() {
    return 'DocumentFormClient.updateRequestDocument(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequestClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequestClientImplCopyWith<_$UpdateRequestClientImpl> get copyWith =>
      __$$UpdateRequestClientImplCopyWithImpl<_$UpdateRequestClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentFormRequest? model) getDocumentForm,
    required TResult Function(UploadFileRequest? model) uploadFile,
    required TResult Function(MyRequestDocumentRequest? model)
        getMyRequestDocument,
    required TResult Function(DetailRequestDocumentRequest? model)
        getDetailRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        insertNewRequestDocument,
    required TResult Function(DeleteRequestModel? model) deleteRequestDocument,
    required TResult Function(DocumentFormResponse? model)
        updateRequestDocument,
  }) {
    return updateRequestDocument(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentFormRequest? model)? getDocumentForm,
    TResult? Function(UploadFileRequest? model)? uploadFile,
    TResult? Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult? Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult? Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult? Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult? Function(DocumentFormResponse? model)? updateRequestDocument,
  }) {
    return updateRequestDocument?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentFormRequest? model)? getDocumentForm,
    TResult Function(UploadFileRequest? model)? uploadFile,
    TResult Function(MyRequestDocumentRequest? model)? getMyRequestDocument,
    TResult Function(DetailRequestDocumentRequest? model)?
        getDetailRequestDocument,
    TResult Function(DocumentFormResponse? model)? insertNewRequestDocument,
    TResult Function(DeleteRequestModel? model)? deleteRequestDocument,
    TResult Function(DocumentFormResponse? model)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (updateRequestDocument != null) {
      return updateRequestDocument(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentFormClient value) getDocumentForm,
    required TResult Function(_UploadFileClient value) uploadFile,
    required TResult Function(_MyRequestClient value) getMyRequestDocument,
    required TResult Function(_DetailRequestClient value)
        getDetailRequestDocument,
    required TResult Function(_InsertNewRequestClient value)
        insertNewRequestDocument,
    required TResult Function(_DeleteRequestClient value) deleteRequestDocument,
    required TResult Function(_UpdateRequestClient value) updateRequestDocument,
  }) {
    return updateRequestDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentFormClient value)? getDocumentForm,
    TResult? Function(_UploadFileClient value)? uploadFile,
    TResult? Function(_MyRequestClient value)? getMyRequestDocument,
    TResult? Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult? Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult? Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult? Function(_UpdateRequestClient value)? updateRequestDocument,
  }) {
    return updateRequestDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentFormClient value)? getDocumentForm,
    TResult Function(_UploadFileClient value)? uploadFile,
    TResult Function(_MyRequestClient value)? getMyRequestDocument,
    TResult Function(_DetailRequestClient value)? getDetailRequestDocument,
    TResult Function(_InsertNewRequestClient value)? insertNewRequestDocument,
    TResult Function(_DeleteRequestClient value)? deleteRequestDocument,
    TResult Function(_UpdateRequestClient value)? updateRequestDocument,
    required TResult orElse(),
  }) {
    if (updateRequestDocument != null) {
      return updateRequestDocument(this);
    }
    return orElse();
  }
}

abstract class _UpdateRequestClient extends DocumentFormClient {
  factory _UpdateRequestClient(final DocumentFormResponse? model) =
      _$UpdateRequestClientImpl;
  _UpdateRequestClient._() : super._();

  @override
  DocumentFormResponse? get model;
  @JsonKey(ignore: true)
  _$$UpdateRequestClientImplCopyWith<_$UpdateRequestClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
