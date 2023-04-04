// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_request.dart';
import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_response.dart';
import 'package:ftu_lms/app/modules/schedule_time/repository/schedule_repository.dart';
import 'package:ftu_lms/data/remote/clients/schedule_client.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';

class ScheduleTimeRepositoryImpl extends ScheduleTimeRepository {
  @override
  Future<Result<BaseResponseObject<List<ScheduleTimeResponse?>?>, NetworkError>> getScheduleTime(
      ScheduleTimeRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<ScheduleTimeResponse?>?>,
            BaseResponseObject<List<ScheduleTimeResponse?>?>>(
        route: ScheduleClient.getScheduleTime(model),
        responseType: const BaseResponseObject<List<ScheduleTimeResponse?>?>());
  }
}
