// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_request.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_response.dart';
import 'package:ftu_lms/app/modules/elearning/repository/elearning_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ElearningController extends BaseListController<ELearningResponse> {
  DateTime dateTimeRequest = DateTime.now();

  void queryELearningList(DateTime dateTime) {
    if (dateTime == dateTimeRequest) return;
    dateTimeRequest = dateTime;
    refreshData();
  }

  @override
  Future<Result<BaseResponseObject<List<ELearningResponse?>?>, NetworkError>> callToHost() {
    ELearningRepository repository = Get.find();
    return repository.getListELearning(ELearningRequest(
        nowdate: dateTimeRequest, length: maxLengthResult, startindex: pageIndex));
  }

  String getTitle() => LocaleKeys.eLearning.tr;

  void openHrefLink(String? href) async {
    if (!await launchUrl(Uri.parse(href ?? Constants.EMPTY),
        mode: LaunchMode.externalApplication)) {
      EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
    }
  }
}
