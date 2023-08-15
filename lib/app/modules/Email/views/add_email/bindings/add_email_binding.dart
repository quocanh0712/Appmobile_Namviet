// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/add_email_controller.dart';

class AddEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEmailController>(
      () => AddEmailController(),
    );
  }
}
