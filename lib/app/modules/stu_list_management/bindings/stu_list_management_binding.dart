

import 'package:ftu_lms/app/modules/stu_list_management/controllers/stu_list_management_controller.dart';
import 'package:get/get.dart';

class StuListManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StuListManagementController>(
            () => StuListManagementController(), fenix: true
    );
  }
}