// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.
import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../../../widgets/form_field/form_field_data.dart';
import '../../../../base/base_controller.dart';
import '../model/add_email_response.dart';

class AddEmailController extends BaseController {
  AddEmailResponse addEmailResponseResponse = const AddEmailResponse();
  bool isCreateForm = true;

  @override
  void onInit() async {
    addEmailResponseResponse = AddEmailResponse.fromJson(
        jsonDecode(await rootBundle.loadString(Assets.jsons.addEmailList)));
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
    if (addEmailResponseResponse.listForm == null) {
      return false;
    }
    for (var element in addEmailResponseResponse.listForm!) {
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
      ..addAll(addEmailResponseResponse.listForm ?? []);
    listForm[index] = data;
    addEmailResponseResponse =
        addEmailResponseResponse.copyWith(listForm: listForm);
  }

  String getTitle() => LocaleKeys.addemail.tr;
}
