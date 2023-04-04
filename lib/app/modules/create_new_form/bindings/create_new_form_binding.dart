// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/app/modules/document_form/repository/impl/document_form_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/create_new_form_controller.dart';

class CreateNewFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewFormController>(
      () => CreateNewFormController(),
    );
    Get.lazyPut<DocumentFormRepository>(
      () => DocumentFormRepositoryImpl(),
    );
  }
}
