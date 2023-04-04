// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/bean/course_object/course_object.dart';

part 'test_schedule_object.freezed.dart';
part 'test_schedule_object.g.dart';

@freezed
@genJsonT4ThisOne
class TestScheduleObject with _$TestScheduleObject {
  factory TestScheduleObject({
    String? dayofweeks,
    int? date,
    String? month,
    @JsonKey(name: 'listcourse') List<CourseObject?>? lstCourses,
  }) = _TestScheduleObject;

  factory TestScheduleObject.fromJson(Map<String, dynamic> json) =>
      _$TestScheduleObjectFromJson(json);
}
