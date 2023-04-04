// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/training_points_controller.dart';

class TrainingPointsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrainingPointsController>(
      () => TrainingPointsController(),
    );
  }
}
