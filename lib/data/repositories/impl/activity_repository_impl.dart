// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import '../../bean/activity_response_object/activity_response_object.dart';
import '../../remote/clients/activity_client.dart';
import '../activity_repository.dart';

class ActivityRepositoryImpl extends ActivityRepository {
  @override
  Future<Result<BaseResponseObject<ActivityResponseObject?>, NetworkError>> retrieveData() {
    return NetworkExecutor.execute<BaseResponseObject<ActivityResponseObject?>,
        BaseResponseObject<ActivityResponseObject?>>(
        route: ActivityClient.getAll(), responseType:  const BaseResponseObject<ActivityResponseObject?>());
  }
}