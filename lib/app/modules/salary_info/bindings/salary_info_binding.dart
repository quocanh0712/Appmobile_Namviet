

import 'package:ftu_lms/app/modules/salary_info/controllers/salary_info_controller.dart';
import 'package:get/get.dart';

class SalaryInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalaryInfoController>(
            () => SalaryInfoController(), fenix: true
    );
  }
}