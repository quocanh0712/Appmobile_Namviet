// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import '../model/schedule_time_request.dart';

abstract class ScheduleTimeRepository {
  Future<Result<BaseResponseObject<List<ScheduleTimeResponse?>?>, NetworkError>> getScheduleTime(
      ScheduleTimeRequest? model);
}
