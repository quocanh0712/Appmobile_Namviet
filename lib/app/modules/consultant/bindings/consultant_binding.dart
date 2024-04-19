

import 'package:ftu_lms/app/modules/consultant/controllers/consultant_controller.dart';
import 'package:get/get.dart';

class ConsultantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultantController>(
            () => ConsultantController(), fenix: true
    );
  }
}