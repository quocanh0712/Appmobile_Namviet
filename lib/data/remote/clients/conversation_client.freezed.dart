// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationRequest? model) getListConversation,
    required TResult Function(CommentRequest? model) getListComment,
    required TResult Function(CommentInsertRequest? model) insertNewComment,
    required TResult Function(ConversationResponse? model)
        insertNewConversation,
    required TResult Function(ConversationResponse? model)
        updateNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationRequest? model)? getListConversation,
    TResult? Function(CommentRequest? model)? getListComment,
    TResult? Function(CommentInsertRequest? model)? insertNewComment,
    TResult? Function(ConversationResponse? model)? insertNewConversation,
    TResult? Function(ConversationResponse? model)? updateNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationRequest? model)? getListConversation,
    TResult Function(CommentRequest? model)? getListComment,
    TResult Function(CommentInsertRequest? model)? insertNewComment,
    TResult Function(ConversationResponse? model)? insertNewConversation,
    TResult Function(ConversationResponse? model)? updateNewConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationList value) getListConversation,
    required TResult Function(_CommentList value) getListComment,
    required TResult Function(_InsertNewComment value) insertNewComment,
    required TResult Function(_InsertNewConversation value)
        insertNewConversation,
    required TResult Function(_UpdateNewConversation value)
        updateNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationList value)? getListConversation,
    TResult? Function(_CommentList value)? getListComment,
    TResult? Function(_InsertNewComment value)? insertNewComment,
    TResult? Function(_InsertNewConversation value)? insertNewConversation,
    TResult? Function(_UpdateNewConversation value)? updateNewConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationList value)? getListConversation,
    TResult Function(_CommentList value)? getListComment,
    TResult Function(_InsertNewComment value)? insertNewComment,
    TResult Function(_InsertNewConversation value)? insertNewConversation,
    TResult Function(_UpdateNewConversation value)? updateNewConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationClientCopyWith<$Res> {
  factory $ConversationClientCopyWith(
          ConversationClient value, $Res Function(ConversationClient) then) =
      _$ConversationClientCopyWithImpl<$Res, ConversationClient>;
}

/// @nodoc
class _$ConversationClientCopyWithImpl<$Res, $Val extends ConversationClient>
    implements $ConversationClientCopyWith<$Res> {
  _$ConversationClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConversationListImplCopyWith<$Res> {
  factory _$$ConversationListImplCopyWith(_$ConversationListImpl value,
          $Res Function(_$ConversationListImpl) then) =
      __$$ConversationListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationRequest? model});

  $ConversationRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$ConversationListImplCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$ConversationListImpl>
    implements _$$ConversationListImplCopyWith<$Res> {
  __$$ConversationListImplCopyWithImpl(_$ConversationListImpl _value,
      $Res Function(_$ConversationListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$ConversationListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ConversationRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ConversationRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ConversationListImpl extends _ConversationList {
  _$ConversationListImpl(this.model) : super._();

  @override
  final ConversationRequest? model;

  @override
  String toString() {
    return 'ConversationClient.getListConversation(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationListImplCopyWith<_$ConversationListImpl> get copyWith =>
      __$$ConversationListImplCopyWithImpl<_$ConversationListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationRequest? model) getListConversation,
    required TResult Function(CommentRequest? model) getListComment,
    required TResult Function(CommentInsertRequest? model) insertNewComment,
    required TResult Function(ConversationResponse? model)
        insertNewConversation,
    required TResult Function(ConversationResponse? model)
        updateNewConversation,
  }) {
    return getListConversation(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationRequest? model)? getListConversation,
    TResult? Function(CommentRequest? model)? getListComment,
    TResult? Function(CommentInsertRequest? model)? insertNewComment,
    TResult? Function(ConversationResponse? model)? insertNewConversation,
    TResult? Function(ConversationResponse? model)? updateNewConversation,
  }) {
    return getListConversation?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationRequest? model)? getListConversation,
    TResult Function(CommentRequest? model)? getListComment,
    TResult Function(CommentInsertRequest? model)? insertNewComment,
    TResult Function(ConversationResponse? model)? insertNewConversation,
    TResult Function(ConversationResponse? model)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (getListConversation != null) {
      return getListConversation(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationList value) getListConversation,
    required TResult Function(_CommentList value) getListComment,
    required TResult Function(_InsertNewComment value) insertNewComment,
    required TResult Function(_InsertNewConversation value)
        insertNewConversation,
    required TResult Function(_UpdateNewConversation value)
        updateNewConversation,
  }) {
    return getListConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationList value)? getListConversation,
    TResult? Function(_CommentList value)? getListComment,
    TResult? Function(_InsertNewComment value)? insertNewComment,
    TResult? Function(_InsertNewConversation value)? insertNewConversation,
    TResult? Function(_UpdateNewConversation value)? updateNewConversation,
  }) {
    return getListConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationList value)? getListConversation,
    TResult Function(_CommentList value)? getListComment,
    TResult Function(_InsertNewComment value)? insertNewComment,
    TResult Function(_InsertNewConversation value)? insertNewConversation,
    TResult Function(_UpdateNewConversation value)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (getListConversation != null) {
      return getListConversation(this);
    }
    return orElse();
  }
}

