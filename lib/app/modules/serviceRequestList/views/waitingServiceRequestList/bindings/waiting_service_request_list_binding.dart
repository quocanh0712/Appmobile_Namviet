// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/waiting_service_request_list_controller.dart';

class WaitingServiceRequestListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaitingServiceRequestListController>(
      () => WaitingServiceRequestListController(),
    );
  }
}
