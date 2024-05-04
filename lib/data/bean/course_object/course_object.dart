// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/utils/json_converter/jiffy_json_converter.dart';
import 'package:jiffy/jiffy.dart';

part 'course_object.freezed.dart';
part 'course_object.g.dart';

@freezed
class CourseObject with _$CourseObject {
  factory CourseObject({
    int? id,
    String? coursename,
    int? numbercredits,
    int? numberlession,
    int? coefficient,
    double? gpaPoint,
    String? roomname,
    @JiffyJsonConverter() Jiffy? timestart,
    @JiffyJsonConverter() Jiffy? timeend,
    dynamic lession,
    String? identificationnumber,
    int? examTime,
    int? examination,
    String? time,
    String? teachingmethod,
    @JsonKey(name: 'ngay_thi') String? ngayThi,
    String? note,
    String? duringtime,
    dynamic status,
  }) = _CourseObject;

  factory CourseObject.fromJson(Map<String, dynamic> json) => _$CourseObjectFromJson(json);
}
