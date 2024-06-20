



import 'package:ftu_lms/app/modules/document_email/views/detail_email/controllers/detail_email_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class DetailEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailEmailController>(
            () => DetailEmailController(), fenix: true
    );

  }
}