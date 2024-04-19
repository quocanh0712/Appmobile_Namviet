

import 'package:ftu_lms/app/modules/property_lookup/controllers/property_lookup_controller.dart';
import 'package:get/get.dart';

class PropertyLookUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertyLookUpController>(
            () => PropertyLookUpController(), fenix: true
    );
  }
}