// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:get/get.dart';

import '../controllers/bill_payment_controller.dart';

class BillPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BillPaymentController>(
      () => BillPaymentController(),
    );
  }
}
