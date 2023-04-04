// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/schedule_time_controller.dart';
import '../repository/impl/schedule_time_repository_impl.dart';
import '../repository/schedule_repository.dart';

class ScheduleTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScheduleTimeRepository>(() => ScheduleTimeRepositoryImpl());
    Get.lazyPut<ScheduleTimeController>(() => ScheduleTimeController());
  }
}
