

import 'package:ftu_lms/app/modules/financial_detail/controllers/financial_detail_controller.dart';
import 'package:get/get.dart';

class FinancialDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinancialDetailController>(
            () => FinancialDetailController(), fenix: true
    );
  }
}