// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'semester_bill_response_object.freezed.dart';
part 'semester_bill_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class SemesterBillResponseObject with _$SemesterBillResponseObject {
  factory SemesterBillResponseObject({
    int? feeId,
    String? feeName,
    int? value,
    int? semester,
    String? year,
    int? status,
    String? qrCode,
  }) = _SemesterBillResponseObject;

  factory SemesterBillResponseObject.fromJson(Map<String, dynamic> json) =>
      _$SemesterBillResponseObjectFromJson(json);
}
