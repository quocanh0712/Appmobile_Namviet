// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/semester_point_object/semester_point_object.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/utils/biometric_auth/biometric_authenticator.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import '../../../../generated/assets.gen.dart';

class PersonalController extends BaseController {
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
  Rx<String> imagePath = Assets.images.ftuLogo.path.obs;
  Rx<String> username = "1952220001".obs;
  Rx<String> name = "Phạm Thị Vân Anh".obs;
  //Rx<String> username = "admin".obs;
  //Rx<String> name = "Quản trị hệ thống".obs;
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
        imagePath.value = Assets.images.ftuLogo.path;
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
    if (isTeacherPermission.value == false) retrieveSemesterPoints();
  }

  @override
  void onReady() async {
    super.onReady();
    Fimber.d("onReady()");
    biometricAuthIsNotSupported.value =
        await biometricAuthenticator.deviceIsSupported();
    userObject.value = await userRepo.retrieveUserInfo();
    if (biometricAuthIsNotSupported.value) {
      biometricLoginIsEnable.value = userObject.value?.biometricAuth ?? false;
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

  toggleBimometricLogin(bool enable) async {
    Fimber.d("toggleBimometricLogin($enable)");
    await userRepo.toggleBiometricLogin(enable);
    biometricLoginIsEnable.value = enable;
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

  logout() async {
    Fimber.d("logout()");
    await userRepo.logout();
    Get.offAllNamed(Routes.LOGIN);
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
