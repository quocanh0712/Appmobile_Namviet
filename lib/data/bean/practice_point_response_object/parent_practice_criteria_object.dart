// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_practice_criteria_object.freezed.dart';
part 'parent_practice_criteria_object.g.dart';

@freezed
@genJsonT4ThisOne
class ParentPracticeCriteriaObject with _$ParentPracticeCriteriaObject {
  factory ParentPracticeCriteriaObject({
    int? id,
    String? typeCriteriaName,
    int? totalScore,
  }) = _ParentPracticeCriteriaObject;

  factory ParentPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =>
      _$ParentPracticeCriteriaObjectFromJson(json);
}
