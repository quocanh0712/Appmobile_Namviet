// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/consciousness_evaluation_controller.dart';

class ConsciousnessEvaluationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsciousnessEvaluationController>(
      () => ConsciousnessEvaluationController(),
    );
  }
}
