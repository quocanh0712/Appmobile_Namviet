// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/practice_point_detail_response_object/practice_point_detail_response_object.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/parent_practice_criteria_object.dart';
import 'package:ftu_lms/data/remote/requests/practice_point_request_params/practice_point_request_params.dart';
import 'package:ftu_lms/data/repositories/practice_point_repository.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

class PracticePointDetailController extends BaseController {
  final Rx<ParentPracticeCriteriaObject?> practiceCriteria = ParentPracticeCriteriaObject().obs;
  final practicePointRepo = Get.find<PracticePointRepository?>();
  final lstPracticePoints = <PracticePointDetailResponseObject?>[].obs;

  @override
  void onReady() {
    super.onReady();
    practiceCriteria.value = Get.arguments as ParentPracticeCriteriaObject?;
    fetchData();
  }

  fetchData({bool? isRefresh = false}) async {
    Fimber.d('fetchData({bool? isRefresh = $isRefresh})');
    if (isRefresh != true) isLoading.value = true;
    final response = await practicePointRepo
        ?.getChiTiet(PracticePointRequestParams(subCriteriaId: practiceCriteria.value?.id, length: 100, startindex: 1));
    response?.when(success: (data) {
      if (data.isSuccess()) {
        Fimber.d(data.result.toString());
        lstPracticePoints.value = data.result ?? [];
      } else {
        isError.value = data.message;
      }
    }, failure: (error) {
      Fimber.e(error.toString());
      isError.value = error.localizedErrorMessage;
    });
    isLoading.value = false;
  }

  @override
  void onClose() {
    StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
    super.onClose();
  }
}
