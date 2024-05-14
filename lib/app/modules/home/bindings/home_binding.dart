// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../../attendance_stu/repository/attendance_stu_repository.dart';
import '../../attendance_stu/repository/impl/attendance_stu_repository_impl.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<AttendanceStuRepository>(() => AttendanceStuRepositoryImpl());
  }
}
