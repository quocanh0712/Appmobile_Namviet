// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'child_practice_criteria_object.dart';

part 'practice_point_detail_response_object.freezed.dart';
part 'practice_point_detail_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class PracticePointDetailResponseObject with _$PracticePointDetailResponseObject {
  factory PracticePointDetailResponseObject({
    int? id,
    String? criteriaName,
    int? score,
    List<ChildPracticeCriteriaObject>? criterias,
  }) = _PracticePointDetailResponseObject;

  factory PracticePointDetailResponseObject.fromJson(Map<String, dynamic> json) =>
      _$PracticePointDetailResponseObjectFromJson(json);
}
