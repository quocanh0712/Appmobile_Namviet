// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/finance_response_object/finance_response_object.dart';
import 'package:ftu_lms/data/bean/finance_response_object/semester_finance.dart';
import 'package:ftu_lms/data/repositories/finance_repository.dart';
import 'package:get/get.dart';

class FinanceOverviewController extends BaseController {
  final Rx<FinanceResponseObject?> financeInfo = FinanceResponseObject().obs;
  final finaceRepo = Get.find<FinanceRepository?>();

  @override
  onReady() async {
    Fimber.d("onReady()");
    loadData();
  }

  void loadData({bool? isRefresh = false}) async {
    Fimber.d("loadData({bool? isRefresh = $isRefresh})");
    if (isRefresh != true) isLoading.value = true;
    final response = await finaceRepo?.getAll(null);
    response?.when(
      success: (data) {
        Fimber.d("${data.message}");
        if (data.isSuccess()) {
          financeInfo.value = data.result;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.e(error.toString());
        isError.value = error.localizedErrorMessage;
      },
    );
    isLoading.value = false;
  }

  navigateToFinaceBySemester(SemesterFinance? semester) {
    Fimber.d("navigateToFinaceBySemester(SemesterFinance? $semester)");
    Get.toNamed(Routes.FINANCE_BY_SEMESTER, arguments: semester);
  }
}
