

import 'package:ftu_lms/app/modules/test_point/controllers/test_point_controller.dart';
import 'package:get/get.dart';

class TestPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestPointController>(
            () => TestPointController(), fenix: true
    );
  }
}