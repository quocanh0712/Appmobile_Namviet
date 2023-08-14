// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/survey_result/repository/survey_result_repository.dart';
import 'package:ftu_lms/app/modules/survey_result/repository/survey_result_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/class_survey_result_controller.dart';

class ClassSurveyResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SurveyResultRepository>(
      () => SurveyResultRepositoryImpl(),
    );
    Get.lazyPut<ClassSurveyResultController>(
      () => ClassSurveyResultController(),
    );
  }
}
