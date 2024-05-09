


import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/controllers/list_student_attendance_controller.dart';
import 'package:get/get.dart';

import '../repository/impl/list_student_attendance_repository_impl.dart';
import '../repository/list_student_attendance_repository.dart';

class ListStudentAttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListStudentAttendanceController>(
            () => ListStudentAttendanceController(), fenix: true
    );
    Get.lazyPut<ListStudentAttendanceRepository>(() => ListStudentAttendanceRepositoryImpl());
  }
}