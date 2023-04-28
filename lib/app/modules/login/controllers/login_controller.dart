// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/biometric_auth/biometric_authenticator.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../routes/app_pages.dart';

class LoginController extends BaseController {
  late TextEditingController? userNameTextEditingController;
  late FocusNode? userNameFocusNode;
  final userNameIsFocus = false.obs;
  String? userName;
  final showUserNameClearIcon = false.obs;

  late TextEditingController? passwordTextEditingController;
  late FocusNode? passwordFocusNode;
  final passwordIsFocus = false.obs;
  String? password;
  final showPasswordClearIcon = false.obs;
  final obscurePassword = true.obs;

  final sessionTimeout = false.obs;

  final UserRepository userRepo = Get.find();
  UserObject? userObject;
  late bool? biometricAuthIsNotSupported;
  final BiometricAuthenticator biometricAuthenticator = Get.find();
  final biometricLoginIsEnable = true.obs;
  final showBiometricLogin = false.obs;

  @override
  void onInit() {
    super.onInit();
    userNameTextEditingController = TextEditingController();
    userNameFocusNode = FocusNode();
    passwordTextEditingController = TextEditingController();
    passwordFocusNode = FocusNode();
  }

  @override
  void onReady() {
    super.onReady();
    _handleUserNameTextFieldFocus();
    _handlePasswordTextFieldFocus();
    checkBiometricAuthentication();
  }

  @override
  void onClose() {
    userNameTextEditingController?.dispose();
    userNameFocusNode?.dispose();
    passwordTextEditingController?.dispose();
    passwordFocusNode?.dispose();
    super.onClose();
  }

  _handleUserNameTextFieldFocus() {
    Fimber.d("_handleUserNameTextFieldFocusState()");
    userNameFocusNode?.addListener(() {
      if (userNameFocusNode?.hasFocus == true) {
        userNameIsFocus.value = true;
        if (userName?.isNotEmpty == true) showUserNameClearIcon.value = true;
      } else {
        userNameIsFocus.value = false;
        showUserNameClearIcon.value = false;
      }
    });
  }

  _handlePasswordTextFieldFocus() {
    Fimber.d("_handlePasswordTextFieldFocus");
    passwordFocusNode?.addListener(() {
      if (passwordFocusNode?.hasFocus == true) {
        passwordIsFocus.value = true;
        if (password?.isNotEmpty == true) showPasswordClearIcon.value = true;
      } else {
        passwordIsFocus.value = false;
        showPasswordClearIcon.value = false;
      }
    });
  }

  @visibleForTesting
  checkBiometricAuthentication() async {
    Fimber.d("checkBiometricAuthentication()");
    biometricAuthIsNotSupported =
        await biometricAuthenticator.deviceIsSupported();
    if (biometricAuthIsNotSupported == true) {
      userObject = await userRepo.retrieveUserInfo();
      biometricLoginIsEnable.value = userObject?.biometricAuth ?? false;
    }
  }

  userNameTextChanged(String? userName) {
    Fimber.d("userNameTextChanged(String? $userName)");
    this.userName = userName;
    showUserNameClearIcon.value = true;
  }

  clearUserName() {
    Fimber.d("clearUserName()");
    userNameTextEditingController?.clear();
    userName = '';
    showUserNameClearIcon.value = false;
  }

  passwordTextChanged(String? password) {
    Fimber.d("passwordTextChanged(String? $password)");
    this.password = password;
    showPasswordClearIcon.value = true;
  }

  clearPassword() {
    Fimber.d("clearPassword()");
    passwordTextEditingController?.clear();
    password = '';
    showPasswordClearIcon.value = false;
  }

  navigateToFogotPassword() {
    Fimber.d("navigateToFogotPassword()");
  }

  performLogin() async {
    Fimber.d("performLogin()");
    // mock user/pass. This one will be remove in the production.
    // userName = userName?.isNotEmpty == true ? userName : /*"219203012 namviet"*/ "219203012";
    // password = password?.isNotEmpty == true ? password : /*"hue23052001 123@123"*/ "hue23052001";
    if (userName.isEmptyOrNull) {
      if (password.isEmptyOrNull) {
        isError.value = LocaleKeys.userNameAndPasswordIsNotEmpty.tr;
      } else {
        isError.value = LocaleKeys.userNameIsNotEmpty.tr;
      }
      return;
    }
    if (password.isEmptyOrNull) {
      isError.value = LocaleKeys.passwordIsNotEmpty.tr;
      return;
    }
    if (isLoading.value) return;
    isLoading.value = true;
    final response = await userRepo.login(userName, password);
    response.when(success: (user) async {
      isLoading.value = false;
      Fimber.d("login() - logged in: ${jsonEncode(user.result?.toJson())}");
      if (user.isSuccess()) {
        await userRepo.saveUserInfo(user.result?.copyWith(password: password));
        // userRepo.saveUserInfo(
        //     user.result?.copyWith(password: password, role: UserPermission.student.value));

        // share external User Id
        OneSignal.shared
            .setExternalUserId(user.result?.iduser ?? Constants.EMPTY);

        Get.offAllNamed(Routes.DASHBOARD);
      } else {
        isError.value = user.message;
      }
    }, failure: (error) {
      isLoading.value = false;
      isError.value = error.localizedErrorMessage;
      Fimber.e(error.toString());
    });
  }

  handleBiometricLogin() async {
    Fimber.d("handleBiometricLogin()");
    //showBiometricLogin.value = true;
    final authenticated = await biometricAuthenticator
        .authenticateWithBiometrics(LocaleKeys.bimometricDescription.tr);
    if (authenticated) Get.offAllNamed(Routes.DASHBOARD);
  }
}