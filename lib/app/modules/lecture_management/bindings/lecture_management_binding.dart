


import 'package:ftu_lms/app/modules/lecture_management/controllers/lecture_management_controller.dart';
import 'package:get/get.dart';

class LectureManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LectureManagementController>(
            () => LectureManagementController(), fenix: true
    );
  }
}