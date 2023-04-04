// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/practice_point_detail_controller.dart';

class PracticePointDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PracticePointDetailController>(
      () => PracticePointDetailController(),
    );
  }
}
