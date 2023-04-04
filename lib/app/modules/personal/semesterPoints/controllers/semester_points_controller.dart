// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/all_courses_points_object/all_courses_points_object.dart';
import 'package:ftu_lms/data/bean/course_object/course_object.dart';
import 'package:ftu_lms/data/remote/requests/learning_result_request_params/learning_result_request_params.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

class SemesterPointsController extends BaseController {
  final LearningResultRepository? learningRepo = Get.find();
  final Rx<AllCoursesPointsObject?>? semesterPoint = AllCoursesPointsObject().obs;
  int? selectedSmester;
  String selectedYear = '';

  @override
  void onReady() {
    Fimber.d("onReady()");
    StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    loadData();
  }

  loadData({bool? isRefresh = false}) async {
    Fimber.d("loadData({bool? isRefresh = $isRefresh})");
    if (isRefresh != true) isLoading.value = true;
    // final response = await learningRepo?.retrieveAllCoursesPoints(
    //     LearningResultRequestParams(semester: selectedSmester.value, year: selectedYear.value));
    final response = await learningRepo?.retrieveAllCoursesPoints(LearningResultRequestParams(semester: selectedSmester, year: selectedYear, length: 100, startindex: 1));
    response?.when(
      success: (data) {
        if (data.isSuccess()) {
          semesterPoint?.value = data.result;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.e(error.toString());
        isLoading.value = false;
        isError.value = error.localizedErrorMessage;
      },
    );
    isLoading.value = false;
  }

  @override
  void onClose() {
    StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
    super.onClose();
  }

  void navigateToCoursePointDetail(CourseObject? course) {
    Fimber.d("navigateToCoursePointDetail()");
    Get.toNamed(Routes.COURSE_POINTS, arguments: course);
  }
}
