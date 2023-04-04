// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationClient {
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
abstract class _$$_ConversationListCopyWith<$Res> {
  factory _$$_ConversationListCopyWith(
          _$_ConversationList value, $Res Function(_$_ConversationList) then) =
      __$$_ConversationListCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationRequest? model});

  $ConversationRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ConversationListCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$_ConversationList>
    implements _$$_ConversationListCopyWith<$Res> {
  __$$_ConversationListCopyWithImpl(
      _$_ConversationList _value, $Res Function(_$_ConversationList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ConversationList(
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

class _$_ConversationList extends _ConversationList {
  _$_ConversationList(this.model) : super._();

  @override
  final ConversationRequest? model;

  @override
  String toString() {
    return 'ConversationClient.getListConversation(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationListCopyWith<_$_ConversationList> get copyWith =>
      __$$_ConversationListCopyWithImpl<_$_ConversationList>(this, _$identity);

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
      _$_ConversationList;
  _ConversationList._() : super._();

  ConversationRequest? get model;
  @JsonKey(ignore: true)
  _$$_ConversationListCopyWith<_$_ConversationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommentListCopyWith<$Res> {
  factory _$$_CommentListCopyWith(
          _$_CommentList value, $Res Function(_$_CommentList) then) =
      __$$_CommentListCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentRequest? model});

  $CommentRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_CommentListCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$_CommentList>
    implements _$$_CommentListCopyWith<$Res> {
  __$$_CommentListCopyWithImpl(
      _$_CommentList _value, $Res Function(_$_CommentList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_CommentList(
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

class _$_CommentList extends _CommentList {
  _$_CommentList(this.model) : super._();

  @override
  final CommentRequest? model;

  @override
  String toString() {
    return 'ConversationClient.getListComment(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentList &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentListCopyWith<_$_CommentList> get copyWith =>
      __$$_CommentListCopyWithImpl<_$_CommentList>(this, _$identity);

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
  factory _CommentList(final CommentRequest? model) = _$_CommentList;
  _CommentList._() : super._();

  CommentRequest? get model;
  @JsonKey(ignore: true)
  _$$_CommentListCopyWith<_$_CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertNewCommentCopyWith<$Res> {
  factory _$$_InsertNewCommentCopyWith(
          _$_InsertNewComment value, $Res Function(_$_InsertNewComment) then) =
      __$$_InsertNewCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentInsertRequest? model});

  $CommentInsertRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_InsertNewCommentCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$_InsertNewComment>
    implements _$$_InsertNewCommentCopyWith<$Res> {
  __$$_InsertNewCommentCopyWithImpl(
      _$_InsertNewComment _value, $Res Function(_$_InsertNewComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_InsertNewComment(
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

class _$_InsertNewComment extends _InsertNewComment {
  _$_InsertNewComment(this.model) : super._();

  @override
  final CommentInsertRequest? model;

  @override
  String toString() {
    return 'ConversationClient.insertNewComment(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertNewComment &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNewCommentCopyWith<_$_InsertNewComment> get copyWith =>
      __$$_InsertNewCommentCopyWithImpl<_$_InsertNewComment>(this, _$identity);

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
      _$_InsertNewComment;
  _InsertNewComment._() : super._();

  CommentInsertRequest? get model;
  @JsonKey(ignore: true)
  _$$_InsertNewCommentCopyWith<_$_InsertNewComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertNewConversationCopyWith<$Res> {
  factory _$$_InsertNewConversationCopyWith(_$_InsertNewConversation value,
          $Res Function(_$_InsertNewConversation) then) =
      __$$_InsertNewConversationCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationResponse? model});

  $ConversationResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_InsertNewConversationCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$_InsertNewConversation>
    implements _$$_InsertNewConversationCopyWith<$Res> {
  __$$_InsertNewConversationCopyWithImpl(_$_InsertNewConversation _value,
      $Res Function(_$_InsertNewConversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_InsertNewConversation(
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

class _$_InsertNewConversation extends _InsertNewConversation {
  _$_InsertNewConversation(this.model) : super._();

  @override
  final ConversationResponse? model;

  @override
  String toString() {
    return 'ConversationClient.insertNewConversation(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertNewConversation &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNewConversationCopyWith<_$_InsertNewConversation> get copyWith =>
      __$$_InsertNewConversationCopyWithImpl<_$_InsertNewConversation>(
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
      _$_InsertNewConversation;
  _InsertNewConversation._() : super._();

  ConversationResponse? get model;
  @JsonKey(ignore: true)
  _$$_InsertNewConversationCopyWith<_$_InsertNewConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateNewConversationCopyWith<$Res> {
  factory _$$_UpdateNewConversationCopyWith(_$_UpdateNewConversation value,
          $Res Function(_$_UpdateNewConversation) then) =
      __$$_UpdateNewConversationCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationResponse? model});

  $ConversationResponseCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_UpdateNewConversationCopyWithImpl<$Res>
    extends _$ConversationClientCopyWithImpl<$Res, _$_UpdateNewConversation>
    implements _$$_UpdateNewConversationCopyWith<$Res> {
  __$$_UpdateNewConversationCopyWithImpl(_$_UpdateNewConversation _value,
      $Res Function(_$_UpdateNewConversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UpdateNewConversation(
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

class _$_UpdateNewConversation extends _UpdateNewConversation {
  _$_UpdateNewConversation(this.model) : super._();

  @override
  final ConversationResponse? model;

  @override
  String toString() {
    return 'ConversationClient.updateNewConversation(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNewConversation &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateNewConversationCopyWith<_$_UpdateNewConversation> get copyWith =>
      __$$_UpdateNewConversationCopyWithImpl<_$_UpdateNewConversation>(
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
      _$_UpdateNewConversation;
  _UpdateNewConversation._() : super._();

  ConversationResponse? get model;
  @JsonKey(ignore: true)
  _$$_UpdateNewConversationCopyWith<_$_UpdateNewConversation> get copyWith =>
      throw _privateConstructorUsedError;
}
