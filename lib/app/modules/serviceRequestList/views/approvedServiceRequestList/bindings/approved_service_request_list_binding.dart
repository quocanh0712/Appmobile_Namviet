// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/approved_service_request_list_controller.dart';

class ApprovedServiceRequestListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApprovedServiceRequestListController>(
      () => ApprovedServiceRequestListController(),
    );
  }
}
