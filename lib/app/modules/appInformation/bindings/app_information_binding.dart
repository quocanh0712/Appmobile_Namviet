// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/app_information_controller.dart';

class AppInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppInformationController>(
      () => AppInformationController(),
    );
  }
}
