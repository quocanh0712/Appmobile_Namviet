// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
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
    if (isRefresh != true) isLoading.value = true;
    final response = await learningResultRepo?.retrieveSemesterPoints(null);
    response?.when(
      success: (data) {
        if (data.isSuccess()) {
          semesterPoint?.value = data.result;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.d(error.localizedErrorMessage ?? '');
      },
    );
    isLoading.value = false;
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
