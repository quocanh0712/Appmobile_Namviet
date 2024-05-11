


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/annotations/lib/annotations.dart';

part 'finance_teacher_response.freezed.dart';
part 'finance_teacher_response.g.dart';


FinanceTeacherResponse financeTeacherResponseFromJson(String str) =>
    FinanceTeacherResponse.fromJson(json.decode(str));

String financeTeacherResponseToJson(FinanceTeacherResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class FinanceTeacherResponse with _$FinanceTeacherResponse {
  factory FinanceTeacherResponse({
    String? year,
    String? month,
    int? salaryInsurance,
    int? salaryNotInsurance,
    String? accountNumber,
    String? bank,
    String? note,
  }) = _FinanceTeacherResponse;

  factory FinanceTeacherResponse.fromJson(Map<String, dynamic> json) => _$FinanceTeacherResponseFromJson(json);
}