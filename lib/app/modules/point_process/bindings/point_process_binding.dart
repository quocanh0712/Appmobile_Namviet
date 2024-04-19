

import 'package:ftu_lms/app/modules/point_process/controllers/point_process_controller.dart';
import 'package:get/get.dart';

class PointProcessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PointProcessController>(
            () => PointProcessController(), fenix: true
    );
  }
}