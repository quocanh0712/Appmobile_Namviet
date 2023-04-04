// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final scientificResearchResponse = scientificResearchResponseFromMap(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scientific_research_response.freezed.dart';
part 'scientific_research_response.g.dart';

@freezed
@genJsonT4ThisOne
abstract class ScientificResearchResponse with _$ScientificResearchResponse {
  const factory ScientificResearchResponse({
    int? typeId,
    String? type,
    String? description,
  }) = _ScientificResearchResponse;

  factory ScientificResearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ScientificResearchResponseFromJson(json);
}
