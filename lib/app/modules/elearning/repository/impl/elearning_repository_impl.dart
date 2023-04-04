// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/elearning/model/elearning_request.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_response.dart';
import 'package:ftu_lms/app/modules/elearning/repository/elearning_repository.dart';
import 'package:ftu_lms/data/remote/clients/elearning_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class ELearningRepositoryImpl extends ELearningRepository {
  @override
  Future<Result<BaseResponseObject<List<ELearningResponse?>?>, NetworkError>> getListELearning(
      ELearningRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<ELearningResponse?>?>,
            BaseResponseObject<List<ELearningResponse?>?>>(
        route: ELearningClient.getELearningList(model),
        responseType: const BaseResponseObject<List<ELearningResponse?>?>());
  }
}
