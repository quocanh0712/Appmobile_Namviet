// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_practice_criteria_object.freezed.dart';
part 'child_practice_criteria_object.g.dart';

@freezed
@genJsonT4ThisOne
class ChildPracticeCriteriaObject with _$ChildPracticeCriteriaObject {
  factory ChildPracticeCriteriaObject({
    int? id,
    String? levelCriteriaName,
    int? maxPoint,
    int? point,
  }) = _ChildPracticeCriteriaObject;

  factory ChildPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =>
      _$ChildPracticeCriteriaObjectFromJson(json);
}
