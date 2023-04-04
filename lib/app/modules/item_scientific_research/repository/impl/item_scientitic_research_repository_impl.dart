// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/item_scientific_research/model/item_scientific_research_request.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/model/item_scientific_research_response.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/repository/item_scientific_research_repository.dart';
import 'package:ftu_lms/data/remote/clients/scientific_research_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class ItemScientificResearchRepositoryImpl extends ItemScientificResearchRepository {
  @override
  Future<Result<BaseResponseObject<List<ItemScientificResearchResponse?>?>, NetworkError>>
      getItemScientificResearch(ItemScientificResearchRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<ItemScientificResearchResponse?>?>,
            BaseResponseObject<List<ItemScientificResearchResponse?>?>>(
        route: ScientificResearchClient.getDetailItemScientificResearch(model),
        responseType: const BaseResponseObject<List<ItemScientificResearchResponse?>?>());
  }
}
