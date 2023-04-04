// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/practice_point_detail_response_object/practice_point_detail_response_object.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/practice_point_response_object.dart';
import 'package:ftu_lms/data/remote/clients/practice_point_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/requests/practice_point_request_params/practice_point_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/practice_point_repository.dart';

class PracticePointRepositoryImpl extends PracticePointRepository {
  @override
  Future<Result<BaseResponseObject<PracticePointResponseObject?>, NetworkError>> getAll(
      PracticePointRequestParams? params) async {
    return NetworkExecutor.execute<BaseResponseObject<PracticePointResponseObject?>,
            BaseResponseObject<PracticePointResponseObject?>>(
        route: PracticePointsClient.getAll(params),
        responseType: const BaseResponseObject<PracticePointResponseObject?>());
  }

  @override
  Future<Result<BaseResponseObject<List<PracticePointDetailResponseObject?>?>, NetworkError>>
      getChiTiet(PracticePointRequestParams? params) async {
    return NetworkExecutor.execute<BaseResponseObject<List<PracticePointDetailResponseObject?>?>,
            BaseResponseObject<List<PracticePointDetailResponseObject?>?>>(
        route: PracticePointsClient.getChiTiet(params),
        responseType: const BaseResponseObject<List<PracticePointDetailResponseObject?>?>());
  }
}
