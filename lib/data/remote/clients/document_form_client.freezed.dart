// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document_form_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentFormClient {
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
abstract class _$$_DocumentFormClientCopyWith<$Res> {
  factory _$$_DocumentFormClientCopyWith(_$_DocumentFormClient value,
          $Res Function(_$_DocumentFormClient) then) =
      __$$_DocumentFormClientCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentFormRequest? model});

  $DocumentFormRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DocumentFormClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_DocumentFormClient>
    implements _$$_DocumentFormClientCopyWith<$Res> {
  __$$_DocumentFormClientCopyWithImpl(
      _$_DocumentFormClient _value, $Res Function(_$_DocumentFormClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DocumentFormClient(
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

class _$_DocumentFormClient extends _DocumentFormClient {
  _$_DocumentFormClient(this.model) : super._();

  @override
  final DocumentFormRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.getDocumentForm(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentFormClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentFormClientCopyWith<_$_DocumentFormClient> get copyWith =>
      __$$_DocumentFormClientCopyWithImpl<_$_DocumentFormClient>(
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
      _$_DocumentFormClient;
  _DocumentFormClient._() : super._();

  DocumentFormRequest? get model;
  @JsonKey(ignore: true)
  _$$_DocumentFormClientCopyWith<_$_DocumentFormClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadFileClientCopyWith<$Res> {
  factory _$$_UploadFileClientCopyWith(
          _$_UploadFileClient value, $Res Function(_$_UploadFileClient) then) =
      __$$_UploadFileClientCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadFileRequest? model});

  $UploadFileRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UploadFileClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_UploadFileClient>
    implements _$$_UploadFileClientCopyWith<$Res> {
  __$$_UploadFileClientCopyWithImpl(
      _$_UploadFileClient _value, $Res Function(_$_UploadFileClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UploadFileClient(
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

class _$_UploadFileClient extends _UploadFileClient {
  _$_UploadFileClient(this.model) : super._();

  @override
  final UploadFileRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.uploadFile(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadFileClientCopyWith<_$_UploadFileClient> get copyWith =>
      __$$_UploadFileClientCopyWithImpl<_$_UploadFileClient>(this, _$identity);

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
      _$_UploadFileClient;
  _UploadFileClient._() : super._();

  UploadFileRequest? get model;
  @JsonKey(ignore: true)
  _$$_UploadFileClientCopyWith<_$_UploadFileClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MyRequestClientCopyWith<$Res> {
  factory _$$_MyRequestClientCopyWith(
          _$_MyRequestClient value, $Res Function(_$_MyRequestClient) then) =
      __$$_MyRequestClientCopyWithImpl<$Res>;
  @useResult
  $Res call({MyRequestDocumentRequest? model});

  $MyRequestDocumentRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_MyRequestClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_MyRequestClient>
    implements _$$_MyRequestClientCopyWith<$Res> {
  __$$_MyRequestClientCopyWithImpl(
      _$_MyRequestClient _value, $Res Function(_$_MyRequestClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_MyRequestClient(
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

class _$_MyRequestClient extends _MyRequestClient {
  _$_MyRequestClient(this.model) : super._();

  @override
  final MyRequestDocumentRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.getMyRequestDocument(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyRequestClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyRequestClientCopyWith<_$_MyRequestClient> get copyWith =>
      __$$_MyRequestClientCopyWithImpl<_$_MyRequestClient>(this, _$identity);

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
      _$_MyRequestClient;
  _MyRequestClient._() : super._();

  MyRequestDocumentRequest? get model;
  @JsonKey(ignore: true)
  _$$_MyRequestClientCopyWith<_$_MyRequestClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DetailRequestClientCopyWith<$Res> {
  factory _$$_DetailRequestClientCopyWith(_$_DetailRequestClient value,
          $Res Function(_$_DetailRequestClient) then) =
      __$$_DetailRequestClientCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailRequestDocumentRequest? model});

  $DetailRequestDocumentRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DetailRequestClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_DetailRequestClient>
    implements _$$_DetailRequestClientCopyWith<$Res> {
  __$$_DetailRequestClientCopyWithImpl(_$_DetailRequestClient _value,
      $Res Function(_$_DetailRequestClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DetailRequestClient(
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

class _$_DetailRequestClient extends _DetailRequestClient {
  _$_DetailRequestClient(this.model) : super._();

  @override
  final DetailRequestDocumentRequest? model;

  @override
  String toString() {
    return 'DocumentFormClient.getDetailRequestDocument(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailRequestClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailRequestClientCopyWith<_$_DetailRequestClient> get copyWith =>
      __$$_DetailRequestClientCopyWithImpl<_$_DetailRequestClient>(
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
      _$_DetailRequestClient;
  _DetailRequestClient._() : super._();

  DetailRequestDocumentRequest? get model;
  @JsonKey(ignore: true)
  _$$_DetailRequestClientCopyWith<_$_DetailRequestClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertNewRequestClientCopyWith<$Res> {
  factory _$$_InsertNewRequestClientCopyWith(_$_InsertNewRequestClient value,
          $Res Function(_$_InsertNewRequestClient) then) =
      __$$_InsertNewRequestClientCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentFormResponse? model});

  $DocumentFormResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_InsertNewRequestClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_InsertNewRequestClient>
    implements _$$_InsertNewRequestClientCopyWith<$Res> {
  __$$_InsertNewRequestClientCopyWithImpl(_$_InsertNewRequestClient _value,
      $Res Function(_$_InsertNewRequestClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_InsertNewRequestClient(
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

class _$_InsertNewRequestClient extends _InsertNewRequestClient {
  _$_InsertNewRequestClient(this.model) : super._();

  @override
  final DocumentFormResponse? model;

  @override
  String toString() {
    return 'DocumentFormClient.insertNewRequestDocument(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertNewRequestClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNewRequestClientCopyWith<_$_InsertNewRequestClient> get copyWith =>
      __$$_InsertNewRequestClientCopyWithImpl<_$_InsertNewRequestClient>(
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
      _$_InsertNewRequestClient;
  _InsertNewRequestClient._() : super._();

  DocumentFormResponse? get model;
  @JsonKey(ignore: true)
  _$$_InsertNewRequestClientCopyWith<_$_InsertNewRequestClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteRequestClientCopyWith<$Res> {
  factory _$$_DeleteRequestClientCopyWith(_$_DeleteRequestClient value,
          $Res Function(_$_DeleteRequestClient) then) =
      __$$_DeleteRequestClientCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteRequestModel? model});

  $DeleteRequestModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DeleteRequestClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_DeleteRequestClient>
    implements _$$_DeleteRequestClientCopyWith<$Res> {
  __$$_DeleteRequestClientCopyWithImpl(_$_DeleteRequestClient _value,
      $Res Function(_$_DeleteRequestClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DeleteRequestClient(
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

class _$_DeleteRequestClient extends _DeleteRequestClient {
  _$_DeleteRequestClient(this.model) : super._();

  @override
  final DeleteRequestModel? model;

  @override
  String toString() {
    return 'DocumentFormClient.deleteRequestDocument(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRequestClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRequestClientCopyWith<_$_DeleteRequestClient> get copyWith =>
      __$$_DeleteRequestClientCopyWithImpl<_$_DeleteRequestClient>(
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
      _$_DeleteRequestClient;
  _DeleteRequestClient._() : super._();

  DeleteRequestModel? get model;
  @JsonKey(ignore: true)
  _$$_DeleteRequestClientCopyWith<_$_DeleteRequestClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateRequestClientCopyWith<$Res> {
  factory _$$_UpdateRequestClientCopyWith(_$_UpdateRequestClient value,
          $Res Function(_$_UpdateRequestClient) then) =
      __$$_UpdateRequestClientCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentFormResponse? model});

  $DocumentFormResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UpdateRequestClientCopyWithImpl<$Res>
    extends _$DocumentFormClientCopyWithImpl<$Res, _$_UpdateRequestClient>
    implements _$$_UpdateRequestClientCopyWith<$Res> {
  __$$_UpdateRequestClientCopyWithImpl(_$_UpdateRequestClient _value,
      $Res Function(_$_UpdateRequestClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UpdateRequestClient(
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

class _$_UpdateRequestClient extends _UpdateRequestClient {
  _$_UpdateRequestClient(this.model) : super._();

  @override
  final DocumentFormResponse? model;

  @override
  String toString() {
    return 'DocumentFormClient.updateRequestDocument(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateRequestClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateRequestClientCopyWith<_$_UpdateRequestClient> get copyWith =>
      __$$_UpdateRequestClientCopyWithImpl<_$_UpdateRequestClient>(
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
      _$_UpdateRequestClient;
  _UpdateRequestClient._() : super._();

  DocumentFormResponse? get model;
  @JsonKey(ignore: true)
  _$$_UpdateRequestClientCopyWith<_$_UpdateRequestClient> get copyWith =>
      throw _privateConstructorUsedError;
}
