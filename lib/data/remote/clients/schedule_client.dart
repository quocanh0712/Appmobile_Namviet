// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_request.dart';
import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'schedule_client.freezed.dart';

@freezed
class ScheduleClient extends BaseClientGenerator with _$ScheduleClient {
  ScheduleClient._() : super();

  factory ScheduleClient.getScheduleTime(ScheduleTimeRequest? model) = _ScheduleTimeClient;

  factory ScheduleClient.getScheduleDaily(ScheduleDailyRequest? model) = _ScheduleDailyClient;

  @override
  String get baseURL => '${super.baseURL}/Schedule';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getScheduleTime: (data) => data?.toJson() ?? {},
        getScheduleDaily: (data) => data?.toJson() ?? {},
        orElse: () => {});
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
      getScheduleDaily: (data) => '/GetAllByDate',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
