// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final scheduleDailyRequest = scheduleDailyRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'schedule_daily_request.freezed.dart';
part 'schedule_daily_request.g.dart';

ScheduleDailyRequest scheduleDailyRequestFromJson(String str) =>
    ScheduleDailyRequest.fromJson(json.decode(str));

String scheduleDailyRequestToJson(ScheduleDailyRequest data) => json.encode(data.toJson());

@freezed
class ScheduleDailyRequest with _$ScheduleDailyRequest {
  const factory ScheduleDailyRequest({
    String? idUser,
    String? nowdate,
    int? startindex,
    int? length,
    int? weeksOfYear,
    String? year,
  }) = _ScheduleDailyRequest;

  factory ScheduleDailyRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDailyRequestFromJson(json);
}
