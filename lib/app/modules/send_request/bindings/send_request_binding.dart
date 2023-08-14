// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../../document_form/repository/document_form_repository.dart';
import '../../document_form/repository/impl/document_form_repository_impl.dart';
import '../controllers/send_request_controller.dart';

class SendRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendRequestController>(
      () => SendRequestController(),
    );
    Get.lazyPut<DocumentFormRepository>(
      () => DocumentFormRepositoryImpl(),
    );
  }
}
