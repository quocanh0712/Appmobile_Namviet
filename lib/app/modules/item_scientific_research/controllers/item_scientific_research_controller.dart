// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/model/item_scientific_research_request.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/repository/item_scientific_research_repository.dart';
import 'package:ftu_lms/app/modules/scientific_research/model/scientific_research_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemScientificResearchController extends BaseListController {
  ScientificResearchResponse? _scientificResearchResponse;

  @override
  void onInit() {
    var data = Get.arguments is ScientificResearchResponse ? Get.arguments : null;
    _scientificResearchResponse = data;
    super.onInit();
  }

  @override
  void onReady() {
    if (_scientificResearchResponse == null) {
      isError.value = LocaleKeys.commonErrorMessage.tr;
      return;
    }
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String? getTitle() => _scientificResearchResponse?.type;

  @override
  Future<Result<BaseResponseObject<List?>, Exception>> callToHost() {
    ItemScientificResearchRepository repository = Get.find();
    return repository.getItemScientificResearch(ItemScientificResearchRequest(
        idTypeNckh: _scientificResearchResponse?.typeId,
        length: maxLengthResult,
        keyword: textSearch,
        startindex: pageIndex));
  }

  void openHrefLink(String? href) async {
    if (!await launchUrl(Uri.parse(href ?? Constants.EMPTY),
        mode: LaunchMode.externalApplication)) {
      EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
    }
  }
}
