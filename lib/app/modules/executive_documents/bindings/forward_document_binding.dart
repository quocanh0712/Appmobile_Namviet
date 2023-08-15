// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/assign_document_controller.dart';
import '../controllers/forward_document_controller.dart';

class ForwardDocumentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForwardDocumentController>(
      () => ForwardDocumentController(),
    );
  }
}
