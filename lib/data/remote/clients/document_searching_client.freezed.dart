// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_searching_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocumentSearchingClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentSearchingRequest? model) getDocumentList,
    required TResult Function(CreateEmailResponse? model) sendEmail,
    required TResult Function(AllUserRequest? model) getAllUser,
    required TResult Function(int? id, String? idUser) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult? Function(CreateEmailResponse? model)? sendEmail,
    TResult? Function(AllUserRequest? model)? getAllUser,
    TResult? Function(int? id, String? idUser)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult Function(CreateEmailResponse? model)? sendEmail,
    TResult Function(AllUserRequest? model)? getAllUser,
    TResult Function(int? id, String? idUser)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentSearchingClient value) getDocumentList,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_GetAllRequest value) getAllUser,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_GetAllRequest value)? getAllUser,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_GetAllRequest value)? getAllUser,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentSearchingClientCopyWith<$Res> {
  factory $DocumentSearchingClientCopyWith(DocumentSearchingClient value,
          $Res Function(DocumentSearchingClient) then) =
      _$DocumentSearchingClientCopyWithImpl<$Res, DocumentSearchingClient>;
}

/// @nodoc
class _$DocumentSearchingClientCopyWithImpl<$Res,
        $Val extends DocumentSearchingClient>
    implements $DocumentSearchingClientCopyWith<$Res> {
  _$DocumentSearchingClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DocumentSearchingClientImplCopyWith<$Res> {
  factory _$$DocumentSearchingClientImplCopyWith(
          _$DocumentSearchingClientImpl value,
          $Res Function(_$DocumentSearchingClientImpl) then) =
      __$$DocumentSearchingClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentSearchingRequest? model});

  $DocumentSearchingRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DocumentSearchingClientImplCopyWithImpl<$Res>
    extends _$DocumentSearchingClientCopyWithImpl<$Res,
        _$DocumentSearchingClientImpl>
    implements _$$DocumentSearchingClientImplCopyWith<$Res> {
  __$$DocumentSearchingClientImplCopyWithImpl(
      _$DocumentSearchingClientImpl _value,
      $Res Function(_$DocumentSearchingClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DocumentSearchingClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DocumentSearchingRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentSearchingRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DocumentSearchingRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DocumentSearchingClientImpl extends _DocumentSearchingClient {
  _$DocumentSearchingClientImpl(this.model) : super._();

  @override
  final DocumentSearchingRequest? model;

  @override
  String toString() {
    return 'DocumentSearchingClient.getDocumentList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentSearchingClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentSearchingClientImplCopyWith<_$DocumentSearchingClientImpl>
      get copyWith => __$$DocumentSearchingClientImplCopyWithImpl<
          _$DocumentSearchingClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentSearchingRequest? model) getDocumentList,
    required TResult Function(CreateEmailResponse? model) sendEmail,
    required TResult Function(AllUserRequest? model) getAllUser,
    required TResult Function(int? id, String? idUser) updateStatus,
  }) {
    return getDocumentList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult? Function(CreateEmailResponse? model)? sendEmail,
    TResult? Function(AllUserRequest? model)? getAllUser,
    TResult? Function(int? id, String? idUser)? updateStatus,
  }) {
    return getDocumentList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult Function(CreateEmailResponse? model)? sendEmail,
    TResult Function(AllUserRequest? model)? getAllUser,
    TResult Function(int? id, String? idUser)? updateStatus,
    required TResult orElse(),
  }) {
    if (getDocumentList != null) {
      return getDocumentList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentSearchingClient value) getDocumentList,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_GetAllRequest value) getAllUser,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) {
    return getDocumentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_GetAllRequest value)? getAllUser,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return getDocumentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_GetAllRequest value)? getAllUser,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (getDocumentList != null) {
      return getDocumentList(this);
    }
    return orElse();
  }
}

abstract class _DocumentSearchingClient extends DocumentSearchingClient {
  factory _DocumentSearchingClient(final DocumentSearchingRequest? model) =
      _$DocumentSearchingClientImpl;
  _DocumentSearchingClient._() : super._();

