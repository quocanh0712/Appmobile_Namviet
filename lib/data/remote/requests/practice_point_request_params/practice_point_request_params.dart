// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_point_request_params.freezed.dart';
part 'practice_point_request_params.g.dart';

@freezed
class PracticePointRequestParams with _$PracticePointRequestParams {
  factory PracticePointRequestParams({
    int? semester,
    String? year,
    int? subCriteriaId,
    int? startindex,
    int? length,
  }) = _PracticePointRequestParams;

  factory PracticePointRequestParams.fromJson(Map<String, dynamic> json) =>
      _$PracticePointRequestParamsFromJson(json);
}
