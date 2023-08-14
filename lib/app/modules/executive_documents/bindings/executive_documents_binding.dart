// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/elearning/controllers/elearning_detail_controller.dart';
import 'package:get/get.dart';

import '../controllers/executive_document_controller.dart';

class ExecutiveDocumentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExecutiveDocumentsController>(
        () => ExecutiveDocumentsController());
  }
}
