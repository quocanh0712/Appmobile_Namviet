


import 'package:ftu_lms/app/modules/inspection_schedule/controllers/inspection_schedule_controller.dart';
import 'package:get/get.dart';

class InspectionScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InspectionScheduleController>(
            () => InspectionScheduleController(), fenix: true
    );
  }
}