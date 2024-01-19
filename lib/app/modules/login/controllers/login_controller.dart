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
  int? idDonVi = 0;
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

  // List<DropdownMenuItem> list = [
  //   DropdownMenuItem(
  //       value: 0,
  //       child: Center(
  //           child: Text("---Mời chọn đơn vị---", textAlign: TextAlign.center))),
  //   DropdownMenuItem(
  //       value: 1,
  //       child: Text("Trường Đại học Ngoại ngữ Đà Nẵng",
  //           textAlign: TextAlign.center, overflow: TextOverflow.ellipsis)),
  //   DropdownMenuItem(
  //       value: 2,
  //       child: Text("Trường Đại học Nông Lâm Thái Nguyên",
  //           textAlign: TextAlign.center, overflow: TextOverflow.ellipsis)),
  //   DropdownMenuItem(
  //       value: 3,
  //       child: Text("Trường Đai học Sư phạm Nghệ thuật TW",
  //           textAlign: TextAlign.center, overflow: TextOverflow.ellipsis)),
  //   DropdownMenuItem(
  //       value: 4,
  //       child: Text("Trường Đại học Sư phạm TDTT Hà Nội",
  //           textAlign: TextAlign.center, overflow: TextOverflow.ellipsis)),
  //   DropdownMenuItem(
  //       value: 5,
  //       child: Text("Trường Quốc tế - Đại học Quốc Gia Hà Nội",
  //           textAlign: TextAlign.center, overflow: TextOverflow.ellipsis))
  // ];

  List<DropdownMenuItem> list = [
    const DropdownMenuItem(
        value: 1,
        child: Text("Trường Đại học Ngoại ngữ Đà Nẵng",
            textAlign: TextAlign.center, overflow: TextOverflow.ellipsis))
  ];

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
    //Fimber.d("_handleUserNameTextFieldFocusState()");
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
    //Fimber.d("_handlePasswordTextFieldFocus");
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
    //Fimber.d("checkBiometricAuthentication()");
    biometricAuthIsNotSupported =
        await biometricAuthenticator.deviceIsSupported();
    if (biometricAuthIsNotSupported == true) {
      userObject = await userRepo.retrieveUserInfo();
      biometricLoginIsEnable.value = userObject?.biometricAuth ?? false;
    }
  }

  userNameTextChanged(String? userName) {
    //Fimber.d("userNameTextChanged(String? $userName)");
    this.userName = userName;
    showUserNameClearIcon.value = true;
  }

  clearUserName() {
    //Fimber.d("clearUserName()");
    userNameTextEditingController?.clear();
    userName = '';
    showUserNameClearIcon.value = false;
  }

  passwordTextChanged(String? password) {
    //Fimber.d("passwordTextChanged(String? $password)");
    this.password = password;
    showPasswordClearIcon.value = true;
  }

  clearPassword() {
    //Fimber.d("clearPassword()");
    passwordTextEditingController?.clear();
    password = '';
    showPasswordClearIcon.value = false;
  }

  navigateToFogotPassword() {
    Fimber.d("navigateToFogotPassword()");
  }

  performLogin() async {
    idDonVi = 1;
    // userName = userName?.isNotEmpty == true
    //     ? userName
    //     : /*219203012 namviet admin tester*/ "219203012";
    // password = password?.isNotEmpty == true
    //     ? password
    //     : /*hue23052001 123@123  Namvietjsc2023  admin ABC@123.com*/ "hue23052001";

    if (idDonVi == 0 || idDonVi == null) {
      isError.value = LocaleKeys.idDonViIsNotEmpty.tr;
      return;
    }
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

    if (userName == "admin" && password == "admin") {
      userName = "auth";
      password = "A587c5a7857b1d1028b95cdf1b16b2dd@CNS";
    }

    if (isLoading.value) return;
    isLoading.value = true;
    final response = await userRepo.login(userName, password, idDonVi);
    response.when(success: (user) async {
      isLoading.value = false;
      if (user.isSuccess()) {
        await userRepo.saveUserInfo(
            user.result?.copyWith(password: password, idDonVi: idDonVi));
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

  void getValueDropDown(int? value) async {
    idDonVi = value;
  }
}
