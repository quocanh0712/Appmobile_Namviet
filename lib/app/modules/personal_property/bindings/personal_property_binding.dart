


import 'package:ftu_lms/app/modules/personal_property/controllers/personal_property_controller.dart';
import 'package:get/get.dart';

class PersonalPropertyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalPropertyController>(
            () => PersonalPropertyController(), fenix: true
    );
  }
}