


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_teacher_request.freezed.dart';
part 'finance_teacher_request.g.dart';


FinanceTeacherRequest financeTeacherRequestFromJson(String str) =>
    FinanceTeacherRequest.fromJson(json.decode(str));

String financeTeacherRequestToJson(FinanceTeacherRequest data) => json.encode(data.toJson());
@freezed


class FinanceTeacherRequest with _$FinanceTeacherRequest {
  factory FinanceTeacherRequest({
    String? iduser,
    int? startindex,
    int? length,
    String? year,
    int? month,
  }) = _FinanceTeacherRequest;

  factory FinanceTeacherRequest.fromJson(Map<String, dynamic> json) =>
      _$FinanceTeacherRequestFromJson(json);
}