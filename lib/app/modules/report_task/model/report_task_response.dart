// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final workingProcessResponse = workingProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_task_response.freezed.dart';
part 'report_task_response.g.dart';

ReportTaskResponse ReportTaskResponseFromJson(String str) =>
    ReportTaskResponse.fromJson(json.decode(str));

String ReportTaskResponseResponseToJson(ReportTaskResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class ReportTaskResponse with _$ReportTaskResponse {
  const factory ReportTaskResponse({
    int? id,
    String? VanBan,
    String? NoiDung,
    String? TrangThai,
  }) = _ReportTaskResponse;

  factory ReportTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportTaskResponseFromJson(json);
}
