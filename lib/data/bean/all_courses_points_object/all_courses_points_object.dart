// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/bean/course_object/course_object.dart';

part 'all_courses_points_object.freezed.dart';
part 'all_courses_points_object.g.dart';

@freezed
@genJsonT4ThisOne
class AllCoursesPointsObject with _$AllCoursesPointsObject {
  factory AllCoursesPointsObject({
    int? semesterCount,
    double? selectedSemesterverage,
    double? allSemestersAvarage,
    String? classification,
    String? selectedSemester,
    String? selectedSemesterClassification,
    @JsonKey(name: 'listcourse') List<CourseObject?>? lstCourses,
  }) = _AllCoursesPointsObject;

  factory AllCoursesPointsObject.fromJson(Map<String, dynamic> json) =>
      _$AllCoursesPointsObjectFromJson(json);
}
