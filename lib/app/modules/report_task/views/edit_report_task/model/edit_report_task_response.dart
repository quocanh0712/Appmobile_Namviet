// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final documentFormResponse = documentFormResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';

part 'edit_report_task_response.freezed.dart';
part 'edit_report_task_response.g.dart';

EditReportTaskResponse EditReportTaskResponseFromJson(String str) =>
    EditReportTaskResponse.fromJson(json.decode(str));

String EditReportTaskResponseToJson(EditReportTaskResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class EditReportTaskResponse with _$EditReportTaskResponse {
  const factory EditReportTaskResponse({
    List<FormFieldData>? listForm,
  }) = _EditReportTaskResponse;

  factory EditReportTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$EditReportTaskResponseFromJson(json);
}