abstract class _ConversationList extends ConversationClient {
  factory _ConversationList(final ConversationRequest? model) =
      _$ConversationListImpl;
  _ConversationList._() : super._();

  @override
  ConversationRequest? get model;
  @JsonKey(ignore: true)
  _$$ConversationListImplCopyWith<_$ConversationListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentListImplCopyWith<$Res> {
  factory _$$CommentListImplCopyWith(
          _$CommentListImpl value, $Res Function(_$CommentListImpl) then) =
      __$$CommentListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentRequest? model});

  $CommentRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$CommentListImplCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$CommentListImpl>
    implements _$$CommentListImplCopyWith<$Res> {
  __$$CommentListImplCopyWithImpl(
      _$CommentListImpl _value, $Res Function(_$CommentListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$CommentListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommentRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CommentRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CommentListImpl extends _CommentList {
  _$CommentListImpl(this.model) : super._();

  @override
  final CommentRequest? model;

  @override
  String toString() {
    return 'ConversationClient.getListComment(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentListImplCopyWith<_$CommentListImpl> get copyWith =>
      __$$CommentListImplCopyWithImpl<_$CommentListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationRequest? model) getListConversation,
    required TResult Function(CommentRequest? model) getListComment,
    required TResult Function(CommentInsertRequest? model) insertNewComment,
    required TResult Function(ConversationResponse? model)
        insertNewConversation,
    required TResult Function(ConversationResponse? model)
        updateNewConversation,
  }) {
    return getListComment(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationRequest? model)? getListConversation,
    TResult? Function(CommentRequest? model)? getListComment,
    TResult? Function(CommentInsertRequest? model)? insertNewComment,
    TResult? Function(ConversationResponse? model)? insertNewConversation,
    TResult? Function(ConversationResponse? model)? updateNewConversation,
  }) {
    return getListComment?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationRequest? model)? getListConversation,
    TResult Function(CommentRequest? model)? getListComment,
    TResult Function(CommentInsertRequest? model)? insertNewComment,
    TResult Function(ConversationResponse? model)? insertNewConversation,
    TResult Function(ConversationResponse? model)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (getListComment != null) {
      return getListComment(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationList value) getListConversation,
    required TResult Function(_CommentList value) getListComment,
    required TResult Function(_InsertNewComment value) insertNewComment,
    required TResult Function(_InsertNewConversation value)
        insertNewConversation,
    required TResult Function(_UpdateNewConversation value)
        updateNewConversation,
  }) {
    return getListComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationList value)? getListConversation,
    TResult? Function(_CommentList value)? getListComment,
    TResult? Function(_InsertNewComment value)? insertNewComment,
    TResult? Function(_InsertNewConversation value)? insertNewConversation,
    TResult? Function(_UpdateNewConversation value)? updateNewConversation,
  }) {
    return getListComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationList value)? getListConversation,
    TResult Function(_CommentList value)? getListComment,
    TResult Function(_InsertNewComment value)? insertNewComment,
    TResult Function(_InsertNewConversation value)? insertNewConversation,
    TResult Function(_UpdateNewConversation value)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (getListComment != null) {
      return getListComment(this);
    }
    return orElse();
  }
}

