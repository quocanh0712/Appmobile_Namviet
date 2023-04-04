// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final eLearningRequest = eLearningRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'elearning_request.freezed.dart';
part 'elearning_request.g.dart';

ELearningRequest eLearningRequestFromJson(String str) =>
    ELearningRequest.fromJson(json.decode(str));

String eLearningRequestToJson(ELearningRequest data) => json.encode(data.toJson());

@freezed
abstract class ELearningRequest with _$ELearningRequest {
  const factory ELearningRequest({
    DateTime? nowdate,
    int? startindex,
    int? length,
    String? keyword,
  }) = _ELearningRequest;

  factory ELearningRequest.fromJson(Map<String, dynamic> json) => _$ELearningRequestFromJson(json);
}
