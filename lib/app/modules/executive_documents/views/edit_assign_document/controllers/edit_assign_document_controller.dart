// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.
import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../../../widgets/form_field/form_field_data.dart';
import '../../../../base/base_controller.dart';
import '../model/edit_assign_document_response.dart';

class EditAssignDocumentController extends BaseController {
  EditAssignDocumentResponse editAssignDocumentResponse =
      const EditAssignDocumentResponse();
  bool isCreateForm = true;

  @override
  void onInit() async {
    super.onInit();
    editAssignDocumentResponse = EditAssignDocumentResponse.fromJson(jsonDecode(
        await rootBundle.loadString(Assets.jsons.editAssignDocumentList)));
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
    if (editAssignDocumentResponse.listForm == null) {
      return false;
    }
    for (var element in editAssignDocumentResponse.listForm!) {
      if (element.required == true &&
          element.value?.isEmptyOrNull == true &&
          element.values?.isEmptyOrNull == true) {
        return false;
      }
    }
    return true;
  }

  void updateFormFieldData(int index, FormFieldData data) async {
    List<FormFieldData> listForm = List.empty(growable: true)
      ..addAll(editAssignDocumentResponse.listForm ?? []);
    listForm[index] = data;
    editAssignDocumentResponse =
        editAssignDocumentResponse.copyWith(listForm: listForm);
  }

  String getTitle() => LocaleKeys.editassignDocument.tr;
}
