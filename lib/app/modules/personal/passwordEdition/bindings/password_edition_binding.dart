// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/password_edition_controller.dart';

class PasswordEditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordEditionController>(
      () => PasswordEditionController(),
    );
  }
}
