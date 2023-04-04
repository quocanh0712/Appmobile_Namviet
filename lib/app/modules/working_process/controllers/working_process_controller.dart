// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/working_process/model/key_value_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_profile_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class WorkingProcessController extends BaseController {
  WorkingProcessRepository repo = Get.find();

  List<String> listWorkingProcess = [
    LocaleKeys.learningProcess.tr,
    LocaleKeys.workingProcess.tr,
    LocaleKeys.languageLevel.tr,
    LocaleKeys.learningProfile.tr
  ];

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

  navigateItem(String item) async {
    int index = listWorkingProcess.indexOf(item);
    switch (index) {
      case 0:
        Get.toNamed(Routes.LEARNING_PROCESS);
        break;
      case 1:
        Get.toNamed(Routes.LIST_WORKING_PROCESS);
        break;
      case 2:
        Get.toNamed(Routes.LANGUAGE_PROCESS);
        break;
      default:
        await loadLearningProfile();
        break;
    }
  }

  loadLearningProfile() async {
    List<KeyValueResponse?> listAcademicConfig = <KeyValueResponse>[];

    List<KeyValueResponse?> listDegreeConfig = <KeyValueResponse>[];

    List<KeyValueResponse?> listTitleConfig = <KeyValueResponse>[];

    List<KeyValueResponse?> listPositionConfig = <KeyValueResponse>[];

    isLoading.value = true;
    var responseAcademic = await repo.getAcademicRankConfigList();
    responseAcademic.when(success: (data) {
      if (data.isSuccess()) {
        listAcademicConfig = data.result ?? [];
      } else {
        isError.value == data.message;
        isLoading.value = false;
        return;
      }
    }, failure: (e) {
      isError.value == e.localizedErrorMessage;
      isLoading.value = false;
      return;
    });

    var responseDegree = await repo.getDegreeConfigList();
    responseDegree.when(success: (data) {
      if (data.isSuccess()) {
        listDegreeConfig = data.result ?? [];
      } else {
        isError.value == data.message;
        isLoading.value = false;
        return;
      }
    }, failure: (e) {
      isError.value == e.localizedErrorMessage;
      isLoading.value = false;
      return;
    });

    var responseTitle = await repo.getTitleConfigList();
    responseTitle.when(success: (data) {
      if (data.isSuccess()) {
        listTitleConfig = data.result ?? [];
      } else {
        isError.value == data.message;
        isLoading.value = false;
        return;
      }
    }, failure: (e) {
      isError.value == e.localizedErrorMessage;
      isLoading.value = false;
      return;
    });

    var responsePosition = await repo.getPositionConfigList();
    responsePosition.when(success: (data) {
      if (data.isSuccess()) {
        listPositionConfig = data.result ?? [];
      } else {
        isError.value == data.message;
        isLoading.value = false;
        return;
      }
    }, failure: (e) {
      isError.value == e.localizedErrorMessage;
      isLoading.value = false;
      return;
    });

    var response =
        await repo.getLearningProfile(const WorkingProcessRequest(startindex: 1, length: 20));
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        Get.toNamed(Routes.LEARNING_PROFILE, arguments: [
          data.result ?? const LearningProfileResponse(),
          listAcademicConfig,
          listDegreeConfig,
          listTitleConfig,
          listPositionConfig,
        ]);
      } else {
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = e.localizedErrorMessage;
    });
  }
}
