// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/utils/json_converter/jiffy_json_converter.dart';
import 'package:jiffy/jiffy.dart';

part 'testing_plan_object.freezed.dart';
part 'testing_plan_object.g.dart';

@freezed
@genJsonT4ThisOne
class TestingPlanObject with _$TestingPlanObject {
  factory TestingPlanObject({
    bool? isLabel,
    String? course,
    String? time,
    int? idNumber,
    String? location,
    int? studySession,
    int? examTime,
    @JiffyJsonConverter() Jiffy? startAt,
    @JiffyJsonConverter() Jiffy? endAt,
    bool? isLast,
  }) = _TestingPlanObject;

  factory TestingPlanObject.fromJson(Map<String, dynamic> json) =>
      _$TestingPlanObjectFromJson(json);
}
