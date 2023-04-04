// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/document_form_item_controller.dart';

class DocumentFormItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentFormItemController>(
      () => DocumentFormItemController(),
    );
  }
}
