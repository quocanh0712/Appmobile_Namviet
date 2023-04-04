// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/parent_practice_criteria_object.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/practice_point_response_object.dart';
import 'package:ftu_lms/data/remote/requests/practice_point_request_params/practice_point_request_params.dart';
import 'package:ftu_lms/data/repositories/practice_point_repository.dart';
import 'package:get/get.dart';

class PracticePointOverviewController extends BaseController {
  final practicePointRepo = Get.find<PracticePointRepository?>();
  final Rx<PracticePointResponseObject?> practicePoints = PracticePointResponseObject().obs;

  @override
  onReady() {
    Fimber.d('onReady()');
    fetchData();
  }

  fetchData({bool? isRefresh = false}) async {
    Fimber.d('fetchData({bool? isRefresh = $isRefresh})');
    if (isRefresh != true) isLoading.value = true;
    final response = await practicePointRepo
        ?.getAll(PracticePointRequestParams(startindex: 1, length: 100));
    response?.when(success: (data) {
      if (data.isSuccess()) {
        Fimber.d(data.result.toString());
        practicePoints.value = data.result;
      } else {
        isError.value = data.message;
      }
    }, failure: (error) {
      Fimber.e(error.toString());
      isError.value = error.localizedErrorMessage;
    });
    isLoading.value = false;
  }

  navigateToPracticePointDetail(ParentPracticeCriteriaObject? practiceCriteria) {
    Fimber.d('navigateToPracticePointDetail()');
    Get.toNamed(Routes.PRACTICE_POINT_DETAIL, arguments: practiceCriteria);
  }
}
