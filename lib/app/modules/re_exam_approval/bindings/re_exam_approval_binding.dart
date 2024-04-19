

import 'package:ftu_lms/app/modules/re_exam_approval/controllers/re_exam_approval_controller.dart';
import 'package:get/get.dart';

class ReExamApprovalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReExamApprovalController>(
            () => ReExamApprovalController(), fenix: true
    );
  }
}