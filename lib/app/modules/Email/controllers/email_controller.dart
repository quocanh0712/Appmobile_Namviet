// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'dart:convert';

import 'package:fimber/fimber.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.gen.dart';
import '../model/email_response.dart';

class EmailController extends BaseListController<EmailResponse> {
  @override
  void onInit() async {
    Iterable list =
        json.decode(await rootBundle.loadString(Assets.jsons.emailList));
    listData.value = List<EmailResponse>.from(
        list.map((model) => EmailResponse.fromJson(model)));
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

  //void createAssignDocument() async {}

  void AddEmail() async {
    Get.toNamed(Routes.ADD_EMAIL);
  }

  void EditEmail(int index) async {}

  @override
  Future<Result<BaseResponseObject<List<EmailResponse?>?>, Exception>>
      callToHost() {
    isLoading.value = false;
    // TODO: implement callToHost
    throw UnimplementedError();
  }
}
