// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final educationProgramRequest = educationProgramRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'education_program_request.freezed.dart';
part 'education_program_request.g.dart';

EducationProgramRequest educationProgramRequestFromJson(String str) =>
    EducationProgramRequest.fromJson(json.decode(str));

String educationProgramRequestToJson(EducationProgramRequest data) => json.encode(data.toJson());

@freezed
class EducationProgramRequest with _$EducationProgramRequest {
  const factory EducationProgramRequest({
    String? year,
    int? semester,
    int? startindex,
    int? length,
  }) = _EducationProgramRequest;

  factory EducationProgramRequest.fromJson(Map<String, dynamic> json) =>
      _$EducationProgramRequestFromJson(json);
}
