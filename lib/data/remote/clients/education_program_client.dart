// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/educationProgram/model/education_program_request.dart';
import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_request.dart';
import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'education_program_client.freezed.dart';

@freezed
class EducationProgramClient extends BaseClientGenerator with _$EducationProgramClient {
  EducationProgramClient._() : super();

  factory EducationProgramClient.getEducationProgram(EducationProgramRequest? model) =
      _EducationProgramClient;

  @override
  String get baseURL => '${super.baseURL}/ChuongTrinhDaoTao';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(getEducationProgram: (data) => data?.toJson() ?? {}, orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      orElse: () => '/GetAllSearch',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
