// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:get/get.dart';

class TuitionController extends BaseController {
  final Rx<SemesterBillResponseObject?> bill = SemesterBillResponseObject().obs;

  @override
  void onReady() {
    super.onReady();
    bill.value = Get.arguments as SemesterBillResponseObject?;
  }

  void performPayment() {
    Fimber.d('performPayment()');
    Get.toNamed(Routes.BILL_PAYMENT, arguments: bill.value);
  }
}
