// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/finance_overview_controller.dart';

class FinanceOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinanceOverviewController>(
      () => FinanceOverviewController(),
    );
  }
}
