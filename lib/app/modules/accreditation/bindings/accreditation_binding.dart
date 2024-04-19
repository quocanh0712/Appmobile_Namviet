

import 'package:ftu_lms/app/modules/accreditation/controllers/accreditation_controller.dart';
import 'package:get/get.dart';

class AccreditationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccreditationController>(
            () => AccreditationController(), fenix: true
    );
  }
}