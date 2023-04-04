// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_time_response.freezed.dart';
part 'schedule_time_response.g.dart';

@freezed
@genJsonT4ThisOne
abstract class ScheduleTimeResponse with _$ScheduleTimeResponse {
  const factory ScheduleTimeResponse({
    DateTime? date,
    List<CourseItem>? listcourse,
  }) = _ScheduleTimeResponse;

  factory ScheduleTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleTimeResponseFromJson(json);
}

@freezed
abstract class CourseItem with _$CourseItem {
  const factory CourseItem({
    int? id,
    String? coursename,
    int? numbercredits,
    int? numberlession,
    int? coefficient,
    int? gpaPoint,
    int? gpa,
    String? roomname,
    DateTime? timestart,
    DateTime? timeend,
    String? lession,
    int? rank,
  }) = _CourseItem;

  factory CourseItem.fromJson(Map<String, dynamic> json) => _$CourseItemFromJson(json);
}
