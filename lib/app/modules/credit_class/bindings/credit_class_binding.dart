

import 'package:ftu_lms/app/modules/credit_class/controllers/credit_class_controller.dart';
import 'package:get/get.dart';

class CreditClassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreditClassController>(
            () => CreditClassController(), fenix: true
    );
  }
}