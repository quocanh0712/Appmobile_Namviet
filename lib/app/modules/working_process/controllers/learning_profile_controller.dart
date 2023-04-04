// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/working_process/model/key_value_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_profile_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class LearningProfileController extends BaseController {
  LearningProfileResponse learningProfileResponse = const LearningProfileResponse();

  WorkingProcessRepository repo = Get.find();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController yearController = TextEditingController();

  TextEditingController birthdayController = TextEditingController();

  TextEditingController placeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController companyController = TextEditingController();

  Rx<int> academicIndex = (-1).obs;

  Rx<int> degreeIndex = (-1).obs;

  Rx<int> titleIndex = (-1).obs;

  Rx<int> positionIndex = (-1).obs;

  RxList<KeyValueResponse?> listAcademicConfig = <KeyValueResponse>[].obs;

  RxList<KeyValueResponse?> listDegreeConfig = <KeyValueResponse>[].obs;

  RxList<KeyValueResponse?> listTitleConfig = <KeyValueResponse>[].obs;

  RxList<KeyValueResponse?> listPositionConfig = <KeyValueResponse>[].obs;

  @override
  void onInit() async {
    await loadLearningProfile();
    super.onInit();
  }

  loadLearningProfile() {
    learningProfileResponse = Get.arguments[0];
    listAcademicConfig.value = Get.arguments[1];
    listDegreeConfig.value = Get.arguments[2];
    listTitleConfig.value = Get.arguments[3];
    listPositionConfig.value = Get.arguments[4];
    academicIndex.value = listAcademicConfig.value
        .indexWhere((element) => learningProfileResponse.academicrankid == element?.key);
    degreeIndex.value = listDegreeConfig.value
        .indexWhere((element) => learningProfileResponse.degreeid == element?.key);
    titleIndex.value = listTitleConfig.value
        .indexWhere((element) => learningProfileResponse.researchid == element?.key);
    positionIndex.value = listPositionConfig.value
        .indexWhere((element) => learningProfileResponse.positionid == element?.key);
    fullNameController.text = learningProfileResponse.name ?? Constants.EMPTY;
    yearController.text = learningProfileResponse.year?.toString() ?? Constants.EMPTY;
    birthdayController.text = learningProfileResponse.dateofbirth ?? Constants.EMPTY;
    placeController.text = learningProfileResponse.placeofbirth ?? Constants.EMPTY;
    phoneNumberController.text = learningProfileResponse.phonenumber ?? Constants.EMPTY;
    emailController.text = learningProfileResponse.email ?? Constants.EMPTY;
    companyController.text = learningProfileResponse.agencyname ?? Constants.EMPTY;
  }

  @override
  void onReady() {
    super.onReady();
  }

  updateName(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(name: text);
  }

  updateAcademicRank(int index) {
    academicIndex.value = index;
  }

  sendUpdateLearningProfile() async {
    isLoading.value = true;
    var response = await repo.updateLearningProfile(learningProfileResponse);
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        isError.value = LocaleKeys.updateUserInfoSuccessfully.tr;
      } else {
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = e.localizedErrorMessage;
    });
  }

  updateYearConferred(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(year: text.toIntOrNull());
  }

  updateDateOfBirth(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(dateofbirth: text);
  }

  updatePlaceOfBirth(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(placeofbirth: text);
  }

  updatePhoneNumber(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(phonenumber: text);
  }

  updateEmail(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(email: text);
  }

  updateCompanyName(String text) {
    learningProfileResponse = learningProfileResponse.copyWith(agencyname: text);
  }

  updateDegree(int index) {
    degreeIndex.value = index;
  }

  updateTitle(int index) {
    titleIndex.value = index;
  }

  updatePosition(int index) {
    positionIndex.value = index;
  }
}
