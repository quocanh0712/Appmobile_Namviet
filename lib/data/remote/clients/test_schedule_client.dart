// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/remote/requests/test_schedule_request_params/test_schedule_request_params.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'test_schedule_client.freezed.dart';

@freezed
class TestScheduleClient extends BaseClientGenerator with _$TestScheduleClient {
  TestScheduleClient._() : super();
  factory TestScheduleClient.loadTestSchedule({TestScheduleRequestParams? params}) =
      _LoadTestSchedule;

  @override
  String get baseURL => '${super.baseURL}/TestSchedule';

  @override
  String get method {
    return maybeWhen<String>(
      loadTestSchedule: (semester) => RequestMethods.post.name,
      orElse: () => RequestMethods.get.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      loadTestSchedule: (semester) => '/GetAll',
      orElse: () => 'get',
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      loadTestSchedule: (params) => params?.toJson() ?? {},
      orElse: () => {},
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () => null,
    );
  }
}
