// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/one_gate_controller.dart';

class OneGateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OneGateController>(
      () => OneGateController(),
    );
  }
}
