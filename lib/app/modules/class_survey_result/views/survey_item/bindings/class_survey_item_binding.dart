// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/survey_result/views/survey_item/repository/survey_item_repository.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/repository/survey_item_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/class_survey_item_controller.dart';

class SurveyItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SurveyItemRepository>(() => SurveyItemRepositoryImpl());
    Get.lazyPut<SurveyItemController>(
      () => SurveyItemController(),
    );
  }
}
