// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/document_form/controllers/document_form_controller.dart';
import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/app/modules/document_form/repository/impl/document_form_repository_impl.dart';
import 'package:get/get.dart';

class DocumentFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentFormRepository>(
      () => DocumentFormRepositoryImpl(),
    );
    Get.lazyPut<DocumentFormController>(
      () => DocumentFormController(),
    );
  }
}
