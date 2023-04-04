// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final scheduleTimeRequest = scheduleTimeRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

part 'schedule_time_request.freezed.dart';

part 'schedule_time_request.g.dart';

ScheduleTimeRequest scheduleTimeRequestFromJson(String str) =>
    ScheduleTimeRequest.fromJson(json.decode(str));

String scheduleTimeRequestToJson(ScheduleTimeRequest data) => json.encode(data.toJson());

@freezed
class ScheduleTimeRequest with _$ScheduleTimeRequest {
  const factory ScheduleTimeRequest({
    String? year,
    int? semester,
    int? session,
    int? startindex,
    int? length,
  }) = _ScheduleTimeRequest;

  factory ScheduleTimeRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleTimeRequestFromJson(json);
}

class YearClassModel {
  final String value;

  YearClassModel(this.value);
}

final List<SemesterModel> listSemesterModel = [
  SemesterModel(1, LocaleKeys.semesterOne.tr),
  SemesterModel(2, LocaleKeys.semesterTwo.tr),
  SemesterModel(3, LocaleKeys.semesterThree.tr)
];

class SemesterModel {
  final int key;
  final String label;

  SemesterModel(this.key, this.label);
}

final List<SessionModel> listSessionModel = [
  SessionModel(1, LocaleKeys.sessionOne.tr),
  SessionModel(2, LocaleKeys.sessionTwo.tr),
  SessionModel(3, LocaleKeys.sessionThree.tr)
];

class SessionModel {
  final int key;
  final String label;

  SessionModel(this.key, this.label);
}
