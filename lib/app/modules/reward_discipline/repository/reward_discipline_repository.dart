// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/reward_discipline/model/reward_discipline_request.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/discipline/model/discipline_response.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/reward/model/reward_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class RewardDisciplineRepository {
  Future<Result<BaseResponseObject<List<RewardResponse?>?>, NetworkError>> getListReward(
      RewardDisciplineRequest? model);

  Future<Result<BaseResponseObject<List<DisciplineResponse?>?>, NetworkError>> getListDiscipline(
      RewardDisciplineRequest? model);
}
