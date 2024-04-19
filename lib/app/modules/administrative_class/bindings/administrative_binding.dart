

import 'package:ftu_lms/app/modules/administrative_class/controllers/administrative_controller.dart';
import 'package:get/get.dart';

class AdministrativeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdministrativeController>(
            () => AdministrativeController(), fenix: true
    );
  }
}