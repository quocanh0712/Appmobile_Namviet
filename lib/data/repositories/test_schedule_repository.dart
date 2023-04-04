// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/test_schedule_object/test_schedule_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/requests/test_schedule_request_params/test_schedule_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class TestScheduleRepository {
  Future<Result<BaseResponseObject<List<TestScheduleObject?>?>, NetworkError>> loadTestingPlan(
      TestScheduleRequestParams? semester);
}
