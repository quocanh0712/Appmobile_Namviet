// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_course_points_object.freezed.dart';
part 'single_course_points_object.g.dart';

@freezed
@genJsonT4ThisOne
class SingleCoursePointsObject with _$SingleCoursePointsObject {
  factory SingleCoursePointsObject({
    int? id,
    String? pointname,
    int? point,
  }) = _SingleCoursePointsObject;

  factory SingleCoursePointsObject.fromJson(Map<String, dynamic> json) =>
      _$SingleCoursePointsObjectFromJson(json);
}
