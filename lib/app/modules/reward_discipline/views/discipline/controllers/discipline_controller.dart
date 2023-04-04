// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/app/modules/reward_discipline/model/reward_discipline_request.dart';
import 'package:ftu_lms/app/modules/reward_discipline/repository/reward_discipline_repository.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/discipline/model/discipline_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

class DisciplineController extends BaseInfiniteListController<DisciplineResponse> {
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
  Future<Result<BaseResponseObject<List<DisciplineResponse?>?>, Exception>>
      retrieveDataFromService(int? pageNumber) {
    RewardDisciplineRepository repository = Get.find();
    return repository.getListDiscipline(RewardDisciplineRequest(
      startindex: pageNumber,
      length: defaultItemsPerPageCount,
    ));
  }
}
