// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:get/get.dart';

class StuCheckinController extends BaseController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void navigateStuCheckIn() {
    Get.toNamed(Routes.STU_CHECKIN);
  }

  void navigateStuNoCheckIn() {
    Get.toNamed(Routes.STU_NOCHECKIN);
  }

  void navigateStuOutSiteManager() {
    Get.toNamed(Routes.STU_OUTSIDE_MANAGER);
  }

  void navigateStuWorkManager() {
    Get.toNamed(Routes.STU_WORK_MANAGER);
  }

  void navigateStuCrossManager() {
    Get.toNamed(Routes.STU_CROSS_MANAGER);
  }

  void navigateStuCertificateManager() {
    Get.toNamed(Routes.STU_CERTIFICATE_MANAGER);
  }
}
