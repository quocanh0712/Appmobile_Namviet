// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/learning_results_controller.dart';

class LearningResultsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LearningResultsController>(
      () => LearningResultsController(),
    );
  }
}
