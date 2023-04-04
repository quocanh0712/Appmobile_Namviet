// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final surveyItemResponse = surveyItemResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_item_response.freezed.dart';
part 'survey_item_response.g.dart';

SurveyItemResponse surveyItemResponseFromJson(String str) =>
    SurveyItemResponse.fromJson(json.decode(str));

String surveyItemResponseToJson(SurveyItemResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class SurveyItemResponse with _$SurveyItemResponse {
  const factory SurveyItemResponse({
    String? criteria,
    String? result,
    int? count,
    int? total,
  }) = _SurveyItemResponse;

  factory SurveyItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyItemResponseFromJson(json);
}
