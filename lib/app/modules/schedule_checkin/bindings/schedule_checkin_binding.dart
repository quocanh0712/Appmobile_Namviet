// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../../../../data/repositories/impl/inventory_repository_impl.dart';
import '../../../../data/repositories/inventory_repository.dart';
import '../controllers/schedule_checkin_controller.dart';

class ScheduleCheckinBinding extends Bindings {
  @override
  // void dependencies() {
  //   Get.lazyPut<ScheduleCheckinController>(
  //     () => ScheduleCheckinController(),
  //   );
  // }
  void dependencies() {
    Get.lazyPut<InventoryRepository>(
      () => InventoryRepositoryImpl(),
    );
    Get.lazyPut<ScheduleCheckinController>(
      () => ScheduleCheckinController(),
    );
  }
}
