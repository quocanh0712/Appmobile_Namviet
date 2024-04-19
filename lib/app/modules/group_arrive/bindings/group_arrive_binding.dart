

import 'package:ftu_lms/app/modules/group_arrive/controllers/group_arrive_controller.dart';
import 'package:get/get.dart';

class GroupArriveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GroupArriveController>(
            () => GroupArriveController(), fenix: true
    );
  }
}