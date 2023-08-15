// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.
import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../../../widgets/form_field/form_field_data.dart';
import '../../../../base/base_controller.dart';
import '../model/edit_report_task_response.dart';

class EditReportTaskController extends BaseController {
  EditReportTaskResponse editReportTaskResponseResponse =
      const EditReportTaskResponse();
  bool isCreateForm = true;

  @override
  void onInit() async {
    editReportTaskResponseResponse = EditReportTaskResponse.fromJson(jsonDecode(
        await rootBundle.loadString(Assets.jsons.editReportTaskList)));
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

  void sendFormRequest() {}

  bool isValidateInputForm() {
    if (editReportTaskResponseResponse.listForm == null) {
      return false;
    }
    for (var element in editReportTaskResponseResponse.listForm!) {
      if (element.required == true &&
          element.value?.isEmptyOrNull == true &&
          element.values?.isEmptyOrNull == true) {
        return false;
      }
    }
    return true;
  }

  void updateFormFieldData(int index, FormFieldData data) {
    List<FormFieldData> listForm = List.empty(growable: true)
      ..addAll(editReportTaskResponseResponse.listForm ?? []);
    listForm[index] = data;
    editReportTaskResponseResponse =
        editReportTaskResponseResponse.copyWith(listForm: listForm);
  }

  String getTitle() => LocaleKeys.editreportTask.tr;
}
