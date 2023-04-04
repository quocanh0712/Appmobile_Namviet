// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

import '../controllers/list_working_process_controller.dart';
import 'base_process_view.dart';

class ListWorkingProcessView extends BaseProcessView<ListWorkingProcessController> {
  ListWorkingProcessView({Key? key}) : super(key: key);

  @override
  String headerLeft() {
    return LocaleKeys.workingTime.tr;
  }

  @override
  String headerRight() {
    return LocaleKeys.workingPosition.tr;
  }

  @override
  String? get titleAppBar => LocaleKeys.workingProcess.tr;

  @override
  String? contentLeft(int index) {
    WorkingProcessResponse? response = controller.getItem(index);
    return "${DateTimeUtils.formatDateTime(response?.fromdate ?? DateTime.now(), monthSplashYear)} - ${DateTimeUtils.formatDateTime(response?.todate ?? DateTime.now(), monthSplashYear)}";
  }

  @override
  String? contentRight(int index) {
    WorkingProcessResponse? response = controller.getItem(index);
    return "${response?.position ?? ""} - ${response?.workplace ?? ""}";
  }

  @override
  void onCreatedNewItem() => controller.createNewWorkingProcess();

  @override
  void onActionEdit(int index) => controller.updateWorkingProcess(index);

  @override
  void onActionRemove(int index) => controller.removeWorkingProcess(index);
}
