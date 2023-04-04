// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final learningProcessResponse = learningProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_process_response.freezed.dart';
part 'learning_process_response.g.dart';

LearningProcessResponse learningProcessResponseFromJson(String str) =>
    LearningProcessResponse.fromJson(json.decode(str));

String learningProcessResponseToJson(LearningProcessResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class LearningProcessResponse with _$LearningProcessResponse {
  const factory LearningProcessResponse({
    int? id,
    DateTime? fromdate,
    DateTime? todate,
    String? major,
    String? trainingplace,
  }) = _LearningProcessResponse;

  factory LearningProcessResponse.fromJson(Map<String, dynamic> json) =>
      _$LearningProcessResponseFromJson(json);
}
