// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_request.dart';
import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_response.dart';
import 'package:ftu_lms/app/modules/schedule_daily/repository/schedule_daily_repository.dart';
import 'package:ftu_lms/data/remote/clients/schedule_client.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';

class ScheduleDailyRepositoryImpl extends ScheduleDailyRepository {
  @override
  Future<Result<BaseResponseObject<List<ScheduleDailyResponse?>?>, NetworkError>> getScheduleDaily(
      ScheduleDailyRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<ScheduleDailyResponse?>?>,
            BaseResponseObject<List<ScheduleDailyResponse?>?>>(
        route: ScheduleClient.getScheduleDaily(model),
        responseType: const BaseResponseObject<List<ScheduleDailyResponse?>?>());
  }
}
