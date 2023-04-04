// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userName, String? password});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_Login(
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

class _$_Login extends _Login {
  _$_Login(this.userName, this.password) : super._();

  @override
  final String? userName;
  @override
  final String? password;

  @override
  String toString() {
    return 'UserClient.login(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
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
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

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
  factory _Login(final String? userName, final String? password) = _$_Login;
  _Login._() : super._();

  String? get userName;
  String? get password;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserObject? user});

  $UserObjectCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Update(
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

class _$_Update extends _Update {
  _$_Update(this.user) : super._();

  @override
  final UserObject? user;

  @override
  String toString() {
    return 'UserClient.update(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

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
  factory _Update(final UserObject? user) = _$_Update;
  _Update._() : super._();

  UserObject? get user;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePassCopyWith<$Res> {
  factory _$$_ChangePassCopyWith(
          _$_ChangePass value, $Res Function(_$_ChangePass) then) =
      __$$_ChangePassCopyWithImpl<$Res>;
  @useResult
  $Res call({String? oldPass, String? newPass});
}

/// @nodoc
class __$$_ChangePassCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$_ChangePass>
    implements _$$_ChangePassCopyWith<$Res> {
  __$$_ChangePassCopyWithImpl(
      _$_ChangePass _value, $Res Function(_$_ChangePass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPass = freezed,
    Object? newPass = freezed,
  }) {
    return _then(_$_ChangePass(
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

class _$_ChangePass extends _ChangePass {
  _$_ChangePass(this.oldPass, this.newPass) : super._();

  @override
  final String? oldPass;
  @override
  final String? newPass;

  @override
  String toString() {
    return 'UserClient.changePass(oldPass: $oldPass, newPass: $newPass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePass &&
            (identical(other.oldPass, oldPass) || other.oldPass == oldPass) &&
            (identical(other.newPass, newPass) || other.newPass == newPass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPass, newPass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePassCopyWith<_$_ChangePass> get copyWith =>
      __$$_ChangePassCopyWithImpl<_$_ChangePass>(this, _$identity);

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
      _$_ChangePass;
  _ChangePass._() : super._();

  String? get oldPass;
  String? get newPass;
  @JsonKey(ignore: true)
  _$$_ChangePassCopyWith<_$_ChangePass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$UserClientCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout extends _Logout {
  _$_Logout() : super._();

  @override
  String toString() {
    return 'UserClient.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
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
  factory _Logout() = _$_Logout;
  _Logout._() : super._();
}
