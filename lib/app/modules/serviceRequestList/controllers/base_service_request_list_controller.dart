// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/my_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/allServiceRequestList/controllers/all_service_request_list_controller.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/approvedServiceRequestList/controllers/approved_service_request_list_controller.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/rejectedServiceRequestList/controllers/rejected_service_request_list_controller.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/waitingServiceRequestList/controllers/waiting_service_request_list_controller.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/service_request_object/service_request_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

abstract class BaseServiceRequestListController
    extends BaseInfiniteListController<ServiceRequestObject> {
  // override this one for each tab
  int? serviceRequestStatus = ServiceRequestStatus.all.value;

  void navigateDetailServiceRequest(int? index) async {
    if (index == null || index < 0 || index >= items.length) {
      EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    ServiceRequestObject? object = items[index];
    if (object == null) {
      EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    var result = await Get.toNamed(Routes.CREATE_NEW_FORM, arguments: [
      DocumentFormResponse(
        id: object.id,
        idForm: object.idForm,
        formname: object.formname,
        updateTime: object.updateTime,
        status: object.status,
        listForm: object.listForm,
      ),
      // update send false
      false
    ]);
    if (result is bool && result) {
      fetchData(isRefresh: true);
      // AllServiceRequestListController allServiceController = Get.find();
      // ApprovedServiceRequestListController approvedServiceController = Get.find();
      // RejectedServiceRequestListController rejectedServiceController = Get.find();
      // WaitingServiceRequestListController waitingServiceController = Get.find();
      // allServiceController.fetchData(isRefresh: true);
      // approvedServiceController.fetchData(isRefresh: true);
      // rejectedServiceController.fetchData(isRefresh: true);
      // waitingServiceController.fetchData(isRefresh: true);
    }
  }

  @override
  Future<Result<BaseResponseObject<List<ServiceRequestObject?>?>, Exception>>
      retrieveDataFromService(int? pageNumber) {
    DocumentFormRepository repository = Get.find();
    return repository.getMyRequestDocument(MyRequestDocumentRequest(
      startindex: pageNumber,
      length: defaultItemsPerPageCount,
      status: serviceRequestStatus,
    ));
  }
}
