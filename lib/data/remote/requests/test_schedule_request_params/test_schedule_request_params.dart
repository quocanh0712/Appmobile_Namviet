// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_schedule_request_params.freezed.dart';
part 'test_schedule_request_params.g.dart';

@freezed
class TestScheduleRequestParams with _$TestScheduleRequestParams {
  factory TestScheduleRequestParams({
    DateTime? fromDate,
    DateTime? toDate,
    int? semester,
    String? year,
    int? startindex,
    int? length,
    String? idUser,
  }) = _TestScheduleRequestParams;

  factory TestScheduleRequestParams.fromJson(Map<String, dynamic> json) =>
      _$TestScheduleRequestParamsFromJson(json);
}
