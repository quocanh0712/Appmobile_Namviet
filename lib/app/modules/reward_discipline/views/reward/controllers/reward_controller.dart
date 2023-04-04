// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/app/modules/reward_discipline/model/reward_discipline_request.dart';
import 'package:ftu_lms/app/modules/reward_discipline/repository/reward_discipline_repository.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/reward/model/reward_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

class RewardController extends BaseInfiniteListController<RewardResponse> {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  Future<Result<BaseResponseObject<List<RewardResponse?>?>, NetworkError>> retrieveDataFromService(
      int? pageNumber) {
    RewardDisciplineRepository repository = Get.find();
    return repository.getListReward(RewardDisciplineRequest(
      startindex: pageNumber,
      length: defaultItemsPerPageCount,
    ));
  }
}
