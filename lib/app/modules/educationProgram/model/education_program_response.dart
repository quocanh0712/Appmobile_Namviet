// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final educationProgramResponse = educationProgramResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_program_response.freezed.dart';
part 'education_program_response.g.dart';

EducationProgramResponse educationProgramResponseFromJson(String str) =>
    EducationProgramResponse.fromJson(json.decode(str));

String educationProgramResponseToJson(EducationProgramResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class EducationProgramResponse with _$EducationProgramResponse {
  const factory EducationProgramResponse({
    int? id,
    String? coursename,
    int? numbercredits,
    int? numberlession,
  }) = _EducationProgramResponse;

  factory EducationProgramResponse.fromJson(Map<String, dynamic> json) =>
      _$EducationProgramResponseFromJson(json);
}
