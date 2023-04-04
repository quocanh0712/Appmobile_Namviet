// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/serviceRequestList/controllers/base_service_request_list_controller.dart';
import 'package:ftu_lms/utils/constants.dart';

class ApprovedServiceRequestListController extends BaseServiceRequestListController {
  @override
  int? get serviceRequestStatus => ServiceRequestStatus.approved.value;
}
