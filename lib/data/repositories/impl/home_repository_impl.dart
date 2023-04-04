// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/home_response_object/home_response_object.dart';
import 'package:ftu_lms/data/remote/clients/home_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<Result<BaseResponseObject<HomeResponseObject?>, NetworkError>> retrieveData() {
    return NetworkExecutor.execute<BaseResponseObject<HomeResponseObject?>,
            BaseResponseObject<HomeResponseObject?>>(
        route: HomeClient.getAll(), responseType: const BaseResponseObject<HomeResponseObject?>());
  }
}
