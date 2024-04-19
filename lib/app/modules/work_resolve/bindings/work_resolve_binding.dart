

import 'package:ftu_lms/app/modules/work_resolve/controllers/work_resolve_controller.dart';
import 'package:get/get.dart';

class WorkResolveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkResolveController>(
            () => WorkResolveController(), fenix: true
    );
  }
}