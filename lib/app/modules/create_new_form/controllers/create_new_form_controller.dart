// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/document_form/model/delete_request_model.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/upload_file_request.dart';
import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';
import 'package:get/get.dart';

class CreateNewFormController extends BaseController {
  DocumentFormResponse documentFormResponse = const DocumentFormResponse();
  bool isCreateForm = true;

  @override
  void onInit() {
    List transferData = Get.arguments;
    if (transferData.isEmpty) {
      isError.value = LocaleKeys.commonErrorMessage.tr;
      return;
    }
    documentFormResponse = transferData[0];
    if (transferData.length == 2) {
      isCreateForm = transferData[1];
    }
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

  void sendFormRequest() async {
    bool isValid = isValidateInputForm();
    if (isValid) {
      bool isUploadFileSuccess = true;
      isLoading.value = true;
      DocumentFormRepository documentFormRepository = Get.find();
      List<FormFieldData>? lisFormField = List.empty(growable: true)
        ..addAll(documentFormResponse.listForm ?? []);
      // upload file
      for (int i = 0; i < lisFormField.length; i++) {
        FormFieldData? element = documentFormResponse.listForm?[i];
        if (element?.type?.getFormType() == FormType.fileUpload) {
          List<ValueModel> newListValue = List.empty(growable: true);
          element?.values?.forEach((value) async {
            final response = await documentFormRepository
                .uploadFile(UploadFileRequest(name: value.label, strBase64: value.value));
            response.when(success: (data) {
              if (data.isSuccess() && data.result?.isNotEmpty == true) {
                newListValue.add(ValueModel(label: value.label, value: data.result));
              } else {
                isUploadFileSuccess = false;
              }
            }, failure: (error) {
              isUploadFileSuccess = false;
            });
          });
          lisFormField[i] = lisFormField[i].copyWith(values: newListValue);
        }
      }
      documentFormResponse = documentFormResponse.copyWith(listForm: lisFormField);

      // send form request
      final Result<BaseResponseObject<String?>, NetworkError> responseRequest;
      if (isCreateForm == true) {
        responseRequest =
            await documentFormRepository.insertNewRequestDocument(documentFormResponse);
      } else {
        responseRequest = await documentFormRepository.updateRequestDocument(documentFormResponse);
      }
      responseRequest.when(success: (data) {
        if (!isUploadFileSuccess) {
          EasyLoading.showToast(LocaleKeys.errorUploadFile.tr,
              duration: ToastDuration.LENGTH_SHORT,
              toastPosition: EasyLoadingToastPosition.bottom);
        }
        isLoading.value = false;
        if (data.isSuccess()) {
          showAlertDialog(LocaleKeys.titleDialog.tr, LocaleKeys.sendRequestSuccess.tr, () {
            Get.back(result: isCreateForm != true);
          });
        } else {
          isError.value = data.message;
        }
      }, failure: (error) {
        isLoading.value = false;
        isError.value = error.localizedErrorMessage;
      });
    } else {
      isError.value = LocaleKeys.errorInputMissing.tr;
    }
  }

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

  deleteFormRequest() async {
    if (isCreateForm == true) {
      return;
    }
    isLoading.value = true;
    DocumentFormRepository documentFormRepository = Get.find();
    var response = await documentFormRepository
        .deleteRequestDocument(DeleteRequestModel(requestId: documentFormResponse.id));
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        // delete success
        showAlertDialog(LocaleKeys.titleDialog.tr, LocaleKeys.deleteRequestSuccess.tr, () {
          Get.back(result: isCreateForm != true);
        });
      } else {
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = LocaleKeys.errorInputMissing.tr;
    });
  }

  getTitle() {
    if (isCreateForm) return LocaleKeys.createNewFormTitle.tr;
    return documentFormResponse.formname;
  }
}
