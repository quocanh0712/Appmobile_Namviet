

import 'package:ftu_lms/app/modules/another_schedule/controllers/another_schedule_controller.dart';
import 'package:get/get.dart';

class AnotherScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnotherScheduleController>(
            () => AnotherScheduleController(), fenix: true
    );
  }
}