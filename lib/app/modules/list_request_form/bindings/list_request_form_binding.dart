// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/list_request_form_controller.dart';

class ListRequestFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListRequestFormController>(
      () => ListRequestFormController(),
    );
  }
}
