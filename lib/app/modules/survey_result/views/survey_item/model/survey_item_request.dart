// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final surveyItemRequest = surveyItemRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_item_request.freezed.dart';
part 'survey_item_request.g.dart';

SurveyItemRequest surveyItemRequestFromJson(String str) =>
    SurveyItemRequest.fromJson(json.decode(str));

String surveyItemRequestToJson(SurveyItemRequest data) => json.encode(data.toJson());

@freezed
class SurveyItemRequest with _$SurveyItemRequest {
  const factory SurveyItemRequest({
    int? id,
    int? startindex,
    int? length,
  }) = _SurveyItemRequest;

  factory SurveyItemRequest.fromJson(Map<String, dynamic> json) =>
      _$SurveyItemRequestFromJson(json);
}
