// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/semester_point_object/semester_point_object.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';
import 'package:get/get.dart';

class LearningResultsController extends BaseController {
  ScrollController? scrollController;
  final scrollUpOverTransparent = false.obs;

  final learningResultRepo = Get.find<LearningResultRepository?>();
  final Rx<SemesterPointObject?>? semesterPoint = SemesterPointObject().obs;

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Loading...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
  }

  @override
  void onReady() async {
    super.onReady();
    scrollController?.addListener(() {
      if ((scrollController?.offset ?? 0) > 75) {
        if (scrollUpOverTransparent.value != true) scrollUpOverTransparent.value = true;
      } else {
        if (scrollUpOverTransparent.value != false) scrollUpOverTransparent.value = false;
      }
    });
    retrieveSemesterPoints();
  }

  retrieveSemesterPoints({bool? isRefresh = false}) async {
    Fimber.d("retrieveSemesterPoints({bool? isRefresh = $isRefresh})");
    showLoadingIndicator();
    final response = await learningResultRepo?.retrieveSemesterPoints(null);
    response?.when(
      success: (data) {
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          semesterPoint?.value = data.result;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        dismissLoadingIndicator(); 
        Fimber.d(error.localizedErrorMessage ?? '');
      },
    );
  }

  @override
  void onClose() {
    scrollController = null;
    super.onClose();
  }

  navigateToSemesterPoints() {
    Fimber.d("navigateToSemesterPoints()");
    Get.toNamed(Routes.SEMESTER_POINTS);
  }
}
