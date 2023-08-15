// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/edit_report_task_controller.dart';

class EditReportTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditReportTaskController>(
      () => EditReportTaskController(),
    );
  }
}
