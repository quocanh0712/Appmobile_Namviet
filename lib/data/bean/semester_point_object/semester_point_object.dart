// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'semester_point_object.freezed.dart';
part 'semester_point_object.g.dart';

@freezed
@genJsonT4ThisOne
class SemesterPointObject with _$SemesterPointObject {
  factory SemesterPointObject({
    String? classification,
    String? classification10,
    double? rank,
    double? rank10,
    double? learningAverage,
    double? gpA4,
    double? gpA10,
    int? accumulatedCredits,
    int? academicCredits,
    @JsonKey(name: 'hoc_ky') int? hocKy,
    @JsonKey(name: 'nam_hoc') dynamic namHoc,
  }) = _SemesterPointObject;

  factory SemesterPointObject.fromJson(Map<String, dynamic> json) =>
      _$SemesterPointObjectFromJson(json);
}
