// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'parent_practice_criteria_object.dart';

part 'practice_point_response_object.freezed.dart';
part 'practice_point_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class PracticePointResponseObject with _$PracticePointResponseObject {
  factory PracticePointResponseObject({
    int? sum,
    double? rank,
    List<ParentPracticeCriteriaObject?>? criterias,
  }) = _PracticePointResponseObject;

  factory PracticePointResponseObject.fromJson(Map<String, dynamic> json) =>
      _$PracticePointResponseObjectFromJson(json);
}
