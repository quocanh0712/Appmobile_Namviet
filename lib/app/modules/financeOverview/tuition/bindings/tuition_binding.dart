// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/tuition_controller.dart';

class TuitionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TuitionController>(
      () => TuitionController(),
    );
  }
}
