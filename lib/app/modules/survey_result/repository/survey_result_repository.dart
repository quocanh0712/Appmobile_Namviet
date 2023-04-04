// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/survey_result/model/survey_result_request.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class SurveyResultRepository {
  Future<Result<BaseResponseObject<List<SurveyResultResponse?>?>, NetworkError>> getSurveyItemList(
      SurveyResultRequest? model);
}
