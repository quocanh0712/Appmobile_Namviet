// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final itemScientificResearchResponse = itemScientificResearchResponseFromMap(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_scientific_research_response.freezed.dart';
part 'item_scientific_research_response.g.dart';

@freezed
@genJsonT4ThisOne
abstract class ItemScientificResearchResponse with _$ItemScientificResearchResponse {
  const factory ItemScientificResearchResponse({
    int? nckhId,
    String? title,
    String? postOn,
    String? postAt,
    String? imageUrl,
    String? href,
  }) = _ItemScientificResearchResponse;

  factory ItemScientificResearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemScientificResearchResponseFromJson(json);
}
