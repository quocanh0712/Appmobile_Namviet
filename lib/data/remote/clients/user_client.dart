// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_client_generator.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

part 'user_client.freezed.dart';

@freezed
class UserClient extends BaseClientGenerator with _$UserClient {
  UserClient._() : super();

  factory UserClient.login(String? userName, String? password) = _Login;
  factory UserClient.update(UserObject? user) = _Update;
  factory UserClient.changePass(String? oldPass, String? newPass) = _ChangePass;
  factory UserClient.logout() = _Logout;

  @override
  String get baseURL => '${super.baseURL}/Account';

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      login: (userName, password) => '/login',
      update: (user) => '/update',
      changePass: (oldPass, newPass) => '/changePass',
      logout: () => '/logout',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () => null,
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      login: (userName, password) => {'userName': userName, 'password': password},
      update: (user) => user?.toJson() ?? {},
      changePass: (oldPass, newPass) => {'oldPass': oldPass, 'newPass': newPass},
      orElse: () => {},
    );
  }
}
