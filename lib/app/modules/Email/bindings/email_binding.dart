// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/email_controller.dart';

class EmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailController>(
      () => EmailController(),
    );
  }
}