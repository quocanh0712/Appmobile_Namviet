



import 'package:ftu_lms/app/modules/document_email/controllers/document_email_controller.dart';
import 'package:ftu_lms/app/modules/document_email/repository/document_email_repository.dart';
import 'package:ftu_lms/app/modules/document_email/repository/impl/document_email_repository_impl.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DocumentEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentEmailController>(
            () => DocumentEmailController(), fenix: true
    );
    Get.lazyPut<DocumentEmailRepository>(
            () => DocumentEmailRepositoryImpl(), fenix: true
    );
  }
}