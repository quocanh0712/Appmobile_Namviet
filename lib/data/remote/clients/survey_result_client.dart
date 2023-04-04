// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_request.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_request.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'survey_result_client.freezed.dart';

@freezed
class SurveyResultClient extends BaseClientGenerator with _$SurveyResultClient {
  SurveyResultClient._() : super();

  factory SurveyResultClient.getSurveyList(SurveyResultRequest? model) = _SurveyList;

  factory SurveyResultClient.getDetailSurvey(SurveyItemRequest? model) = _DetailSurvey;

  @override
  String get baseURL => '${super.baseURL}/SurveyResult';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getSurveyList: (data) => data?.toJson() ?? {},
        getDetailSurvey: (data) => data?.toJson() ?? {},
        orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getDetailSurvey: (data) => '/Detail',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
