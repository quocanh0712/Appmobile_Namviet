// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userName, String? password) login,
    required TResult Function(UserObject? user) update,
    required TResult Function(String? oldPass, String? newPass) changePass,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userName, String? password)? login,
    TResult? Function(UserObject? user)? update,
    TResult? Function(String? oldPass, String? newPass)? changePass,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userName, String? password)? login,
    TResult Function(UserObject? user)? update,
    TResult Function(String? oldPass, String? newPass)? changePass,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Update value) update,
    required TResult Function(_ChangePass value) changePass,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Update value)? update,
    TResult? Function(_ChangePass value)? changePass,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Update value)? update,
    TResult Function(_ChangePass value)? changePass,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserClientCopyWith<$Res> {
  factory $UserClientCopyWith(
          UserClient value, $Res Function(UserClient) then) =
      _$UserClientCopyWithImpl<$Res, UserClient>;
}

/// @nodoc
class _$UserClientCopyWithImpl<$Res, $Val extends UserClient>
    implements $UserClientCopyWith<$Res> {
  _$UserClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userName, String? password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginImpl(
      freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginImpl extends _Login {
  _$LoginImpl(this.userName, this.password) : super._();

  @override
  final String? userName;
  @override
  final String? password;

  @override
  String toString() {
    return 'UserClient.login(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userName, String? password) login,
    required TResult Function(UserObject? user) update,
    required TResult Function(String? oldPass, String? newPass) changePass,
    required TResult Function() logout,
  }) {
    return login(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userName, String? password)? login,
    TResult? Function(UserObject? user)? update,
    TResult? Function(String? oldPass, String? newPass)? changePass,
    TResult? Function()? logout,
  }) {
    return login?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userName, String? password)? login,
    TResult Function(UserObject? user)? update,
    TResult Function(String? oldPass, String? newPass)? changePass,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Update value) update,
    required TResult Function(_ChangePass value) changePass,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Update value)? update,
    TResult? Function(_ChangePass value)? changePass,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Update value)? update,
    TResult Function(_ChangePass value)? changePass,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends UserClient {
  factory _Login(final String? userName, final String? password) = _$LoginImpl;
  _Login._() : super._();

  String? get userName;
  String? get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserObject? user});

  $UserObjectCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UpdateImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserObject?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserObjectCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserObjectCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl extends _Update {
  _$UpdateImpl(this.user) : super._();

  @override
  final UserObject? user;

  @override
  String toString() {
    return 'UserClient.update(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userName, String? password) login,
    required TResult Function(UserObject? user) update,
    required TResult Function(String? oldPass, String? newPass) changePass,
    required TResult Function() logout,
  }) {
    return update(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userName, String? password)? login,
    TResult? Function(UserObject? user)? update,
    TResult? Function(String? oldPass, String? newPass)? changePass,
    TResult? Function()? logout,
  }) {
    return update?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userName, String? password)? login,
    TResult Function(UserObject? user)? update,
    TResult Function(String? oldPass, String? newPass)? changePass,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Update value) update,
    required TResult Function(_ChangePass value) changePass,
    required TResult Function(_Logout value) logout,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Update value)? update,
    TResult? Function(_ChangePass value)? changePass,
    TResult? Function(_Logout value)? logout,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Update value)? update,
    TResult Function(_ChangePass value)? changePass,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update extends UserClient {
  factory _Update(final UserObject? user) = _$UpdateImpl;
  _Update._() : super._();

  UserObject? get user;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePassImplCopyWith<$Res> {
  factory _$$ChangePassImplCopyWith(
          _$ChangePassImpl value, $Res Function(_$ChangePassImpl) then) =
      __$$ChangePassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? oldPass, String? newPass});
}

/// @nodoc
class __$$ChangePassImplCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$ChangePassImpl>
    implements _$$ChangePassImplCopyWith<$Res> {
  __$$ChangePassImplCopyWithImpl(
      _$ChangePassImpl _value, $Res Function(_$ChangePassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPass = freezed,
    Object? newPass = freezed,
  }) {
    return _then(_$ChangePassImpl(
      freezed == oldPass
          ? _value.oldPass
          : oldPass // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == newPass
          ? _value.newPass
          : newPass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangePassImpl extends _ChangePass {
  _$ChangePassImpl(this.oldPass, this.newPass) : super._();

  @override
  final String? oldPass;
  @override
  final String? newPass;

  @override
  String toString() {
    return 'UserClient.changePass(oldPass: $oldPass, newPass: $newPass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePassImpl &&
            (identical(other.oldPass, oldPass) || other.oldPass == oldPass) &&
            (identical(other.newPass, newPass) || other.newPass == newPass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPass, newPass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePassImplCopyWith<_$ChangePassImpl> get copyWith =>
      __$$ChangePassImplCopyWithImpl<_$ChangePassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userName, String? password) login,
    required TResult Function(UserObject? user) update,
    required TResult Function(String? oldPass, String? newPass) changePass,
    required TResult Function() logout,
  }) {
    return changePass(oldPass, newPass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userName, String? password)? login,
    TResult? Function(UserObject? user)? update,
    TResult? Function(String? oldPass, String? newPass)? changePass,
    TResult? Function()? logout,
  }) {
    return changePass?.call(oldPass, newPass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userName, String? password)? login,
    TResult Function(UserObject? user)? update,
    TResult Function(String? oldPass, String? newPass)? changePass,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (changePass != null) {
      return changePass(oldPass, newPass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Update value) update,
    required TResult Function(_ChangePass value) changePass,
    required TResult Function(_Logout value) logout,
  }) {
    return changePass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Update value)? update,
    TResult? Function(_ChangePass value)? changePass,
    TResult? Function(_Logout value)? logout,
  }) {
    return changePass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Update value)? update,
    TResult Function(_ChangePass value)? changePass,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (changePass != null) {
      return changePass(this);
    }
    return orElse();
  }
}

abstract class _ChangePass extends UserClient {
  factory _ChangePass(final String? oldPass, final String? newPass) =
      _$ChangePassImpl;
  _ChangePass._() : super._();

  String? get oldPass;
  String? get newPass;
  @JsonKey(ignore: true)
  _$$ChangePassImplCopyWith<_$ChangePassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl extends _Logout {
  _$LogoutImpl() : super._();

  @override
  String toString() {
    return 'UserClient.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userName, String? password) login,
    required TResult Function(UserObject? user) update,
    required TResult Function(String? oldPass, String? newPass) changePass,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userName, String? password)? login,
    TResult? Function(UserObject? user)? update,
    TResult? Function(String? oldPass, String? newPass)? changePass,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userName, String? password)? login,
    TResult Function(UserObject? user)? update,
    TResult Function(String? oldPass, String? newPass)? changePass,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Update value) update,
    required TResult Function(_ChangePass value) changePass,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Update value)? update,
    TResult? Function(_ChangePass value)? changePass,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Update value)? update,
    TResult Function(_ChangePass value)? changePass,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout extends UserClient {
  factory _Logout() = _$LogoutImpl;
  _Logout._() : super._();
}
