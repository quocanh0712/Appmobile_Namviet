// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/data/bean/app_configurations.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/local/storage_keys.dart';
import 'package:ftu_lms/data/remote/clients/user_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/app_configs_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<void> saveUserInfo(UserObject? userObject) async {
    if (userObject == null) return;
    final box = await Hive.openBox<UserObject>(StorageKeys.userBoxName);
    box.put(StorageKeys.userKey, userObject);
    this.userObject = userObject;
    // pass informations to the App Configurations.
    Get.find<AppConfigsRepository>()
        .saveAppConfigurations(AppConfigurations(accessToken: userObject.accessToken));
  }

  @override
  Future<UserObject?> retrieveUserInfo() async {
    if (userObject != null) return userObject;
    final box = await Hive.openBox<UserObject>(StorageKeys.userBoxName);
    userObject = box.get(StorageKeys.userKey);
    return userObject;
  }

  @override
  Future<void> removeUserInfo() async {
    Fimber.d("removeUserInfo()");
    final box = await Hive.openBox<UserObject>(StorageKeys.userBoxName);
    box.deleteAll(box.keys);
  }

  @override
  Future<UserPermission?> retrieveUserPermission() async {
    if (userObject != null) return userObject?.retrievePermission();
    userObject = await retrieveUserInfo();
    return userObject?.retrievePermission();
  }

  @override
  Future<void> toggleBiometricLogin(bool? enable) async {
    userObject ??= await retrieveUserInfo();
    userObject = userObject?.copyWith(biometricAuth: enable);
    saveUserInfo(userObject ?? UserObject(biometricAuth: enable));
  }

  @override
  Future<Result<BaseResponseObject<UserObject?>, NetworkError>> login(
      String? userName, String? password) {
    return NetworkExecutor.execute<BaseResponseObject<UserObject?>,
            BaseResponseObject<UserObject?>>(
        route: UserClient.login(userName, password),
        responseType: const BaseResponseObject<UserObject?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> changePass(
      String? oldPass, String? newPass) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: UserClient.changePass(oldPass, newPass),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> logout() async {
    userObject = null;
    await removeUserInfo();
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: UserClient.logout(), responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> update(UserObject? user) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: UserClient.update(user), responseType: const BaseResponseObject<int?>());
  }
}
