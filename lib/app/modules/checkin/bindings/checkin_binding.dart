// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:get/get.dart';

import '../controllers/checkin_controller.dart';

class CheckinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckinController>(
      () => CheckinController(),
    );
  }
}