  DocumentSearchingRequest? get model;
  @JsonKey(ignore: true)
  _$$DocumentSearchingClientImplCopyWith<_$DocumentSearchingClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendEmailImplCopyWith<$Res> {
  factory _$$SendEmailImplCopyWith(
          _$SendEmailImpl value, $Res Function(_$SendEmailImpl) then) =
      __$$SendEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateEmailResponse? model});

  $CreateEmailResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$SendEmailImplCopyWithImpl<$Res>
    extends _$DocumentSearchingClientCopyWithImpl<$Res, _$SendEmailImpl>
    implements _$$SendEmailImplCopyWith<$Res> {
  __$$SendEmailImplCopyWithImpl(
      _$SendEmailImpl _value, $Res Function(_$SendEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$SendEmailImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateEmailResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateEmailResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CreateEmailResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SendEmailImpl extends _SendEmail {
  _$SendEmailImpl(this.model) : super._();

  @override
  final CreateEmailResponse? model;

  @override
  String toString() {
    return 'DocumentSearchingClient.sendEmail(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailImplCopyWith<_$SendEmailImpl> get copyWith =>
      __$$SendEmailImplCopyWithImpl<_$SendEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentSearchingRequest? model) getDocumentList,
    required TResult Function(CreateEmailResponse? model) sendEmail,
    required TResult Function(AllUserRequest? model) getAllUser,
    required TResult Function(int? id, String? idUser) updateStatus,
  }) {
    return sendEmail(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult? Function(CreateEmailResponse? model)? sendEmail,
    TResult? Function(AllUserRequest? model)? getAllUser,
    TResult? Function(int? id, String? idUser)? updateStatus,
  }) {
    return sendEmail?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult Function(CreateEmailResponse? model)? sendEmail,
    TResult Function(AllUserRequest? model)? getAllUser,
    TResult Function(int? id, String? idUser)? updateStatus,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentSearchingClient value) getDocumentList,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_GetAllRequest value) getAllUser,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) {
    return sendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_GetAllRequest value)? getAllUser,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return sendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_GetAllRequest value)? getAllUser,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class _SendEmail extends DocumentSearchingClient {
  factory _SendEmail(final CreateEmailResponse? model) = _$SendEmailImpl;
  _SendEmail._() : super._();

  CreateEmailResponse? get model;
  @JsonKey(ignore: true)
  _$$SendEmailImplCopyWith<_$SendEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllRequestImplCopyWith<$Res> {
  factory _$$GetAllRequestImplCopyWith(
          _$GetAllRequestImpl value, $Res Function(_$GetAllRequestImpl) then) =
      __$$GetAllRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllUserRequest? model});

  $AllUserRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$GetAllRequestImplCopyWithImpl<$Res>
    extends _$DocumentSearchingClientCopyWithImpl<$Res, _$GetAllRequestImpl>
    implements _$$GetAllRequestImplCopyWith<$Res> {
  __$$GetAllRequestImplCopyWithImpl(
      _$GetAllRequestImpl _value, $Res Function(_$GetAllRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$GetAllRequestImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AllUserRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AllUserRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $AllUserRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$GetAllRequestImpl extends _GetAllRequest {
  _$GetAllRequestImpl(this.model) : super._();

  @override
  final AllUserRequest? model;

  @override
  String toString() {
    return 'DocumentSearchingClient.getAllUser(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllRequestImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllRequestImplCopyWith<_$GetAllRequestImpl> get copyWith =>
      __$$GetAllRequestImplCopyWithImpl<_$GetAllRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentSearchingRequest? model) getDocumentList,
    required TResult Function(CreateEmailResponse? model) sendEmail,
    required TResult Function(AllUserRequest? model) getAllUser,
    required TResult Function(int? id, String? idUser) updateStatus,
  }) {
    return getAllUser(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult? Function(CreateEmailResponse? model)? sendEmail,
    TResult? Function(AllUserRequest? model)? getAllUser,
    TResult? Function(int? id, String? idUser)? updateStatus,
  }) {
    return getAllUser?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult Function(CreateEmailResponse? model)? sendEmail,
    TResult Function(AllUserRequest? model)? getAllUser,
    TResult Function(int? id, String? idUser)? updateStatus,
    required TResult orElse(),
  }) {
    if (getAllUser != null) {
      return getAllUser(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentSearchingClient value) getDocumentList,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_GetAllRequest value) getAllUser,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) {
    return getAllUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_GetAllRequest value)? getAllUser,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return getAllUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_GetAllRequest value)? getAllUser,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (getAllUser != null) {
      return getAllUser(this);
    }
    return orElse();
  }
}

abstract class _GetAllRequest extends DocumentSearchingClient {
  factory _GetAllRequest(final AllUserRequest? model) = _$GetAllRequestImpl;
  _GetAllRequest._() : super._();

  AllUserRequest? get model;
  @JsonKey(ignore: true)
  _$$GetAllRequestImplCopyWith<_$GetAllRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id, String? idUser});
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$DocumentSearchingClientCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
      _$UpdateStatusImpl _value, $Res Function(_$UpdateStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
  }) {
    return _then(_$UpdateStatusImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateStatusImpl extends _UpdateStatus {
  _$UpdateStatusImpl(this.id, this.idUser) : super._();

  @override
  final int? id;
  @override
  final String? idUser;

  @override
  String toString() {
    return 'DocumentSearchingClient.updateStatus(id: $id, idUser: $idUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, idUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      __$$UpdateStatusImplCopyWithImpl<_$UpdateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentSearchingRequest? model) getDocumentList,
    required TResult Function(CreateEmailResponse? model) sendEmail,
    required TResult Function(AllUserRequest? model) getAllUser,
    required TResult Function(int? id, String? idUser) updateStatus,
  }) {
    return updateStatus(id, idUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult? Function(CreateEmailResponse? model)? sendEmail,
    TResult? Function(AllUserRequest? model)? getAllUser,
    TResult? Function(int? id, String? idUser)? updateStatus,
  }) {
    return updateStatus?.call(id, idUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
    TResult Function(CreateEmailResponse? model)? sendEmail,
    TResult Function(AllUserRequest? model)? getAllUser,
    TResult Function(int? id, String? idUser)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(id, idUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentSearchingClient value) getDocumentList,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_GetAllRequest value) getAllUser,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_GetAllRequest value)? getAllUser,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_GetAllRequest value)? getAllUser,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatus extends DocumentSearchingClient {
  factory _UpdateStatus(final int? id, final String? idUser) =
      _$UpdateStatusImpl;
  _UpdateStatus._() : super._();

  int? get id;
  String? get idUser;
  @JsonKey(ignore: true)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
