

import 'package:ftu_lms/app/modules/repair_request/controllers/repair_request_controller.dart';
import 'package:get/get.dart';

class RepairRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepairRequestController>(
            () => RepairRequestController(), fenix: true
    );
  }
}