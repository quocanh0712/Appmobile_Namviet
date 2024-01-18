import 'package:get/get.dart';

import '../controllers/document_management_controller.dart';

class DocumentManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentManagementController>(
      () => DocumentManagementController(), fenix: true
    );
  }
}
