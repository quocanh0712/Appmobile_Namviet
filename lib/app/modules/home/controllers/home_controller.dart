// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_banner_url.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_recent_actitvity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_recent_task.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/home_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';

import '../../../../generated/assets.gen.dart';

class HomeController extends BaseController {
  final ScrollController scrollController = ScrollController();
  PanelController? panelController = PanelController();
  final hasNoTasks = false.obs;
  final recentTasks = <HomeRecentTask?>[].obs;

  final lstRecentActivities = <HomeRecentActitvity>[].obs;

  final lstBanners = <HomeBannerUrl>[].obs;
  CarouselController? bannerController = CarouselController();
  final currentBanner = 0.obs;

  final userRepo = Get.find<UserRepository>();
  final homeRepo = Get.find<HomeRepository?>();
  Rx<UserObject?> userObject = UserObject().obs;
  Rx<UserPermission>? userPermission = UserPermission.none.obs;

  int? idDonVi = 0;
  Rx<String> title = "NAM VIỆT JSC".obs;
  Rx<String> imagePath = Assets.images.icBookPng.path.obs;
  // Rx<String> username = "19571402060106".obs;
  // Rx<String> name = "Đỗ Thịnh An".obs;
  // Rx<String> username = "admin".obs;
  // Rx<String> name = "Quản trị hệ thống".obs;

  @override
  void onInit() async {
    super.onInit();
    userObject.value = await userRepo.retrieveUserInfo();
    idDonVi = userObject.value?.idDonVi;
    switch (idDonVi) {
      case 1:
        title.value = "Trường ĐH Ngoại ngữ Đà Nẵng";
        imagePath.value = Assets.images.ftuLogo.path;
        break;
      case 2:
        title.value = "Trường ĐH Nông Lâm Thái Nguyên";
        imagePath.value = Assets.images.homeBotLeftButBg.path;
        break;
      case 3:
        title.value = "Trường ĐH SPNT Trung Ương";
        imagePath.value = Assets.images.homeBotLeftButBg.path;
        break;
      case 4:
        title.value = "Trường ĐH Sư phạm TDTT Hà Nội";
        imagePath.value = Assets.images.homeBotLeftButBg.path;
        break;
      case 5:
        title.value = "Trường Quốc tế - ĐHQG Hà Nội";
        imagePath.value = Assets.images.homeBotLeftButBg.path;
        break;
      default:
        title.value = "NAM VIỆT JSC";
        imagePath.value = Assets.images.icBookPng.path;
        break;
    }
  }

  @override
  void onReady() async {
    super.onReady();
    Fimber.d("onReady()");
    userObject.value = await userRepo.retrieveUserInfo();
    userPermission?.value =
        userObject.value?.retrievePermission() ?? UserPermission.none;
    retrieveData();
  }

  Future<void> retrieveData() async {
    Fimber.d('retrieveData()');
    isLoading.value = true;
    final response = await homeRepo?.retrieveData();
    response?.when(success: ((data) {
      Fimber.d('response.when(success:)');
      if (data.isSuccess()) {
        Fimber.d('data.isSuccess()');
        lstRecentActivities.value = data.result?.homeRecentActitvities ?? [];
        lstBanners.value = data.result?.homeBannerUrls ?? [];
        recentTasks.value = data.result?.homeRecentTasks ?? [];
      } else {
        Fimber.d('data.isFail()');
      }
    }), failure: ((error) {
      Fimber.d('response.when(failure:)');
    }));
    isLoading.value = false;
  }

  @override
  void onClose() {
    scrollController.dispose();
    panelController = null;
    bannerController = null;
    super.onClose();
  }

  navigateToTasksCalendar() async {
    Fimber.d("navigateToTasksCalendar()");
    String title;
    if (userPermission?.value == UserPermission.teacher) {
      title = LocaleKeys.teacherScheduleTimeTitle.tr;
    } else {
      title = LocaleKeys.studyScheduleTitle.tr;
    }
    Get.toNamed(Routes.SCHEDULE_DAILY, arguments: title);
  }

  navigateToScheduleTime() {
    Fimber.d("navigateToScheduleTime()");
    String title;
    if (userPermission?.value == UserPermission.teacher) {
      title = LocaleKeys.teacherScheduleTimeTitle.tr;
    } else {
      title = LocaleKeys.otherScheduleTimeTitle.tr;
    }
    Get.toNamed(Routes.SCHEDULE_TIME, arguments: title);
  }

  navigateToOneGate() {
    Fimber.d("navigateToOneGate()");
    Get.toNamed(Routes.ONE_GATE);
  }

  navigateToUtilites() {
    Fimber.d("navigateToUtilites()");
  }

  navigateToLearningResults() {
    Fimber.d("navigateToLearningResults()");
    Get.toNamed(Routes.LEARNING_RESULTS);
  }

  navigateToEducationProgram() {
    Fimber.d("navigateToEducationProgram()");
    Get.toNamed(Routes.EDUCATION_PROGRAM);
  }

  navigateToFinanceOverview() {
    Fimber.d("navigateToFinanceOverview()");
    Get.toNamed(Routes.FINANCE_OVERVIEW);
  }

  navigateToELearning() {
    Fimber.d("navigateToELearning()");
    Get.toNamed(Routes.ELEARNING);
  }

  navigateToScientificResearch() {
    Fimber.d("navigateToELearning()");
    Get.toNamed(Routes.SCIENTIFIC_RESEARCH);
  }

  navigateToSurveyResult() {
    Fimber.d("navigateToSurveyResult()");
    Get.toNamed(Routes.SURVEY_RESULT);
  }

  navigateToTeacherContact() {
    Fimber.d("navigateToTeacherContact()");
    Get.toNamed(Routes.LIST_TEACHER_INFO);
  }

  navigateToConversation() {
    Fimber.d("navigateToConversation()");
    Get.toNamed(Routes.DISCUSS_FEEDBACK);
  }

  navigateToTestSchedule() {
    Fimber.d("navigateToTestSchedule()");
    Get.toNamed(Routes.TESTING_PLANING);
  }

  navigateToPracticePointOverview() {
    Fimber.d('navigateToPracticePointOverview()');
    Get.toNamed(Routes.PRACTICE_POINT_OVERVIEW);
  }

  navigateToRewardDiscipline() {
    Fimber.d('navigateToRewardDiscipline()');
    Get.toNamed(Routes.REWARD_DISCIPLINE);
  }

  navigateToCertificate() {
    Fimber.d("navigateToCertificate()");
    Get.toNamed(Routes.LIST_CERTIFICATES);
  }
}
