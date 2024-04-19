

import 'package:ftu_lms/app/modules/text_income/controllers/text_income_controller.dart';
import 'package:get/get.dart';

class TextIncomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextIncomeController>(
            () => TextIncomeController(), fenix: true
    );
  }
}