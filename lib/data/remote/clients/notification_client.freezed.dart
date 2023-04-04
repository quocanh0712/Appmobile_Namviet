// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_LoadNotificationsCopyWith<$Res> {
  factory _$$_LoadNotificationsCopyWith(_$_LoadNotifications value,
          $Res Function(_$_LoadNotifications) then) =
      __$$_LoadNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$_LoadNotificationsCopyWithImpl<$Res>
    extends _$NotificationClientCopyWithImpl<$Res, _$_LoadNotifications>
    implements _$$_LoadNotificationsCopyWith<$Res> {
  __$$_LoadNotificationsCopyWithImpl(
      _$_LoadNotifications _value, $Res Function(_$_LoadNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_LoadNotifications(
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

class _$_LoadNotifications extends _LoadNotifications {
  _$_LoadNotifications(this.startindex, this.length) : super._();

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'NotificationClient.loadNotifications(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadNotifications &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadNotificationsCopyWith<_$_LoadNotifications> get copyWith =>
      __$$_LoadNotificationsCopyWithImpl<_$_LoadNotifications>(
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
      _$_LoadNotifications;
  _LoadNotifications._() : super._();

  int? get startindex;
  int? get length;
  @JsonKey(ignore: true)
  _$$_LoadNotificationsCopyWith<_$_LoadNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadNotificationsCopyWith<$Res> {
  factory _$$_ReadNotificationsCopyWith(_$_ReadNotifications value,
          $Res Function(_$_ReadNotifications) then) =
      __$$_ReadNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pushID});
}

/// @nodoc
class __$$_ReadNotificationsCopyWithImpl<$Res>
    extends _$NotificationClientCopyWithImpl<$Res, _$_ReadNotifications>
    implements _$$_ReadNotificationsCopyWith<$Res> {
  __$$_ReadNotificationsCopyWithImpl(
      _$_ReadNotifications _value, $Res Function(_$_ReadNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushID = freezed,
  }) {
    return _then(_$_ReadNotifications(
      freezed == pushID
          ? _value.pushID
          : pushID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ReadNotifications extends _ReadNotifications {
  _$_ReadNotifications(this.pushID) : super._();

  @override
  final int? pushID;

  @override
  String toString() {
    return 'NotificationClient.read(pushID: $pushID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadNotifications &&
            (identical(other.pushID, pushID) || other.pushID == pushID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadNotificationsCopyWith<_$_ReadNotifications> get copyWith =>
      __$$_ReadNotificationsCopyWithImpl<_$_ReadNotifications>(
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
  factory _ReadNotifications(final int? pushID) = _$_ReadNotifications;
  _ReadNotifications._() : super._();

  int? get pushID;
  @JsonKey(ignore: true)
  _$$_ReadNotificationsCopyWith<_$_ReadNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadAllCopyWith<$Res> {
  factory _$$_ReadAllCopyWith(
          _$_ReadAll value, $Res Function(_$_ReadAll) then) =
      __$$_ReadAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadAllCopyWithImpl<$Res>
    extends _$NotificationClientCopyWithImpl<$Res, _$_ReadAll>
    implements _$$_ReadAllCopyWith<$Res> {
  __$$_ReadAllCopyWithImpl(_$_ReadAll _value, $Res Function(_$_ReadAll) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadAll extends _ReadAll {
  _$_ReadAll() : super._();

  @override
  String toString() {
    return 'NotificationClient.readAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadAll);
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
  factory _ReadAll() = _$_ReadAll;
  _ReadAll._() : super._();
}
