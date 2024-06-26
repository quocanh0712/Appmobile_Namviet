import 'package:fimber/fimber.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../base/base_controller.dart';

class DocumentManagementController extends BaseController {
  //TODO: Implement DocumentManagementController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;


  navigateToDocumentSearching() {
    Fimber.d("navigateToDocumentSearching()");
    Get.toNamed(Routes.DOCUMENT_SEARCHING  );
  }

  navigateToDocumentEmail() {
    Fimber.d("navigateToDocumentEmail()");
    Get.toNamed(Routes.DOCUMENT_EMAIL);
  }

}
