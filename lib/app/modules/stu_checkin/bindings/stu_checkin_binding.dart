// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/list_stu_checkin_controller.dart';
import '../controllers/list_stu_nocheckin_controller.dart';
import '../controllers/stu_certificate_manager_controller.dart';
import '../controllers/stu_checkin_controller.dart';
import '../controllers/stu_cross_manager_controller.dart';
import '../controllers/stu_outside_manager_controller.dart';
import '../controllers/stu_work_manager_controller.dart';

class StuCheckinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StuCheckinController>(
      () => StuCheckinController(),
    );
    Get.lazyPut<ListStuCheckinController>(
      () => ListStuCheckinController(),
    );
    Get.lazyPut<ListStuNoCheckinController>(
      () => ListStuNoCheckinController(),
    );
    Get.lazyPut<StuCertificateManagerController>(
      () => StuCertificateManagerController(),
    );
    Get.lazyPut<StuCrossManagerController>(
      () => StuCrossManagerController(),
    );
    Get.lazyPut<StuOutsideManagerController>(
      () => StuOutsideManagerController(),
    );
    Get.lazyPut<StuWorkManagerController>(
      () => StuWorkManagerController(),
    );
  }
}
