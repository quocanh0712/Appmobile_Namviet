

import 'package:ftu_lms/app/modules/allowance/controllers/allowance_controller.dart';
import 'package:get/get.dart';

class AllowanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllowanceController>(
            () => AllowanceController(), fenix: true
    );
  }
}