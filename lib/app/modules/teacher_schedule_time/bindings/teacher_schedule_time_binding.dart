import 'package:get/get.dart';

import '../controllers/teacher_schedule_time_controller.dart';

class TeacherScheduleTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeacherScheduleTimeController>(
      () => TeacherScheduleTimeController(), fenix: true
    );
  }
}
