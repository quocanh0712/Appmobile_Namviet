// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'dart:convert';

import 'package:fimber/fimber.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.gen.dart';
import '../model/report_task_response.dart';

class ReportTaskController extends BaseListController<ReportTaskResponse> {
  @override
  void onInit() async {
    Iterable list =
        json.decode(await rootBundle.loadString(Assets.jsons.reportTaskList));
    listData.value = List<ReportTaskResponse>.from(
        list.map((model) => ReportTaskResponse.fromJson(model)));
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //void createAssignDocument() async {}

  void updateReportTask(int index) async {
    Get.toNamed(Routes.EDIT_REPORT_TASK);
  }

  //void removeAssignDocument(int index) async {}

  @override
  Future<Result<BaseResponseObject<List<ReportTaskResponse?>?>, Exception>>
      callToHost() {
    isLoading.value = false;
    // TODO: implement callToHost
    throw UnimplementedError();
  }
}
