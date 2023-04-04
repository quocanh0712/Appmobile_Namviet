// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/scientific_research/model/scientific_research_request.dart';
import 'package:ftu_lms/app/modules/scientific_research/model/scientific_research_response.dart';
import 'package:ftu_lms/app/modules/scientific_research/repository/scientific_research_repository.dart';
import 'package:ftu_lms/data/remote/clients/scientific_research_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class ScientificResearchRepositoryImpl extends ScientificResearchRepository {
  @override
  Future<Result<BaseResponseObject<List<ScientificResearchResponse?>?>, NetworkError>>
      getScientificResearchList(ScientificResearchRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<ScientificResearchResponse?>?>,
            BaseResponseObject<List<ScientificResearchResponse?>?>>(
        route: ScientificResearchClient.getScientificResearchList(model),
        responseType: const BaseResponseObject<List<ScientificResearchResponse?>?>());
  }
}
