


import 'package:ftu_lms/app/modules/teaching_schedule/controllers/teaching_schedule_controller.dart';
import 'package:get/get.dart';

class TeachingScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeachingScheduleController>(
            () => TeachingScheduleController(), fenix: true
    );
  }
}