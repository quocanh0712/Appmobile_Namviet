

import 'package:ftu_lms/app/modules/LMS/controllers/lms_controller.dart';
import 'package:get/get.dart';

class LMSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LMSController>(
            () => LMSController(), fenix: true
    );
  }
}