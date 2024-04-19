


import 'package:ftu_lms/app/modules/vehicle_registration/controllers/vehicle_registration_controller.dart';
import 'package:get/get.dart';

class VehicleRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleRegistrationController>(
            () => VehicleRegistrationController(), fenix: true
    );
  }
}