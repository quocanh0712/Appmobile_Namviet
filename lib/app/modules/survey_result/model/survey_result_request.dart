// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final surveyResultRequest = surveyResultRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_result_request.freezed.dart';
part 'survey_result_request.g.dart';

SurveyResultRequest? surveyResultRequestFromJson(String str) =>
    SurveyResultRequest.fromJson(json.decode(str));

String surveyResultRequestToJson(SurveyResultRequest? data) => json.encode(data!.toJson());

@freezed
class SurveyResultRequest with _$SurveyResultRequest {
  const factory SurveyResultRequest({
    String? year,
    int? semester,
    int? startindex,
    int? length,
  }) = _SurveyResultRequest;

  factory SurveyResultRequest.fromJson(Map<String, dynamic> json) =>
      _$SurveyResultRequestFromJson(json);
}
