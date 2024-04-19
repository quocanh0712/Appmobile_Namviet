

import 'package:ftu_lms/app/modules/exam_schedule/controllers/exam_schedule_controller.dart';
import 'package:get/get.dart';

class ExamScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExamScheduleController>(
            () => ExamScheduleController(), fenix: true
    );
  }
}