// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final workingProcessResponse = workingProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_process_response.freezed.dart';
part 'working_process_response.g.dart';

WorkingProcessResponse workingProcessResponseFromJson(String str) =>
    WorkingProcessResponse.fromJson(json.decode(str));

String workingProcessResponseToJson(WorkingProcessResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class WorkingProcessResponse with _$WorkingProcessResponse {
  const factory WorkingProcessResponse({
    int? id,
    DateTime? fromdate,
    DateTime? todate,
    String? position,
    String? workplace,
  }) = _WorkingProcessResponse;

  factory WorkingProcessResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkingProcessResponseFromJson(json);
}
