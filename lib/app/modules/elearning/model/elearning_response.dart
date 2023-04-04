// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final eLearningResponse = eLearningResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'elearning_response.freezed.dart';
part 'elearning_response.g.dart';

ELearningResponse eLearningResponseFromJson(String str) =>
    ELearningResponse.fromJson(json.decode(str));

String eLearningResponseToJson(ELearningResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class ELearningResponse with _$ELearningResponse {
  const factory ELearningResponse({
    String? imageUrl,
    String? title,
    String? time,
    String? teacher,
    String? link,
  }) = _ELearningResponse;

  factory ELearningResponse.fromJson(Map<String, dynamic> json) =>
      _$ELearningResponseFromJson(json);
}
