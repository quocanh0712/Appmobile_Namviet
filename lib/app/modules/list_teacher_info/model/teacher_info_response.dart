// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final teacherInfoResponse = teacherInfoResponseFromJson(jsonString);
import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_info_response.freezed.dart';
part 'teacher_info_response.g.dart';

TeacherInfoResponse teacherInfoResponseFromJson(String str) =>
    TeacherInfoResponse.fromJson(json.decode(str));

String teacherInfoResponseToJson(TeacherInfoResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class TeacherInfoResponse with _$TeacherInfoResponse {
  const factory TeacherInfoResponse({
    int? id,
    String? teacherName,
    String? image,
    String? employeeCode,
    String? employeePosition,
    String? branch,
    int? positionId,
    String? telephone,
    String? email,
  }) = _TeacherInfoResponse;

  factory TeacherInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$TeacherInfoResponseFromJson(json);
}
