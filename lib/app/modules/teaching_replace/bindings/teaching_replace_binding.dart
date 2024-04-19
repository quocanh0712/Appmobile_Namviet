

import 'package:ftu_lms/app/modules/teaching_replace/controllers/teaching_replace_controller.dart';
import 'package:get/get.dart';

class TeachingReplaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeachingReplaceController>(
            () => TeachingReplaceController(), fenix: true
    );
  }
}