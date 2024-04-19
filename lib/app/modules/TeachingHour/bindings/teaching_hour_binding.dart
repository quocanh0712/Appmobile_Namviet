

import 'package:ftu_lms/app/modules/TeachingHour/controllers/teaching_hour_controller.dart';
import 'package:get/get.dart';

class TeachingHourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeachingHourController>(
            () => TeachingHourController(), fenix: true
    );
  }
}