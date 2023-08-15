// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/edit_assign_document_controller.dart';

class EditAssignDocumentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAssignDocumentController>(
      () => EditAssignDocumentController(),
    );
  }
}
