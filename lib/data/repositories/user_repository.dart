// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class UserRepository {
  // use this one to avoid calling user info from DB(hive box) directly multiple times
  // so you have to update this one whenever the user info is changed.
  @protected
  UserObject? userObject;
  Future<void> saveUserInfo(UserObject? userObject);
  Future<UserObject?> retrieveUserInfo();
  Future<void> removeUserInfo();
  Future<UserPermission?> retrieveUserPermission();
  Future<void> toggleBiometricLogin(bool? enable);
  Future<Result<BaseResponseObject<UserObject?>, NetworkError>> login(
      String? userName, String? password);
  Future<Result<BaseResponseObject<int?>, NetworkError>> update(UserObject? user);
  Future<Result<BaseResponseObject<int?>, NetworkError>> changePass(
      String? oldPass, String? newPass);
  Future<Result<BaseResponseObject<int?>, NetworkError>> logout();
}
