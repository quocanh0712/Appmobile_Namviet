// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllRoomRequest? model) getAllRoom,
    required TResult Function(AllMemberRequest? model) getAllMemberInRoom,
    required TResult Function(AllMessageRequest? model) getAllMessageInRoom,
    required TResult Function(CreateRoomRequest? model) createRoom,
    required TResult Function(SendMessageRequest? model) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllRoomRequest? model)? getAllRoom,
    TResult? Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult? Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult? Function(CreateRoomRequest? model)? createRoom,
    TResult? Function(SendMessageRequest? model)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllRoomRequest? model)? getAllRoom,
    TResult Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult Function(CreateRoomRequest? model)? createRoom,
    TResult Function(SendMessageRequest? model)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllRoom value) getAllRoom,
    required TResult Function(_AllMemberInRoom value) getAllMemberInRoom,
    required TResult Function(_AllMessageInRoom value) getAllMessageInRoom,
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllRoom value)? getAllRoom,
    TResult? Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult? Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult? Function(_CreateRoom value)? createRoom,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllRoom value)? getAllRoom,
    TResult Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatClientCopyWith<$Res> {
  factory $ChatClientCopyWith(
          ChatClient value, $Res Function(ChatClient) then) =
      _$ChatClientCopyWithImpl<$Res, ChatClient>;
}

/// @nodoc
class _$ChatClientCopyWithImpl<$Res, $Val extends ChatClient>
    implements $ChatClientCopyWith<$Res> {
  _$ChatClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AllRoomImplCopyWith<$Res> {
  factory _$$AllRoomImplCopyWith(
          _$AllRoomImpl value, $Res Function(_$AllRoomImpl) then) =
      __$$AllRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllRoomRequest? model});

  $AllRoomRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$AllRoomImplCopyWithImpl<$Res>
    extends _$ChatClientCopyWithImpl<$Res, _$AllRoomImpl>
    implements _$$AllRoomImplCopyWith<$Res> {
  __$$AllRoomImplCopyWithImpl(
      _$AllRoomImpl _value, $Res Function(_$AllRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AllRoomImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AllRoomRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AllRoomRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $AllRoomRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AllRoomImpl extends _AllRoom {
  _$AllRoomImpl(this.model) : super._();

  @override
  final AllRoomRequest? model;

  @override
  String toString() {
    return 'ChatClient.getAllRoom(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllRoomImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllRoomImplCopyWith<_$AllRoomImpl> get copyWith =>
      __$$AllRoomImplCopyWithImpl<_$AllRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllRoomRequest? model) getAllRoom,
    required TResult Function(AllMemberRequest? model) getAllMemberInRoom,
    required TResult Function(AllMessageRequest? model) getAllMessageInRoom,
    required TResult Function(CreateRoomRequest? model) createRoom,
    required TResult Function(SendMessageRequest? model) sendMessage,
  }) {
    return getAllRoom(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllRoomRequest? model)? getAllRoom,
    TResult? Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult? Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult? Function(CreateRoomRequest? model)? createRoom,
    TResult? Function(SendMessageRequest? model)? sendMessage,
  }) {
    return getAllRoom?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllRoomRequest? model)? getAllRoom,
    TResult Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult Function(CreateRoomRequest? model)? createRoom,
    TResult Function(SendMessageRequest? model)? sendMessage,
    required TResult orElse(),
  }) {
    if (getAllRoom != null) {
      return getAllRoom(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllRoom value) getAllRoom,
    required TResult Function(_AllMemberInRoom value) getAllMemberInRoom,
    required TResult Function(_AllMessageInRoom value) getAllMessageInRoom,
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getAllRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllRoom value)? getAllRoom,
    TResult? Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult? Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult? Function(_CreateRoom value)? createRoom,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return getAllRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllRoom value)? getAllRoom,
    TResult Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getAllRoom != null) {
      return getAllRoom(this);
    }
    return orElse();
  }
}

abstract class _AllRoom extends ChatClient {
  factory _AllRoom(final AllRoomRequest? model) = _$AllRoomImpl;
  _AllRoom._() : super._();

