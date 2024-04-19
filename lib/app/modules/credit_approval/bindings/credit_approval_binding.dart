

import 'package:ftu_lms/app/modules/credit_approval/controllers/credit_approval_controller.dart';
import 'package:get/get.dart';

class CreditApprovalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditApprovalController>(
            () => CreditApprovalController(), fenix: true
    );
  }
}