abstract class _CommentList extends ConversationClient {
  factory _CommentList(final CommentRequest? model) = _$CommentListImpl;
  _CommentList._() : super._();

  @override
  CommentRequest? get model;
  @JsonKey(ignore: true)
  _$$CommentListImplCopyWith<_$CommentListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertNewCommentImplCopyWith<$Res> {
  factory _$$InsertNewCommentImplCopyWith(_$InsertNewCommentImpl value,
          $Res Function(_$InsertNewCommentImpl) then) =
      __$$InsertNewCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentInsertRequest? model});

  $CommentInsertRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertNewCommentImplCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$InsertNewCommentImpl>
    implements _$$InsertNewCommentImplCopyWith<$Res> {
  __$$InsertNewCommentImplCopyWithImpl(_$InsertNewCommentImpl _value,
      $Res Function(_$InsertNewCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertNewCommentImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommentInsertRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentInsertRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CommentInsertRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertNewCommentImpl extends _InsertNewComment {
  _$InsertNewCommentImpl(this.model) : super._();

  @override
  final CommentInsertRequest? model;

  @override
  String toString() {
    return 'ConversationClient.insertNewComment(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertNewCommentImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertNewCommentImplCopyWith<_$InsertNewCommentImpl> get copyWith =>
      __$$InsertNewCommentImplCopyWithImpl<_$InsertNewCommentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationRequest? model) getListConversation,
    required TResult Function(CommentRequest? model) getListComment,
    required TResult Function(CommentInsertRequest? model) insertNewComment,
    required TResult Function(ConversationResponse? model)
        insertNewConversation,
    required TResult Function(ConversationResponse? model)
        updateNewConversation,
  }) {
    return insertNewComment(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationRequest? model)? getListConversation,
    TResult? Function(CommentRequest? model)? getListComment,
    TResult? Function(CommentInsertRequest? model)? insertNewComment,
    TResult? Function(ConversationResponse? model)? insertNewConversation,
    TResult? Function(ConversationResponse? model)? updateNewConversation,
  }) {
    return insertNewComment?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationRequest? model)? getListConversation,
    TResult Function(CommentRequest? model)? getListComment,
    TResult Function(CommentInsertRequest? model)? insertNewComment,
    TResult Function(ConversationResponse? model)? insertNewConversation,
    TResult Function(ConversationResponse? model)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (insertNewComment != null) {
      return insertNewComment(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationList value) getListConversation,
    required TResult Function(_CommentList value) getListComment,
    required TResult Function(_InsertNewComment value) insertNewComment,
    required TResult Function(_InsertNewConversation value)
        insertNewConversation,
    required TResult Function(_UpdateNewConversation value)
        updateNewConversation,
  }) {
    return insertNewComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationList value)? getListConversation,
    TResult? Function(_CommentList value)? getListComment,
    TResult? Function(_InsertNewComment value)? insertNewComment,
    TResult? Function(_InsertNewConversation value)? insertNewConversation,
    TResult? Function(_UpdateNewConversation value)? updateNewConversation,
  }) {
    return insertNewComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationList value)? getListConversation,
    TResult Function(_CommentList value)? getListComment,
    TResult Function(_InsertNewComment value)? insertNewComment,
    TResult Function(_InsertNewConversation value)? insertNewConversation,
    TResult Function(_UpdateNewConversation value)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (insertNewComment != null) {
      return insertNewComment(this);
    }
    return orElse();
  }
}

