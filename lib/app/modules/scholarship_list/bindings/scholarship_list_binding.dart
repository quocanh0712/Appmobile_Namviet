

import 'package:ftu_lms/app/modules/scholarship_list/controllers/scholarship_list_controller.dart';
import 'package:get/get.dart';

class ScholarshipListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScholarshipListController>(
            () => ScholarshipListController(), fenix: true
    );
  }
}