// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final teacherInfoRequest = teacherInfoRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'teacher_info_request.freezed.dart';
part 'teacher_info_request.g.dart';

TeacherInfoRequest teacherInfoRequestFromJson(String str) =>
    TeacherInfoRequest.fromJson(json.decode(str));

String teacherInfoRequestToJson(TeacherInfoRequest data) => json.encode(data.toJson());

@freezed
abstract class TeacherInfoRequest with _$TeacherInfoRequest {
  const factory TeacherInfoRequest({
    int? startindex,
    int? length,
    String? keyword,
  }) = _TeacherInfoRequest;

  factory TeacherInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$TeacherInfoRequestFromJson(json);
}
