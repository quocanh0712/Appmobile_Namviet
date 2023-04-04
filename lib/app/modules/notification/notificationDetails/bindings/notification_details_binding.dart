// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/notification_details_controller.dart';

class NotificationDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationDetailsController>(
      () => NotificationDetailsController(),
    );
  }
}
