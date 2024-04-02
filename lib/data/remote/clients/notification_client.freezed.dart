// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? startindex, int? length) loadNotifications,
    required TResult Function(int? pushID) read,
    required TResult Function() readAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? startindex, int? length)? loadNotifications,
    TResult? Function(int? pushID)? read,
    TResult? Function()? readAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? startindex, int? length)? loadNotifications,
    TResult Function(int? pushID)? read,
    TResult Function()? readAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_ReadNotifications value) read,
    required TResult Function(_ReadAll value) readAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_ReadNotifications value)? read,
    TResult? Function(_ReadAll value)? readAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_ReadNotifications value)? read,
    TResult Function(_ReadAll value)? readAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationClientCopyWith<$Res> {
  factory $NotificationClientCopyWith(
          NotificationClient value, $Res Function(NotificationClient) then) =
      _$NotificationClientCopyWithImpl<$Res, NotificationClient>;
}

/// @nodoc
class _$NotificationClientCopyWithImpl<$Res, $Val extends NotificationClient>
    implements $NotificationClientCopyWith<$Res> {
  _$NotificationClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadNotificationsImplCopyWith<$Res> {
  factory _$$LoadNotificationsImplCopyWith(_$LoadNotificationsImpl value,
          $Res Function(_$LoadNotificationsImpl) then) =
      __$$LoadNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$LoadNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationClientCopyWithImpl<$Res, _$LoadNotificationsImpl>
    implements _$$LoadNotificationsImplCopyWith<$Res> {
  __$$LoadNotificationsImplCopyWithImpl(_$LoadNotificationsImpl _value,
      $Res Function(_$LoadNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$LoadNotificationsImpl(
      freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadNotificationsImpl extends _LoadNotifications {
  _$LoadNotificationsImpl(this.startindex, this.length) : super._();

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'NotificationClient.loadNotifications(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNotificationsImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNotificationsImplCopyWith<_$LoadNotificationsImpl> get copyWith =>
      __$$LoadNotificationsImplCopyWithImpl<_$LoadNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? startindex, int? length) loadNotifications,
    required TResult Function(int? pushID) read,
    required TResult Function() readAll,
  }) {
    return loadNotifications(startindex, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? startindex, int? length)? loadNotifications,
    TResult? Function(int? pushID)? read,
    TResult? Function()? readAll,
  }) {
    return loadNotifications?.call(startindex, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? startindex, int? length)? loadNotifications,
    TResult Function(int? pushID)? read,
    TResult Function()? readAll,
    required TResult orElse(),
  }) {
    if (loadNotifications != null) {
      return loadNotifications(startindex, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_ReadNotifications value) read,
    required TResult Function(_ReadAll value) readAll,
  }) {
    return loadNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_ReadNotifications value)? read,
    TResult? Function(_ReadAll value)? readAll,
  }) {
    return loadNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_ReadNotifications value)? read,
    TResult Function(_ReadAll value)? readAll,
    required TResult orElse(),
  }) {
    if (loadNotifications != null) {
      return loadNotifications(this);
    }
    return orElse();
  }
}

abstract class _LoadNotifications extends NotificationClient {
  factory _LoadNotifications(final int? startindex, final int? length) =
      _$LoadNotificationsImpl;
  _LoadNotifications._() : super._();

  int? get startindex;
  int? get length;
  @JsonKey(ignore: true)
  _$$LoadNotificationsImplCopyWith<_$LoadNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadNotificationsImplCopyWith<$Res> {
  factory _$$ReadNotificationsImplCopyWith(_$ReadNotificationsImpl value,
          $Res Function(_$ReadNotificationsImpl) then) =
      __$$ReadNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pushID});
}

/// @nodoc
class __$$ReadNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationClientCopyWithImpl<$Res, _$ReadNotificationsImpl>
    implements _$$ReadNotificationsImplCopyWith<$Res> {
  __$$ReadNotificationsImplCopyWithImpl(_$ReadNotificationsImpl _value,
      $Res Function(_$ReadNotificationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushID = freezed,
  }) {
    return _then(_$ReadNotificationsImpl(
      freezed == pushID
          ? _value.pushID
          : pushID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ReadNotificationsImpl extends _ReadNotifications {
  _$ReadNotificationsImpl(this.pushID) : super._();

  @override
  final int? pushID;

  @override
  String toString() {
    return 'NotificationClient.read(pushID: $pushID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadNotificationsImpl &&
            (identical(other.pushID, pushID) || other.pushID == pushID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadNotificationsImplCopyWith<_$ReadNotificationsImpl> get copyWith =>
      __$$ReadNotificationsImplCopyWithImpl<_$ReadNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? startindex, int? length) loadNotifications,
    required TResult Function(int? pushID) read,
    required TResult Function() readAll,
  }) {
    return read(pushID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? startindex, int? length)? loadNotifications,
    TResult? Function(int? pushID)? read,
    TResult? Function()? readAll,
  }) {
    return read?.call(pushID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? startindex, int? length)? loadNotifications,
    TResult Function(int? pushID)? read,
    TResult Function()? readAll,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(pushID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_ReadNotifications value) read,
    required TResult Function(_ReadAll value) readAll,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_ReadNotifications value)? read,
    TResult? Function(_ReadAll value)? readAll,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_ReadNotifications value)? read,
    TResult Function(_ReadAll value)? readAll,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadNotifications extends NotificationClient {
  factory _ReadNotifications(final int? pushID) = _$ReadNotificationsImpl;
  _ReadNotifications._() : super._();

  int? get pushID;
  @JsonKey(ignore: true)
  _$$ReadNotificationsImplCopyWith<_$ReadNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadAllImplCopyWith<$Res> {
  factory _$$ReadAllImplCopyWith(
          _$ReadAllImpl value, $Res Function(_$ReadAllImpl) then) =
      __$$ReadAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadAllImplCopyWithImpl<$Res>
    extends _$NotificationClientCopyWithImpl<$Res, _$ReadAllImpl>
    implements _$$ReadAllImplCopyWith<$Res> {
  __$$ReadAllImplCopyWithImpl(
      _$ReadAllImpl _value, $Res Function(_$ReadAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadAllImpl extends _ReadAll {
  _$ReadAllImpl() : super._();

  @override
  String toString() {
    return 'NotificationClient.readAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? startindex, int? length) loadNotifications,
    required TResult Function(int? pushID) read,
    required TResult Function() readAll,
  }) {
    return readAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? startindex, int? length)? loadNotifications,
    TResult? Function(int? pushID)? read,
    TResult? Function()? readAll,
  }) {
    return readAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? startindex, int? length)? loadNotifications,
    TResult Function(int? pushID)? read,
    TResult Function()? readAll,
    required TResult orElse(),
  }) {
    if (readAll != null) {
      return readAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_ReadNotifications value) read,
    required TResult Function(_ReadAll value) readAll,
  }) {
    return readAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_ReadNotifications value)? read,
    TResult? Function(_ReadAll value)? readAll,
  }) {
    return readAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_ReadNotifications value)? read,
    TResult Function(_ReadAll value)? readAll,
    required TResult orElse(),
  }) {
    if (readAll != null) {
      return readAll(this);
    }
    return orElse();
  }
}

abstract class _ReadAll extends NotificationClient {
  factory _ReadAll() = _$ReadAllImpl;
  _ReadAll._() : super._();
}
