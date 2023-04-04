// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_response.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_request.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_response.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/repository/survey_item_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

class SurveyItemController extends BaseListController<SurveyItemResponse> {
  SurveyResultResponse response = const SurveyResultResponse();

  @override
  void onInit() {
    response = Get.arguments;
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
  Future<Result<BaseResponseObject<List<SurveyItemResponse?>?>, Exception>> callToHost() {
    SurveyItemRepository repository = Get.find();
    return repository.getSurveyItemDetail(
        SurveyItemRequest(id: response.id, startindex: pageIndex, length: maxLengthResult));
  }
}
