


import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/salary_controller.dart';

class SalaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalaryController>(
            () => SalaryController(), fenix: true
    );
  }
}