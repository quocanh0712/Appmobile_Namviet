// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final workingProcessRequest = workingProcessRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'working_process_request.freezed.dart';
part 'working_process_request.g.dart';

WorkingProcessRequest workingProcessRequestFromJson(String str) =>
    WorkingProcessRequest.fromJson(json.decode(str));

String workingProcessRequestToJson(WorkingProcessRequest data) => json.encode(data.toJson());

@freezed
class WorkingProcessRequest with _$WorkingProcessRequest {
  const factory WorkingProcessRequest({
    int? startindex,
    int? length,
    String? keyword,
  }) = _WorkingProcessRequest;

  factory WorkingProcessRequest.fromJson(Map<String, dynamic> json) =>
      _$WorkingProcessRequestFromJson(json);
}
