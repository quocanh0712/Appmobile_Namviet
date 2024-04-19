

import 'package:ftu_lms/app/modules/outline_detail/controllers/outline_detail_controller.dart';
import 'package:get/get.dart';

class OutlineDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OutlineDetailController>(
            () => OutlineDetailController(), fenix: true
    );
  }
}