// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_test/flutter_test.dart';
import 'package:ftu_lms/app/modules/login/controllers/login_controller.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/utils/biometric_auth/biometric_authenticator.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

import '../../../../mocks/repositories.dart';

void main() {
  test('checkBiometricAuthentication()', () async {
    final userRepo = Get.put<UserRepository>(MockUserRepository());
    final biometricAuthenticator = Get.put<BiometricAuthenticator>(MockBiometricAuthenticator());
    final loginController = Get.put<LoginController>(LoginController());

    when(biometricAuthenticator.deviceIsSupported())
        .thenAnswer((realInvocation) => Future.value(true));

    final expectedUser = UserObject(username: 'Nguyễn Văn An');
    when(userRepo.retrieveUserInfo()).thenAnswer((realInvocation) => Future.value(expectedUser));

    await loginController.checkBiometricAuthentication();
    expect(loginController.userObject, expectedUser);
  });
}
