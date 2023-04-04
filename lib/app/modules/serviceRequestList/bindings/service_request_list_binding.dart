// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/app/modules/document_form/repository/impl/document_form_repository_impl.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/allServiceRequestList/controllers/all_service_request_list_controller.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/approvedServiceRequestList/controllers/approved_service_request_list_controller.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/rejectedServiceRequestList/controllers/rejected_service_request_list_controller.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/waitingServiceRequestList/controllers/waiting_service_request_list_controller.dart';
import 'package:get/get.dart';

import '../controllers/service_request_list_controller.dart';

class ServiceRequestListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentFormRepository>(
      () => DocumentFormRepositoryImpl(),
    );
    Get.lazyPut<ServiceRequestListController>(
      () => ServiceRequestListController(),
    );
    Get.lazyPut<AllServiceRequestListController>(
      () => AllServiceRequestListController(),
    );
    Get.lazyPut<WaitingServiceRequestListController>(
      () => WaitingServiceRequestListController(),
    );
    Get.lazyPut<ApprovedServiceRequestListController>(
      () => ApprovedServiceRequestListController(),
    );
    Get.lazyPut<RejectedServiceRequestListController>(
      () => RejectedServiceRequestListController(),
    );
  }
}
