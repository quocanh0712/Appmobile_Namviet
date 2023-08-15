// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../base/base_appbar_view.dart';
import '../controllers/report_task_controller.dart';
import '../model/report_task_response.dart';
import 'report_process_view.dart';

class ReportTaskView extends ReportProcessView<ReportTaskController> {
  ReportTaskView({Key? key}) : super(key: key);

  @override
  String header1() {
    return "Văn bản";
  }

  @override
  String header2() {
    return "Nội dung";
  }

  @override
  String header3() {
    return "Trạng thái";
  }

  @override
  String? get titleAppBar => LocaleKeys.reportTask.tr;

  @override
  String? content1(int index) {
    ReportTaskResponse? response = controller.getItem(index);
    return "${response?.VanBan}";
  }

  @override
  String? content2(int index) {
    ReportTaskResponse? response = controller.getItem(index);
    return "${response?.NoiDung}";
  }

  @override
  String? content3(int index) {
    ReportTaskResponse? response = controller.getItem(index);
    return "${response?.TrangThai}";
  }

  // @override
  // void onCreatedNewItem() => controller.createAssignDocument();

  @override
  void onActionEdit(int index) => controller.updateReportTask(index);

  // @override
  // void onActionRemove(int index) => controller.removeAssignDocument(index);
}
