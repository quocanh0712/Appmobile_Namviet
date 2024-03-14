// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/scientific_research/model/scientific_research_request.dart';
import 'package:ftu_lms/app/modules/scientific_research/repository/scientific_research_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

class ScientificResearchController extends BaseListController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  Future<Result<BaseResponseObject<List?>, Exception>> callToHost() {
    ScientificResearchRepository repository = Get.find();

    return repository.getScientificResearchList(
        ScientificResearchRequest(length: maxLengthResult, startindex: pageIndex));
  }

  void navigateItemScientificResearch(int index) {
    Get.toNamed(Routes.ITEM_SCIENTIFIC_RESEARCH, arguments: listData[index]);

  }
}
