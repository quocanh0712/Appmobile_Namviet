// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:get/get.dart';

class OneGateController extends BaseController {
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

  void navigateYourServiceRequest() {
    Get.toNamed(Routes.SERVICE_REQUEST_LIST);
  }

  void navigateSampleServiceRequest() {
    Get.toNamed(Routes.DOCUMENT_FORM);
  }
}
