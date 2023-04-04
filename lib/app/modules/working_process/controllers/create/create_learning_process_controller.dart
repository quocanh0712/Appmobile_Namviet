// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class CreateLearningProcessController extends BaseController {
  bool isCreated = true;

  DateTime? startDate;
  DateTime? endDate;

  TextEditingController majorController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  WorkingProcessRepository repo = Get.find();

  LearningProcessResponse? modelEdit;

  @override
  void onInit() async {
    isCreated = Get.arguments[0];
    modelEdit = Get.arguments[1];
    startDate = modelEdit?.fromdate;
    endDate = modelEdit?.todate;
    majorController.text = modelEdit?.major ?? "";
    locationController.text = modelEdit?.trainingplace ?? "";
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

  updateStartDate(DateTime? date) {
    startDate = date;
  }

  updateEndDate(DateTime? date) {
    endDate = date;
  }

  sendFormRequest() async {
    if (majorController.text.isNotEmpty != true ||
        locationController.text.isNotEmpty != true ||
        startDate == null ||
        endDate == null) {
      EasyLoading.showToast(LocaleKeys.errorInputMissing.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    isLoading.value = true;
    LearningProcessResponse? requestModel = modelEdit?.copyWith(
      fromdate: startDate,
      todate: endDate,
      major: majorController.text,
      trainingplace: locationController.text,
    );
    var response = isCreated == true
        ? await repo.insertLearningProcess(requestModel)
        : await repo.updateLearningProcess(requestModel);
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        showAlertDialog(LocaleKeys.titleDialog.tr, LocaleKeys.sendRequestSuccess.tr, () {
          Get.back(result: true);
        });
      } else {
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = e.localizedErrorMessage;
    });
  }
}
