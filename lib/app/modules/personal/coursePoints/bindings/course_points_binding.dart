// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/course_points_controller.dart';

class CoursePointsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoursePointsController>(
      () => CoursePointsController(),
    );
  }
}
