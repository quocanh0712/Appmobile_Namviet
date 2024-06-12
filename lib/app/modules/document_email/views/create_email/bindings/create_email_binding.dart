



import 'package:ftu_lms/app/modules/document_email/views/create_email/controllers/create_email_controller.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/repository/create_email_repository.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/repository/impl/create_email_repository_impl.dart';
import 'package:get/get.dart';

class CreateEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateEmailController>(
            () => CreateEmailController(), fenix: true
    );

    Get.lazyPut<CreateEmailRepository>(() => CreateEmailRepositoryImpl());
  }
}