


import 'package:ftu_lms/app/modules/debt_list/controllers/debt_list_controller.dart';
import 'package:get/get.dart';

class DebtListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DebtListController>(
            () => DebtListController(), fenix: true
    );
  }
}