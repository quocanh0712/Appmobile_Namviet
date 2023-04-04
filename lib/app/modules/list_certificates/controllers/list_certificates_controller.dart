// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/list_certificates/model/certificate_request.dart';
import 'package:ftu_lms/app/modules/list_certificates/model/certificate_response.dart';
import 'package:ftu_lms/app/modules/list_certificates/repository/certificate_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class ListCertificatesController extends BaseListController<CertificateResponse> {
  @override
  void onInit() {
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

  @override
  Future<Result<BaseResponseObject<List<CertificateResponse?>?>, Exception>> callToHost() {
    CertificateRepository repository = Get.find();
    return repository
        .getCertificateList(CertificateRequest(length: maxLengthResult, startindex: pageIndex));
  }

  openItemCertificate(int index) {}

  String getDescription(int index) {
    return "${LocaleKeys.graduationYear.tr} ${getItem(index)?.graduationYear} ${getItem(index)?.studyPlace ?? Constants.EMPTY}";
  }

  navigateCreateCertificate() async {
    var result = await Get.toNamed(Routes.CREATE_NEW_CERTIFICATE);
    if (result is bool && result) {
      refreshData();
    }
  }
}
