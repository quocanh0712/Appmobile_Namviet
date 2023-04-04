// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:collection/collection.dart';
import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/test_schedule_object/test_schedule_object.dart';
import 'package:ftu_lms/data/bean/testing_plan_object/testing_plan_object.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/remote/requests/test_schedule_request_params/test_schedule_request_params.dart';
import 'package:ftu_lms/data/repositories/test_schedule_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

class TestingPlaningController extends BaseController {
  final TestScheduleRepository? testingPlanRepo = Get.find();
  final lstTestingPlan = <TestScheduleObject?>[].obs;
  Rx<SearchAdvanceResponse> searchAdvance = SearchAdvanceResponse().obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  @override
  void onReady() async {
    Fimber.d("onReady()");
    StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    userObject.value = await userRepo.retrieveUserInfo();
    final currentSearch = DateTimeUtils().retrieveCurrentAdvanceSearchParam();
    searchAdvance.value = SearchAdvanceResponse(year: currentSearch?.year, semester: currentSearch?.semester);
    loadData();
  }

  Future<void> loadData({bool? isRefresh = false}) async {
    Fimber.d("loadData()");
    if (isRefresh != true) isLoading.value = true;
    isLoading.value = true;
    final response = await testingPlanRepo?.loadTestingPlan(
        TestScheduleRequestParams(year: searchAdvance.value.year, semester: searchAdvance.value.semester, startindex: 1, length: 100));
    // final response = await testingPlanRepo?.loadTestingPlan(null);
    response?.when(success: (data) {
      if (data.isSuccess()) {
        Fimber.d(data.result.toString());
        lstTestingPlan.value = data.result ?? [];
      } else {
        isError.value = data.message;
      }
    }, failure: (error) {
      Fimber.e(error.toString());
      isError.value = error.localizedErrorMessage;
    });
    isLoading.value = false;
  }

  List<TestingPlanObject?>? _groupItems(List<TestingPlanObject?> lstItems) {
    final results = <TestingPlanObject?>[];
    final groupedItems = groupBy(lstItems, (p0) => p0?.startAt?.yMMMMd).entries.toList();
    for (var element in groupedItems) {
      results.add(TestingPlanObject(
          isLabel: true, course: element.key, startAt: element.value.first?.startAt));
      element.value.last = element.value.last?.copyWith(isLast: true);
      results.addAll(element.value);
    }
    return results;
  }
}