  @override
  AllRoomRequest? get model;
  @JsonKey(ignore: true)
  _$$AllRoomImplCopyWith<_$AllRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllMemberInRoomImplCopyWith<$Res> {
  factory _$$AllMemberInRoomImplCopyWith(_$AllMemberInRoomImpl value,
          $Res Function(_$AllMemberInRoomImpl) then) =
      __$$AllMemberInRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllMemberRequest? model});

  $AllMemberRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$AllMemberInRoomImplCopyWithImpl<$Res>
    extends _$ChatClientCopyWithImpl<$Res, _$AllMemberInRoomImpl>
    implements _$$AllMemberInRoomImplCopyWith<$Res> {
  __$$AllMemberInRoomImplCopyWithImpl(
      _$AllMemberInRoomImpl _value, $Res Function(_$AllMemberInRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AllMemberInRoomImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AllMemberRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AllMemberRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $AllMemberRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AllMemberInRoomImpl extends _AllMemberInRoom {
  _$AllMemberInRoomImpl(this.model) : super._();

  @override
  final AllMemberRequest? model;

  @override
  String toString() {
    return 'ChatClient.getAllMemberInRoom(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMemberInRoomImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMemberInRoomImplCopyWith<_$AllMemberInRoomImpl> get copyWith =>
      __$$AllMemberInRoomImplCopyWithImpl<_$AllMemberInRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllRoomRequest? model) getAllRoom,
    required TResult Function(AllMemberRequest? model) getAllMemberInRoom,
    required TResult Function(AllMessageRequest? model) getAllMessageInRoom,
    required TResult Function(CreateRoomRequest? model) createRoom,
    required TResult Function(SendMessageRequest? model) sendMessage,
  }) {
    return getAllMemberInRoom(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllRoomRequest? model)? getAllRoom,
    TResult? Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult? Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult? Function(CreateRoomRequest? model)? createRoom,
    TResult? Function(SendMessageRequest? model)? sendMessage,
  }) {
    return getAllMemberInRoom?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllRoomRequest? model)? getAllRoom,
    TResult Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult Function(CreateRoomRequest? model)? createRoom,
    TResult Function(SendMessageRequest? model)? sendMessage,
    required TResult orElse(),
  }) {
    if (getAllMemberInRoom != null) {
      return getAllMemberInRoom(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllRoom value) getAllRoom,
    required TResult Function(_AllMemberInRoom value) getAllMemberInRoom,
    required TResult Function(_AllMessageInRoom value) getAllMessageInRoom,
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getAllMemberInRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllRoom value)? getAllRoom,
    TResult? Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult? Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult? Function(_CreateRoom value)? createRoom,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return getAllMemberInRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllRoom value)? getAllRoom,
    TResult Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getAllMemberInRoom != null) {
      return getAllMemberInRoom(this);
    }
    return orElse();
  }
}

abstract class _AllMemberInRoom extends ChatClient {
  factory _AllMemberInRoom(final AllMemberRequest? model) =
      _$AllMemberInRoomImpl;
  _AllMemberInRoom._() : super._();

  @override
  AllMemberRequest? get model;
  @JsonKey(ignore: true)
  _$$AllMemberInRoomImplCopyWith<_$AllMemberInRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllMessageInRoomImplCopyWith<$Res> {
  factory _$$AllMessageInRoomImplCopyWith(_$AllMessageInRoomImpl value,
          $Res Function(_$AllMessageInRoomImpl) then) =
      __$$AllMessageInRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllMessageRequest? model});

  $AllMessageRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$AllMessageInRoomImplCopyWithImpl<$Res>
    extends _$ChatClientCopyWithImpl<$Res, _$AllMessageInRoomImpl>
    implements _$$AllMessageInRoomImplCopyWith<$Res> {
  __$$AllMessageInRoomImplCopyWithImpl(_$AllMessageInRoomImpl _value,
      $Res Function(_$AllMessageInRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AllMessageInRoomImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AllMessageRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AllMessageRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $AllMessageRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AllMessageInRoomImpl extends _AllMessageInRoom {
  _$AllMessageInRoomImpl(this.model) : super._();

  @override
  final AllMessageRequest? model;

  @override
  String toString() {
    return 'ChatClient.getAllMessageInRoom(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMessageInRoomImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMessageInRoomImplCopyWith<_$AllMessageInRoomImpl> get copyWith =>
      __$$AllMessageInRoomImplCopyWithImpl<_$AllMessageInRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllRoomRequest? model) getAllRoom,
    required TResult Function(AllMemberRequest? model) getAllMemberInRoom,
    required TResult Function(AllMessageRequest? model) getAllMessageInRoom,
    required TResult Function(CreateRoomRequest? model) createRoom,
    required TResult Function(SendMessageRequest? model) sendMessage,
  }) {
    return getAllMessageInRoom(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllRoomRequest? model)? getAllRoom,
    TResult? Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult? Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult? Function(CreateRoomRequest? model)? createRoom,
    TResult? Function(SendMessageRequest? model)? sendMessage,
  }) {
    return getAllMessageInRoom?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllRoomRequest? model)? getAllRoom,
    TResult Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult Function(CreateRoomRequest? model)? createRoom,
    TResult Function(SendMessageRequest? model)? sendMessage,
    required TResult orElse(),
  }) {
    if (getAllMessageInRoom != null) {
      return getAllMessageInRoom(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllRoom value) getAllRoom,
    required TResult Function(_AllMemberInRoom value) getAllMemberInRoom,
    required TResult Function(_AllMessageInRoom value) getAllMessageInRoom,
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getAllMessageInRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllRoom value)? getAllRoom,
    TResult? Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult? Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult? Function(_CreateRoom value)? createRoom,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return getAllMessageInRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllRoom value)? getAllRoom,
    TResult Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getAllMessageInRoom != null) {
      return getAllMessageInRoom(this);
    }
    return orElse();
  }
}

