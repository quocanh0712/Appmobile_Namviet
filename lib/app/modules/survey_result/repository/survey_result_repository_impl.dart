// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/survey_result/model/survey_result_request.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_response.dart';
import 'package:ftu_lms/data/remote/clients/survey_result_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import 'survey_result_repository.dart';

class SurveyResultRepositoryImpl extends SurveyResultRepository {
  @override
  Future<Result<BaseResponseObject<List<SurveyResultResponse?>?>, NetworkError>> getSurveyItemList(
      SurveyResultRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<SurveyResultResponse?>?>,
            BaseResponseObject<List<SurveyResultResponse?>?>>(
        route: SurveyResultClient.getSurveyList(model),
        responseType: const BaseResponseObject<List<SurveyResultResponse?>?>());
  }
}
