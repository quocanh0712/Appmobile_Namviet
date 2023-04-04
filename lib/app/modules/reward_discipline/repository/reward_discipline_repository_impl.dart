// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/reward_discipline/model/reward_discipline_request.dart';
import 'package:ftu_lms/app/modules/reward_discipline/repository/reward_discipline_repository.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/discipline/model/discipline_response.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/reward/model/reward_response.dart';
import 'package:ftu_lms/data/remote/clients/discipline_client.dart';
import 'package:ftu_lms/data/remote/clients/reward_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class RewardDisciplineRepositoryImpl extends RewardDisciplineRepository {
  @override
  Future<Result<BaseResponseObject<List<DisciplineResponse?>?>, NetworkError>> getListDiscipline(
      RewardDisciplineRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<DisciplineResponse?>?>,
            BaseResponseObject<List<DisciplineResponse?>?>>(
        route: DisciplineClient.getDisciplineList(model),
        responseType: const BaseResponseObject<List<DisciplineResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<RewardResponse?>?>, NetworkError>> getListReward(
      RewardDisciplineRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<RewardResponse?>?>,
            BaseResponseObject<List<RewardResponse?>?>>(
        route: RewardClient.getRewardList(model),
        responseType: const BaseResponseObject<List<RewardResponse?>?>());
  }
}