abstract class _InsertNewComment extends ConversationClient {
  factory _InsertNewComment(final CommentInsertRequest? model) =
      _$InsertNewCommentImpl;
  _InsertNewComment._() : super._();

  @override
  CommentInsertRequest? get model;
  @JsonKey(ignore: true)
  _$$InsertNewCommentImplCopyWith<_$InsertNewCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertNewConversationImplCopyWith<$Res> {
  factory _$$InsertNewConversationImplCopyWith(
          _$InsertNewConversationImpl value,
          $Res Function(_$InsertNewConversationImpl) then) =
      __$$InsertNewConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationResponse? model});

  $ConversationResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertNewConversationImplCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$InsertNewConversationImpl>
    implements _$$InsertNewConversationImplCopyWith<$Res> {
  __$$InsertNewConversationImplCopyWithImpl(_$InsertNewConversationImpl _value,
      $Res Function(_$InsertNewConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertNewConversationImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ConversationResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ConversationResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertNewConversationImpl extends _InsertNewConversation {
  _$InsertNewConversationImpl(this.model) : super._();

  @override
  final ConversationResponse? model;

  @override
  String toString() {
    return 'ConversationClient.insertNewConversation(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertNewConversationImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertNewConversationImplCopyWith<_$InsertNewConversationImpl>
      get copyWith => __$$InsertNewConversationImplCopyWithImpl<
          _$InsertNewConversationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationRequest? model) getListConversation,
    required TResult Function(CommentRequest? model) getListComment,
    required TResult Function(CommentInsertRequest? model) insertNewComment,
    required TResult Function(ConversationResponse? model)
        insertNewConversation,
    required TResult Function(ConversationResponse? model)
        updateNewConversation,
  }) {
    return insertNewConversation(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationRequest? model)? getListConversation,
    TResult? Function(CommentRequest? model)? getListComment,
    TResult? Function(CommentInsertRequest? model)? insertNewComment,
    TResult? Function(ConversationResponse? model)? insertNewConversation,
    TResult? Function(ConversationResponse? model)? updateNewConversation,
  }) {
    return insertNewConversation?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationRequest? model)? getListConversation,
    TResult Function(CommentRequest? model)? getListComment,
    TResult Function(CommentInsertRequest? model)? insertNewComment,
    TResult Function(ConversationResponse? model)? insertNewConversation,
    TResult Function(ConversationResponse? model)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (insertNewConversation != null) {
      return insertNewConversation(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationList value) getListConversation,
    required TResult Function(_CommentList value) getListComment,
    required TResult Function(_InsertNewComment value) insertNewComment,
    required TResult Function(_InsertNewConversation value)
        insertNewConversation,
    required TResult Function(_UpdateNewConversation value)
        updateNewConversation,
  }) {
    return insertNewConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationList value)? getListConversation,
    TResult? Function(_CommentList value)? getListComment,
    TResult? Function(_InsertNewComment value)? insertNewComment,
    TResult? Function(_InsertNewConversation value)? insertNewConversation,
    TResult? Function(_UpdateNewConversation value)? updateNewConversation,
  }) {
    return insertNewConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationList value)? getListConversation,
    TResult Function(_CommentList value)? getListComment,
    TResult Function(_InsertNewComment value)? insertNewComment,
    TResult Function(_InsertNewConversation value)? insertNewConversation,
    TResult Function(_UpdateNewConversation value)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (insertNewConversation != null) {
      return insertNewConversation(this);
    }
    return orElse();
  }
}

abstract class _InsertNewConversation extends ConversationClient {
  factory _InsertNewConversation(final ConversationResponse? model) =
      _$InsertNewConversationImpl;
  _InsertNewConversation._() : super._();

