// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_request_params.freezed.dart';
part 'finance_request_params.g.dart';

@freezed
class FinanceRequestParams with _$FinanceRequestParams {
  factory FinanceRequestParams({
    int? semester,
    String? year,
    int? idKhoanThu,
    int? status,
    @Default(1) int? startindex,
    @Default(100) int? length,
  }) = _FinanceRequestParams;

  factory FinanceRequestParams.fromJson(Map<String, dynamic> json) =>
      _$FinanceRequestParamsFromJson(json);
}
