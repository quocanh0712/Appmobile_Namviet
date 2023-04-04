// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/serviceRequestList/views/base_service_request_list_view.dart';

import '../controllers/waiting_service_request_list_controller.dart';

class WaitingServiceRequestListView
    extends BaseServiceRequestListView<WaitingServiceRequestListController> {
  @override
  void navigateDetailServiceRequest(int? index) {
    controller.navigateDetailServiceRequest(index);
  }
}
