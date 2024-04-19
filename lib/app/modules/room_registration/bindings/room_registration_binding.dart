

import 'package:ftu_lms/app/modules/room_registration/controllers/room_registration_controller.dart';
import 'package:get/get.dart';

class RoomRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomRegistrationController>(
            () => RoomRegistrationController(), fenix: true
    );
  }
}