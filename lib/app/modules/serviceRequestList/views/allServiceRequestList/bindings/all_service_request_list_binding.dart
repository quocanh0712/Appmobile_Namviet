// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/all_service_request_list_controller.dart';

class AllServiceRequestListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllServiceRequestListController>(
      () => AllServiceRequestListController(),
    );
  }
}
