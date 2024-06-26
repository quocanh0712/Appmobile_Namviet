// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/semester_point_object/semester_point_object.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/utils/biometric_auth/biometric_authenticator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_helper/shared_preferences_helper.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import '../../../../generated/assets.gen.dart';


import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../login/services/session_service.dart';






class PersonalController extends BaseController {
  final SessionService sessionService = Get.find<SessionService>();
  late ScrollController? scrollController;
  late PanelController? panelController;

  final UserRepository userRepo = Get.find();
  final Rx<UserObject?> userObject = UserObject().obs;
  final BiometricAuthenticator biometricAuthenticator = Get.find();

  final biometricAuthIsNotSupported = false.obs;
  final biometricLoginIsEnable = false.obs;

  final learningResultRepo = Get.find<LearningResultRepository?>();
  final Rx<SemesterPointObject?>? semesterPoint = SemesterPointObject().obs;

  Rx<bool> isTeacherPermission = false.obs;

  int? idDonVi = 0;
  Rx<String> title = "NAM VIỆT JSC".obs;
  Rx<String> imagePath = Assets.images.uflLogo.path.obs;
  Rx<String> username = "1952220001".obs;
  Rx<String> name = "Phạm Thị Vân Anh".obs;

  Rx<bool> isLoggedIn = false.obs; // Biến cờ cho trạng thái đăng nhập

  @override
  void onInit() async {
    super.onInit();
    scrollController = ScrollController();
    panelController = PanelController();
    userObject.value = await userRepo.retrieveUserInfo();
    idDonVi = userObject.value?.idDonVi;
    switch (idDonVi) {
      case 1:
        title.value = "Trường ĐH Ngoại ngữ Đà Nẵng";
        imagePath.value = Assets.images.uflLogo.path;
        break;
      case 2:
        title.value = "Trường ĐH Nông Lâm Thái Nguyên";
        imagePath.value = Assets.images.tUAFLogo.path;
        break;
      case 3:
        title.value = "Trường ĐH SPNT Trung Ương";
        imagePath.value = Assets.images.nUAELogo.path;
        break;
      case 4:
        title.value = "Trường ĐH Sư phạm TDTT Hà Nội";
        imagePath.value = Assets.images.hUPESLogo.path;
        break;
      case 5:
        title.value = "Trường Quốc tế - ĐHQG Hà Nội";
        imagePath.value = Assets.images.iSHNULogo.path;
        break;
      default:
        title.value = "NAM VIỆT JSC";
        imagePath.value = Assets.images.icBookPng.path;
        break;
    }

    isTeacherPermission.value =
        userObject.value?.retrievePermission() == UserPermission.teacher;
    if (!isTeacherPermission.value) {
      username.value = "1952220001";
      name.value = "Phạm Thị Vân Anh";
    } else {
      username.value = "admin";
      name.value = "Quản trị hệ thống";
    }
    if (isTeacherPermission.value == false) retrieveSemesterPoints();
  }

  @override
  void onReady() async {
    super.onReady();
    Fimber.d("onReady()");
    biometricAuthIsNotSupported.value = await biometricAuthenticator.deviceIsSupported();
    userObject.value = await userRepo.retrieveUserInfo();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (biometricAuthIsNotSupported.value) {
      biometricLoginIsEnable.value = prefs.getBool('biometricLoginIsEnable') ?? false;
    }
    isLoggedIn.value = prefs.getBool('isLoggedIn') ?? false;
    if (!isLoggedIn.value) {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  retrieveSemesterPoints({bool? isRefresh = false}) async {
    Fimber.d("retrieveSemesterPoints({bool? isRefresh = $isRefresh})");
    if (isRefresh != true) isLoading.value = true;
    final response = await learningResultRepo?.retrieveSemesterPoints(null);
    response?.when(
      success: (data) {
        if (data.isSuccess()) {
          semesterPoint?.value = data.result;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.d(error.localizedErrorMessage ?? '');
      },
    );
    isLoading.value = false;
  }

  @override
  void onClose() {
    scrollController?.dispose();
    panelController = null;
    super.onClose();
  }

  // toggleBimometricLogin(bool enable) async {
  //   Fimber.d("toggleBimometricLogin($enable)");
  //   await userRepo.toggleBiometricLogin(enable);
  //   biometricLoginIsEnable.value = enable;
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('biometricLoginIsEnable', enable);
  // }

  toggleBiometricLogin(bool enable) async {
    Fimber.d("toggleBiometricLogin($enable)");

    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (enable) {
      await userRepo.toggleBiometricLogin(enable);
      biometricLoginIsEnable.value = enable;
      await prefs.setBool('biometricLoginIsEnable', enable);
    } else {
      await userRepo.toggleBiometricLogin(enable);
      biometricLoginIsEnable.value = enable;
      await prefs.remove('biometricLoginIsEnable');
    }
  }


  navigateToProfile() {
    Fimber.d("navigateToProfile()");
    Get.toNamed(Routes.PROFILE);
  }

  navigateToFinanceOverview() {
    Fimber.d("navigateToFinanceOverview()");
    Get.toNamed(Routes.FINANCE_OVERVIEW);
  }

  navigateToPasswordEdition() {
    Fimber.d("navigateToPasswordEdition()");
    Get.toNamed(Routes.PASSWORD_EDITION);
  }

  Future<void> logout() async {
    Fimber.d("logout()");
    EasyLoading.show(status: 'Đang đăng xuất...');

    sessionService.cancelLogoutTimer(); // Hủy bỏ bộ đếm thời gian

    await userRepo.logout();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('isLoggedIn');
    prefs.remove('userName');
    prefs.remove('password');
    prefs.remove('biometricLoginIsEnable');
    biometricLoginIsEnable.value = false; // Thay đổi trạng thái ở đây

    isLoggedIn.value = false; // Đặt biến cờ đăng nhập về false

    EasyLoading.dismiss();
    Get.offAllNamed(Routes.LOGIN);
    print("--------User logged out successfully.");
  }

  navigateToCertificate() {
    Fimber.d("navigateToCertificate()");
    Get.toNamed(Routes.LIST_CERTIFICATES);
  }

  navigateToWorkingProcess() {
    Fimber.d("navigateToWorkingProcess()");
    Get.toNamed(Routes.WORKING_PROCESS);
  }
}





