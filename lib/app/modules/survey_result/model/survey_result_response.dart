// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final surveyResultResponse = surveyResultResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_result_response.freezed.dart';
part 'survey_result_response.g.dart';

SurveyResultResponse? surveyResultResponseFromJson(String str) =>
    SurveyResultResponse.fromJson(json.decode(str));

String surveyResultResponseToJson(SurveyResultResponse? data) => json.encode(data!.toJson());

@freezed
@genJsonT4ThisOne
class SurveyResultResponse with _$SurveyResultResponse {
  const factory SurveyResultResponse({
    int? id,
    String? name,
    String? semester,
    String? year,
  }) = _SurveyResultResponse;

  factory SurveyResultResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyResultResponseFromJson(json);
}
