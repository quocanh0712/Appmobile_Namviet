// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final scheduleDailyResponse = scheduleDailyResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'schedule_daily_response.freezed.dart';
part 'schedule_daily_response.g.dart';

ScheduleDailyResponse scheduleDailyResponseFromJson(String str) =>
    ScheduleDailyResponse.fromJson(json.decode(str));

String scheduleDailyResponseToJson(ScheduleDailyResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class ScheduleDailyResponse with _$ScheduleDailyResponse {
  const factory ScheduleDailyResponse({
    String? timestart,
    String? timeend,
    int? id,
    String? coursename,
    String? roomname,
    String? lession,
  }) = _ScheduleDailyResponse;

  factory ScheduleDailyResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDailyResponseFromJson(json);

}




