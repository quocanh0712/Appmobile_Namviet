

import 'package:ftu_lms/app/modules/shopping_need/controllers/shopping_need_controller.dart';
import 'package:get/get.dart';

class ShoppingNeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingNeedController>(
            () => ShoppingNeedController(), fenix: true
    );
  }
}