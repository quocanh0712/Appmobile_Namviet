// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'semester_finance.freezed.dart';
part 'semester_finance.g.dart';

@freezed
@genJsonT4ThisOne
class SemesterFinance with _$SemesterFinance {
  factory SemesterFinance({
    String? year,
    int? semester,
    int? totalFee,
    int? feePaid,
    int? excessFee,
  }) = _SemesterFinance;

  factory SemesterFinance.fromJson(Map<String, dynamic> json) => _$SemesterFinanceFromJson(json);
}
