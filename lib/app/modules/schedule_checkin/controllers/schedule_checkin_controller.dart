// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

import '../../../../data/bean/CheckIn/schedule_checkin_object.dart';
import '../../../../data/repositories/inventory_repository.dart';

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScheduleCheckinController
    extends BaseListController<ScheDuleCheckInObject> {
  String? _ScheduleCode;

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
  Future<Result<BaseResponseObject<List<ScheDuleCheckInObject?>?>, Exception>>
      callToHost() {
    InventoryRepository repository = Get.find();
    return repository.schedulecheckin();
  }

  void navigateCheckInRequest(String? ScheduleCode) {
    Fimber.d("ScheduleCode(): ${ScheduleCode}");
    _ScheduleCode = ScheduleCode;
  }
}
