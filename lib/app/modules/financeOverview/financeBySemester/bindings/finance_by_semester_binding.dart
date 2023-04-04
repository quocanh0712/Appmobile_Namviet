// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/finance_by_semester_controller.dart';

class FinanceBySemesterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinanceBySemesterController>(
      () => FinanceBySemesterController(),
    );
  }
}
