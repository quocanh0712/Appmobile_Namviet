



import 'package:get/get.dart';

import '../controllers/approval_registration_controller.dart';

class ApprovalRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApprovalRegistrationController>(
            () => ApprovalRegistrationController(), fenix: true
    );
  }
}