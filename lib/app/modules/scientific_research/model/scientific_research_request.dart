// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final scientificResearchRequest = scientificResearchRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'scientific_research_request.freezed.dart';
part 'scientific_research_request.g.dart';

ScientificResearchRequest scientificResearchRequestFromJson(String str) =>
    ScientificResearchRequest.fromJson(json.decode(str));

String scientificResearchRequestToJson(ScientificResearchRequest data) =>
    json.encode(data.toJson());

@freezed
abstract class ScientificResearchRequest with _$ScientificResearchRequest {
  const factory ScientificResearchRequest({
    int? startindex,
    int? length,
  }) = _ScientificResearchRequest;

  factory ScientificResearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ScientificResearchRequestFromJson(json);
}
