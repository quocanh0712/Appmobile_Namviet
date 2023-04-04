// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_result_request_params.freezed.dart';
part 'learning_result_request_params.g.dart';

@freezed
class LearningResultRequestParams with _$LearningResultRequestParams {
  factory LearningResultRequestParams({
    int? semester,
    String? year,
    int? courseId,
    int? startindex,
    int? length,
  }) = _LearningResultRequestParams;

  factory LearningResultRequestParams.fromJson(Map<String, dynamic> json) =>
      _$LearningResultRequestParamsFromJson(json);
}
