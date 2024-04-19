

import 'package:ftu_lms/app/modules/job_declaration/controllers/job_declaration_controller.dart';
import 'package:get/get.dart';

class JobDeclarationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobDeclarationController>(
            () => JobDeclarationController(), fenix: true
    );
  }
}