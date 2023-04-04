// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/working_process/model/language_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class CreateLanguageProcessController extends BaseController {
  bool isCreated = true;
  TextEditingController foreignController = TextEditingController();

  TextEditingController levelController = TextEditingController();

  WorkingProcessRepository repo = Get.find();

  LanguageProcessResponse? modelEdit;

  @override
  void onInit() async {
    isCreated = Get.arguments[0];
    modelEdit = Get.arguments[1];
    foreignController.text = modelEdit?.foreignlanguage ?? "";
    levelController.text = modelEdit?.level ?? "";
    super.onInit();
  }

  sendFormRequest() async {
    if (foreignController.text.isNotEmpty != true || levelController.text.isNotEmpty != true) {
      EasyLoading.showToast(LocaleKeys.errorInputMissing.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    isLoading.value = true;
    LanguageProcessResponse? requestModel = modelEdit?.copyWith(
      foreignlanguage: foreignController.text,
      level: levelController.text,
    );
    var response = isCreated == true
        ? await repo.insertLanguageProcess(requestModel)
        : await repo.updateLanguageProcess(requestModel);
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

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
