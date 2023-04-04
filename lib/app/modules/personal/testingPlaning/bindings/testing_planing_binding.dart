// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/testing_planing_controller.dart';

class TestingPlaningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestingPlaningController>(
      () => TestingPlaningController(),
    );
  }
}
