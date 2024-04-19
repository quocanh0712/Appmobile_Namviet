

import 'package:ftu_lms/app/modules/partner_project/controllers/partner_project_controller.dart';
import 'package:get/get.dart';

class PartnerProjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PartnerProjectController>(
            () => PartnerProjectController(), fenix: true
    );
  }
}