abstract class _AllMessageInRoom extends ChatClient {
  factory _AllMessageInRoom(final AllMessageRequest? model) =
      _$AllMessageInRoomImpl;
  _AllMessageInRoom._() : super._();

  @override
  AllMessageRequest? get model;
  @JsonKey(ignore: true)
  _$$AllMessageInRoomImplCopyWith<_$AllMessageInRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRoomImplCopyWith<$Res> {
  factory _$$CreateRoomImplCopyWith(
          _$CreateRoomImpl value, $Res Function(_$CreateRoomImpl) then) =
      __$$CreateRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateRoomRequest? model});

  $CreateRoomRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$CreateRoomImplCopyWithImpl<$Res>
    extends _$ChatClientCopyWithImpl<$Res, _$CreateRoomImpl>
    implements _$$CreateRoomImplCopyWith<$Res> {
  __$$CreateRoomImplCopyWithImpl(
      _$CreateRoomImpl _value, $Res Function(_$CreateRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$CreateRoomImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateRoomRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateRoomRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CreateRoomRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CreateRoomImpl extends _CreateRoom {
  _$CreateRoomImpl(this.model) : super._();

  @override
  final CreateRoomRequest? model;

  @override
  String toString() {
    return 'ChatClient.createRoom(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoomImplCopyWith<_$CreateRoomImpl> get copyWith =>
      __$$CreateRoomImplCopyWithImpl<_$CreateRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllRoomRequest? model) getAllRoom,
    required TResult Function(AllMemberRequest? model) getAllMemberInRoom,
    required TResult Function(AllMessageRequest? model) getAllMessageInRoom,
    required TResult Function(CreateRoomRequest? model) createRoom,
    required TResult Function(SendMessageRequest? model) sendMessage,
  }) {
    return createRoom(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllRoomRequest? model)? getAllRoom,
    TResult? Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult? Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult? Function(CreateRoomRequest? model)? createRoom,
    TResult? Function(SendMessageRequest? model)? sendMessage,
  }) {
    return createRoom?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllRoomRequest? model)? getAllRoom,
    TResult Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult Function(CreateRoomRequest? model)? createRoom,
    TResult Function(SendMessageRequest? model)? sendMessage,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllRoom value) getAllRoom,
    required TResult Function(_AllMemberInRoom value) getAllMemberInRoom,
    required TResult Function(_AllMessageInRoom value) getAllMessageInRoom,
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllRoom value)? getAllRoom,
    TResult? Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult? Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult? Function(_CreateRoom value)? createRoom,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return createRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllRoom value)? getAllRoom,
    TResult Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateRoom extends ChatClient {
  factory _CreateRoom(final CreateRoomRequest? model) = _$CreateRoomImpl;
  _CreateRoom._() : super._();

  @override
  CreateRoomRequest? get model;
  @JsonKey(ignore: true)
  _$$CreateRoomImplCopyWith<_$CreateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendMessageRequest? model});

  $SendMessageRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatClientCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$SendMessageImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SendMessageRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SendMessageRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $SendMessageRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl extends _SendMessage {
  _$SendMessageImpl(this.model) : super._();

  @override
  final SendMessageRequest? model;

  @override
  String toString() {
    return 'ChatClient.sendMessage(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllRoomRequest? model) getAllRoom,
    required TResult Function(AllMemberRequest? model) getAllMemberInRoom,
    required TResult Function(AllMessageRequest? model) getAllMessageInRoom,
    required TResult Function(CreateRoomRequest? model) createRoom,
    required TResult Function(SendMessageRequest? model) sendMessage,
  }) {
    return sendMessage(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllRoomRequest? model)? getAllRoom,
    TResult? Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult? Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult? Function(CreateRoomRequest? model)? createRoom,
    TResult? Function(SendMessageRequest? model)? sendMessage,
  }) {
    return sendMessage?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllRoomRequest? model)? getAllRoom,
    TResult Function(AllMemberRequest? model)? getAllMemberInRoom,
    TResult Function(AllMessageRequest? model)? getAllMessageInRoom,
    TResult Function(CreateRoomRequest? model)? createRoom,
    TResult Function(SendMessageRequest? model)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllRoom value) getAllRoom,
    required TResult Function(_AllMemberInRoom value) getAllMemberInRoom,
    required TResult Function(_AllMessageInRoom value) getAllMessageInRoom,
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllRoom value)? getAllRoom,
    TResult? Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult? Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult? Function(_CreateRoom value)? createRoom,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllRoom value)? getAllRoom,
    TResult Function(_AllMemberInRoom value)? getAllMemberInRoom,
    TResult Function(_AllMessageInRoom value)? getAllMessageInRoom,
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage extends ChatClient {
  factory _SendMessage(final SendMessageRequest? model) = _$SendMessageImpl;
  _SendMessage._() : super._();

  @override
  SendMessageRequest? get model;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
