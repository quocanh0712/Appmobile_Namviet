// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/finance_response_object/semester_finance.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:ftu_lms/data/remote/requests/finance_request_params/finance_request_params.dart';
import 'package:ftu_lms/data/repositories/finance_repository.dart';
import 'package:get/get.dart';

class FinanceBySemesterController extends BaseController {
  final Rx<SemesterFinance?> semester = SemesterFinance().obs;
  final lstBills = <SemesterBillResponseObject?>[].obs;
  final finaceRepo = Get.find<FinanceRepository?>();

  @override
  void onReady() async {
    super.onReady();
    semester.value = Get.arguments as SemesterFinance?;
    loadData();
  }

  void loadData({bool? isRefresh = false}) async {
    Fimber.d('loadData({bool? isRefresh = $isRefresh})');
    isLoading.value = true;
    final response = await finaceRepo?.getAllBills(FinanceRequestParams(
        year: semester.value?.year, semester: semester.value?.semester));
    isLoading.value = false;
    response?.when(
      success: (data) {
        Fimber.d('response?.when(success: (data)');
        if (data.isSuccess()) {
          lstBills.value = data.result ?? [];
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.e(error.toString());
        isError.value = error.localizedErrorMessage;
      },
    );
  }

  void navigateToPayBill(SemesterBillResponseObject? bill) {
    Fimber.d('navigateToPayBill(SemesterBillResponseObject? $bill)');
    Get.toNamed(Routes.TUITION, arguments: bill);
  }

  void doPayment() {
    Get.toNamed(Routes.BILL_PAYMENT);
  }
}
