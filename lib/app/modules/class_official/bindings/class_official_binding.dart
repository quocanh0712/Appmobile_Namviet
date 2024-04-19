

import 'package:ftu_lms/app/modules/class_official/controllers/class_official_controller.dart';
import 'package:get/get.dart';

class ClassOfficialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassOfficialController>(
            () => ClassOfficialController(), fenix: true
    );
  }
}