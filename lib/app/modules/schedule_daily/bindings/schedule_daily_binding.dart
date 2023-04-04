// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/schedule_daily/repository/impl/schedule_daily_repository_impl.dart';
import 'package:ftu_lms/app/modules/schedule_daily/repository/schedule_daily_repository.dart';
import 'package:get/get.dart';

import '../controllers/schedule_daily_controller.dart';

class ScheduleDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScheduleDailyController>(() => ScheduleDailyController());
    Get.lazyPut<ScheduleDailyRepository>(() => ScheduleDailyRepositoryImpl());
  }
}
