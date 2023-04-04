// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/course_object/course_object.dart';
import 'package:ftu_lms/data/bean/single_course_points_object/single_course_points_object.dart';
import 'package:ftu_lms/data/remote/requests/learning_result_request_params/learning_result_request_params.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';
import 'package:get/get.dart';

class CoursePointsController extends BaseController {
  final LearningResultRepository? learningRepo = Get.find();
  final coursePoints = <SingleCoursePointsObject?>[].obs;
  CourseObject? course;

  @override
  void onInit() {
    course = Get.arguments as CourseObject?;
    super.onInit();
  }

  @override
  onReady() async {
    loadData();
  }

  Future<void> loadData({bool? isRefesh = false}) async {
    Fimber.d("loadData()");
    if (isRefesh != true) isLoading.value = true;
    // final response = await learningRepo
    //     ?.retrieveSingleCoursePoints(LearningResultRequestParams(courseId: course?.id));
    final response = await learningRepo?.retrieveSingleCoursePoints(LearningResultRequestParams(courseId: course?.id, length: 100, startindex: 1));
    response?.when(
      success: (data) {
        if (data.isSuccess()) {
          coursePoints.value = data.result ?? [];
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
}
