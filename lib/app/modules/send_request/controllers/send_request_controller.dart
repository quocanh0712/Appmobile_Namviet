// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.
import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';
import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';
import '../../../../generated/assets.gen.dart';
import '../../../../utils/constants.dart';
import '../../../../widgets/form_field/form_field_data.dart';
import '../../base/base_controller.dart';
import '../../base/base_list_controller.dart';
import '../../document_form/model/document_form_request.dart';
import '../../document_form/model/document_form_response.dart';
import '../../document_form/model/upload_file_request.dart';
import '../../document_form/repository/document_form_repository.dart';

class SendRequestController extends BaseController {
  DocumentFormResponse documentFormResponse = const DocumentFormResponse();
  bool isCreateForm = true;

  @override
  void onInit() async {
    documentFormResponse = DocumentFormResponse.fromJson(jsonDecode(
        await rootBundle.loadString(Assets.jsons.serviceRequestList)));
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
    if (documentFormResponse.listForm == null) {
      return false;
    }
    for (var element in documentFormResponse.listForm!) {
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
      ..addAll(documentFormResponse.listForm ?? []);
    listForm[index] = data;
    documentFormResponse = documentFormResponse.copyWith(listForm: listForm);
  }

  String getTitle() => LocaleKeys.sendRequest.tr;
}