  @override
  ConversationResponse? get model;
  @JsonKey(ignore: true)
  _$$InsertNewConversationImplCopyWith<_$InsertNewConversationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNewConversationImplCopyWith<$Res> {
  factory _$$UpdateNewConversationImplCopyWith(
          _$UpdateNewConversationImpl value,
          $Res Function(_$UpdateNewConversationImpl) then) =
      __$$UpdateNewConversationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationResponse? model});

  $ConversationResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$UpdateNewConversationImplCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$UpdateNewConversationImpl>
    implements _$$UpdateNewConversationImplCopyWith<$Res> {
  __$$UpdateNewConversationImplCopyWithImpl(_$UpdateNewConversationImpl _value,
      $Res Function(_$UpdateNewConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateNewConversationImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ConversationResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationResponseCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ConversationResponseCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$UpdateNewConversationImpl extends _UpdateNewConversation {
  _$UpdateNewConversationImpl(this.model) : super._();

  @override
  final ConversationResponse? model;

  @override
  String toString() {
    return 'ConversationClient.updateNewConversation(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNewConversationImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNewConversationImplCopyWith<_$UpdateNewConversationImpl>
      get copyWith => __$$UpdateNewConversationImplCopyWithImpl<
          _$UpdateNewConversationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationRequest? model) getListConversation,
    required TResult Function(CommentRequest? model) getListComment,
    required TResult Function(CommentInsertRequest? model) insertNewComment,
    required TResult Function(ConversationResponse? model)
        insertNewConversation,
    required TResult Function(ConversationResponse? model)
        updateNewConversation,
  }) {
    return updateNewConversation(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationRequest? model)? getListConversation,
    TResult? Function(CommentRequest? model)? getListComment,
    TResult? Function(CommentInsertRequest? model)? insertNewComment,
    TResult? Function(ConversationResponse? model)? insertNewConversation,
    TResult? Function(ConversationResponse? model)? updateNewConversation,
  }) {
    return updateNewConversation?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationRequest? model)? getListConversation,
    TResult Function(CommentRequest? model)? getListComment,
    TResult Function(CommentInsertRequest? model)? insertNewComment,
    TResult Function(ConversationResponse? model)? insertNewConversation,
    TResult Function(ConversationResponse? model)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (updateNewConversation != null) {
      return updateNewConversation(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConversationList value) getListConversation,
    required TResult Function(_CommentList value) getListComment,
    required TResult Function(_InsertNewComment value) insertNewComment,
    required TResult Function(_InsertNewConversation value)
        insertNewConversation,
    required TResult Function(_UpdateNewConversation value)
        updateNewConversation,
  }) {
    return updateNewConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConversationList value)? getListConversation,
    TResult? Function(_CommentList value)? getListComment,
    TResult? Function(_InsertNewComment value)? insertNewComment,
    TResult? Function(_InsertNewConversation value)? insertNewConversation,
    TResult? Function(_UpdateNewConversation value)? updateNewConversation,
  }) {
    return updateNewConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConversationList value)? getListConversation,
    TResult Function(_CommentList value)? getListComment,
    TResult Function(_InsertNewComment value)? insertNewComment,
    TResult Function(_InsertNewConversation value)? insertNewConversation,
    TResult Function(_UpdateNewConversation value)? updateNewConversation,
    required TResult orElse(),
  }) {
    if (updateNewConversation != null) {
      return updateNewConversation(this);
    }
    return orElse();
  }
}

abstract class _UpdateNewConversation extends ConversationClient {
  factory _UpdateNewConversation(final ConversationResponse? model) =
      _$UpdateNewConversationImpl;
  _UpdateNewConversation._() : super._();

  @override
  ConversationResponse? get model;
  @JsonKey(ignore: true)
  _$$UpdateNewConversationImplCopyWith<_$UpdateNewConversationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
