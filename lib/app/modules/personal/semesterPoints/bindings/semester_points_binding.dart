// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/semester_points_controller.dart';

class SemesterPointsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SemesterPointsController>(
      () => SemesterPointsController(),
    );
  }
}
