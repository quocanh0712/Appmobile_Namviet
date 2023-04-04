// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_request.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_response.dart';
import 'package:ftu_lms/data/remote/clients/survey_result_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import 'survey_item_repository.dart';

class SurveyItemRepositoryImpl extends SurveyItemRepository {
  @override
  Future<Result<BaseResponseObject<List<SurveyItemResponse?>?>, NetworkError>> getSurveyItemDetail(
      SurveyItemRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<SurveyItemResponse?>?>,
            BaseResponseObject<List<SurveyItemResponse?>?>>(
        route: SurveyResultClient.getDetailSurvey(model),
        responseType: const BaseResponseObject<List<SurveyItemResponse?>?>());
  }
}
