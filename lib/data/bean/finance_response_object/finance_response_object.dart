// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'semester_finance.dart';

part 'finance_response_object.freezed.dart';
part 'finance_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class FinanceResponseObject with _$FinanceResponseObject {
  factory FinanceResponseObject({
    int? totalFee,
    int? feePaid,
    int? excessFee,
    List<SemesterFinance>? semesters,
  }) = _FinanceResponseObject;

  factory FinanceResponseObject.fromJson(Map<String, dynamic> json) =>
      _$FinanceResponseObjectFromJson(json);
}
