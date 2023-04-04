// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentFormItemController extends BaseController {
  DocumentFormResponse? _documentFormResponse;

  @override
  void onInit() {
    _documentFormResponse = Get.arguments is DocumentFormResponse ? Get.arguments : null;
    super.onInit();
  }

  @override
  void onReady() {
    if (_documentFormResponse == null) {
      isError.value = LocaleKeys.commonErrorMessage.tr;
      return;
    }
    super.onReady();
  }

  String getTitle() => _documentFormResponse?.formname ?? Constants.EMPTY;

  String getPathFile() =>
      _documentFormResponse?.linkImageOnl ??
      _documentFormResponse?.linkDownload ??
      Constants.EMPTY;

  void loadPdfFileFail() {
    isError.value = LocaleKeys.loadFormFail.tr;
  }

  void downloadFile() async {
    if (!await launchUrl(Uri.parse(_documentFormResponse?.linkDownload ?? Constants.EMPTY),
        mode: LaunchMode.externalApplication)) {
      EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
    }
  }

  void createForm() {
    Get.toNamed(Routes.CREATE_NEW_FORM, arguments: [_documentFormResponse, true]);
  }
}
