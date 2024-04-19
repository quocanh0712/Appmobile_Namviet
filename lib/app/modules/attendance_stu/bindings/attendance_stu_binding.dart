


import 'package:ftu_lms/app/modules/attendance_stu/controllers/attendance_stu_controller.dart';
import 'package:get/get.dart';

class AttendanceStuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AttendanceStuController>(
            () => AttendanceStuController(), fenix: true
    );
  }
}