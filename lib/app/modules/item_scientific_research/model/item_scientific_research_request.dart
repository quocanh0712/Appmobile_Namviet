// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final itemScientificResearchRequest = itemScientificResearchRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'item_scientific_research_request.freezed.dart';
part 'item_scientific_research_request.g.dart';

ItemScientificResearchRequest itemScientificResearchRequestFromJson(String str) =>
    ItemScientificResearchRequest.fromJson(json.decode(str));

String itemScientificResearchRequestToJson(ItemScientificResearchRequest data) =>
    json.encode(data.toJson());

@freezed
abstract class ItemScientificResearchRequest with _$ItemScientificResearchRequest {
  const factory ItemScientificResearchRequest({
    int? idTypeNckh,
    int? startindex,
    int? length,
    String? keyword,
  }) = _ItemScientificResearchRequest;

  factory ItemScientificResearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemScientificResearchRequestFromJson(json);
}
