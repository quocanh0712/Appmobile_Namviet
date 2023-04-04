// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentFormController extends BaseListController<DocumentFormResponse> {
  final DocumentFormRequest _requestData = const DocumentFormRequest();

  @override
  Future<Result<BaseResponseObject<List<DocumentFormResponse?>?>, Exception>> callToHost() {
    DocumentFormRepository repository = Get.find();
    return repository.getListDocumentForm(_requestData.copyWith(
        keyword: textSearch, length: maxLengthResult, startindex: pageIndex));
  }

  void downloadFile(String? link) async {
    if (!await launchUrl(Uri.parse(link ?? Constants.EMPTY),
        mode: LaunchMode.externalApplication)) {
      EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
    }
  }

  String getTitle() => LocaleKeys.documentFormTitle.tr;

  void openItemDocument(int index) {
    Get.toNamed(Routes.DOCUMENT_FORM_ITEM, arguments: listData[index]);
  }
}
