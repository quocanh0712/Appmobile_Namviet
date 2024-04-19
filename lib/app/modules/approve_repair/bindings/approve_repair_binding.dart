

import 'package:ftu_lms/app/modules/approve_repair/controllers/approve_repair_controller.dart';
import 'package:get/get.dart';

class ApproveRepairBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApproveRepairController>(
            () => ApproveRepairController(), fenix: true
    );
  }
}