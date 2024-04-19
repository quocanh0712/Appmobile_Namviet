

import 'package:ftu_lms/app/modules/social_insurance/controllers/social_insurance_controller.dart';
import 'package:get/get.dart';

class SocialInsuranceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocialInsuranceController>(
            () => SocialInsuranceController(), fenix: true
    );
  }
}