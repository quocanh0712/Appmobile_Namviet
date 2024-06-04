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
  DocumentSearchingRequest? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DocumentSearchingRequest? model) getDocumentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentSearchingClient value) getDocumentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentSearchingClientCopyWith<DocumentSearchingClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentSearchingClientCopyWith<$Res> {
  factory $DocumentSearchingClientCopyWith(DocumentSearchingClient value,
          $Res Function(DocumentSearchingClient) then) =
      _$DocumentSearchingClientCopyWithImpl<$Res, DocumentSearchingClient>;
  @useResult
  $Res call({DocumentSearchingRequest? model});

  $DocumentSearchingRequestCopyWith<$Res>? get model;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DocumentSearchingRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentSearchingRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $DocumentSearchingRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocumentSearchingClientImplCopyWith<$Res>
    implements $DocumentSearchingClientCopyWith<$Res> {
  factory _$$DocumentSearchingClientImplCopyWith(
          _$DocumentSearchingClientImpl value,
          $Res Function(_$DocumentSearchingClientImpl) then) =
      __$$DocumentSearchingClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DocumentSearchingRequest? model});

  @override
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
  }) {
    return getDocumentList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DocumentSearchingRequest? model)? getDocumentList,
  }) {
    return getDocumentList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DocumentSearchingRequest? model)? getDocumentList,
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
  }) {
    return getDocumentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentSearchingClient value)? getDocumentList,
  }) {
    return getDocumentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentSearchingClient value)? getDocumentList,
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

  @override
  DocumentSearchingRequest? get model;
  @override
  @JsonKey(ignore: true)
  _$$DocumentSearchingClientImplCopyWith<_$DocumentSearchingClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
