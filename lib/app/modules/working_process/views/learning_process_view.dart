// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/views/base_process_view.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

import '../controllers/learning_process_controller.dart';

class LearningProcessView extends BaseProcessView<LearningProcessController> {
  LearningProcessView({Key? key}) : super(key: key);

  @override
  String headerLeft() {
    return LocaleKeys.learningYear.tr;
  }

  @override
  String headerRight() {
    return LocaleKeys.faculty.tr;
  }

  @override
  String? get titleAppBar => LocaleKeys.learningProcess.tr;

  @override
  String? contentLeft(int index) {
    LearningProcessResponse? response = controller.getItem(index);
    return "${DateTimeUtils.formatDateTime(response?.fromdate ?? DateTime.now(), monthSplashYear)} - ${DateTimeUtils.formatDateTime(response?.todate ?? DateTime.now(), monthSplashYear)}";
  }

  @override
  String? contentRight(int index) {
    LearningProcessResponse? response = controller.getItem(index);
    return "${response?.major ?? ""} - ${response?.trainingplace ?? ""}";
  }

  @override
  void onCreatedNewItem() => controller.createNewWorkingProcess();

  @override
  void onActionEdit(int index) => controller.updateWorkingProcess(index);

  @override
  void onActionRemove(int index) => controller.removeWorkingProcess(index);
}
