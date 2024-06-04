



import 'package:ftu_lms/app/modules/document_searching/views/document_pdf/controllers/document_pdf_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DocumentPdfBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentPdfController>(
            () => DocumentPdfController(), fenix: true
    );

  }
}