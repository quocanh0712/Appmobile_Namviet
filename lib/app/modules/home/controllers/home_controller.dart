// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_banner_url.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_new_activity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_outstanding_actitvity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_recent_actitvity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_recent_task.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/home_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:status_bar_control/status_bar_control.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../generated/assets.gen.dart';

class HomeController extends BaseController {
  final ScrollController scrollController = ScrollController();
  PanelController? panelController = PanelController();
  RxString avatarUrl = ''.obs;
  final hasNoTasks = false.obs;
  final recentTasks = <HomeRecentTask?>[].obs;
  final lstNewActivities = <HomeNewActivity>[].obs;
  final lstRecentActivities = <HomeRecentActitvity>[].obs;
  final lstOutstandingActivities = <HomeOutstandingActitvity>[].obs;

  final lstBanners = <HomeBannerUrl>[].obs;
  CarouselController? bannerController = CarouselController();
  final currentBanner = 0.obs;


  PageController? pageTeacherController = PageController();
  final currentPage = 0.obs;



  final userRepo = Get.find<UserRepository>();
  final homeRepo = Get.find<HomeRepository?>();
  Rx<UserObject?> userObject = UserObject().obs;
  Rx<UserPermission>? userPermission = UserPermission.none.obs;



  int? idDonVi = 0;
  Rx<String> title = "NAM VIỆT JSC".obs;
  Rx<String> imagePath = Assets.images.icBookPng.path.obs;

  Rx<String> username = "1952220001".obs;
  Rx<String> name = "Phạm Thị Vân Anh".obs;
  //Rx<String> username = "admin".obs;
  //Rx<String> name = "Quản trị hệ thống".obs;

  @override
  void onInit() async {
    super.onInit();

    userObject.value = await userRepo.retrieveUserInfo();
    idDonVi = userObject.value?.idDonVi;
    switch (idDonVi) {
      case 1:
        title.value = "Trường ĐH Ngoại ngữ Đà Nẵng";
        imagePath.value = Assets.images.uflLogo.path;
        break;
      case 2:
        title.value = "Trường ĐH Nông Lâm Thái Nguyên";
        imagePath.value = Assets.images.tUAFLogo.path;
        break;
      case 3:
        title.value = "Trường ĐH SPNT Trung Ương";
        imagePath.value = Assets.images.nUAELogo.path;
        break;
      case 4:
        title.value = "Trường ĐH Sư phạm TDTT Hà Nội";
        imagePath.value = Assets.images.hUPESLogo.path;
        break;
      case 5:
        title.value = "Trường Quốc tế - ĐHQG Hà Nội";
        imagePath.value = Assets.images.iSHNULogo.path;
        break;
      default:
        title.value = "NAM VIỆT JSC";
        imagePath.value = Assets.images.icBookPng.path;
        break;
    }


  }

  // @override
  // void onReady() async {
  //   super.onReady();
  //   Fimber.d("onReady()");
  //   userObject.value = await userRepo.retrieveUserInfo();
  //
  //   userPermission?.value =
  //       userObject.value?.retrievePermission() ?? UserPermission.none;
  //   if (userPermission?.value == UserPermission.student) {
  //     username.value = "1952220001";
  //     name.value = "Phạm Thị Vân Anh";
  //   } else {
  //     username.value = "admin";
  //     name.value = "Quản trị hệ thống";
  //   }
  //   retrieveData();
  // }

  @override
  void onReady() async {
    super.onReady();
    Fimber.d("onReady()");
    final homeController = Get.find<HomeController>();
    homeController.avatarUrl.value = homeController.userObject.value?.avatar ?? '';
    homeController.userObject.value = await homeController.userRepo.retrieveUserInfo();

    homeController.userPermission?.value =
        homeController.userObject.value?.retrievePermission() ?? UserPermission.none;
    if (homeController.userPermission?.value == UserPermission.student) {
      homeController.username.value = "1952220001";
      homeController.name.value = "Phạm Thị Vân Anh";
    } else {
      homeController.username.value = "admin";
      homeController.name.value = "Quản trị hệ thống";
    }
    homeController.retrieveData();
  }

  Future<void> retrieveData() async {
    Fimber.d('retrieveData()');
    isLoading.value = true;
    final response = await homeRepo?.retrieveData();
    response?.when(success: ((data) {
      Fimber.d('response.when(success:)');
      if (data.isSuccess()) {
        Fimber.d('data.isSuccess()');
        lstNewActivities.value = data.result?.homeNewActivities ?? [];
        lstRecentActivities.value = data.result?.homeRecentActitvities ?? [];
        // lstRecentActivities.value = [
        //   HomeRecentActitvity(
        //       id: 1,
        //       // image: '',
        //       icon: 'https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg',
        //       title: 'Thông báo thay đổi lịch học',
        //       content:
        //           'Thay đổi THỜI KHÓA BIỂU HỌC KỲ 1 NĂM HỌC 2023-2024. Chi tiết trên trang cổng thông tin...'),
        //   HomeRecentActitvity(
        //       id: 2,
        //       icon: 'http://thttphonxuong.pgdyenthe.edu.vn/upload/38578/fck/24215413/2023_01_28_14_46_241.jpg',
        //       title: 'Bạn được nhắn đến trong 01 bài viết gần đây',
        //       content: 'Thông báo: Các em sinh viên khóa K22 chuẩn bị nộp...'),
        // ];
        // lstOutstandingActivities.value = data.result?.homeOutstandingActitvities ?? [];
        lstOutstandingActivities.value = [
          HomeOutstandingActitvity(
              id: 1,
              image: 'http://thttphonxuong.pgdyenthe.edu.vn/upload/38578/fck/24215413/2023_01_28_14_46_241.jpg',
              title: 'Thông báo thay đổi lịch học',
              content:
              'xxxxxxx Thay đổi THỜI KHÓA BIỂU HỌC KỲ 1 NĂM HỌC 2023-2024. Chi tiết trên trang cổng thông tin...'),
          HomeOutstandingActitvity(
              id: 2,
              image: 'https://media.kenhtuyensinh.vn/images/2013/03/dai_hoc_nha_trang.jpg',
              title: 'Bạn được nhắn đến trong 01 bài viết gần đây',
              content: 'Thông báo: Các em sinh viên khóa K22 chuẩn bị nộp...'),
          HomeOutstandingActitvity(
              id: 3,
              image: 'https://media.kenhtuyensinh.vn/images/2013/03/dai_hoc_nha_trang.jpg',
              title: 'Bfdfff ạn được nhắn đến trong 01 bài viết gần đây',
              content: 'Thông báo: Các em sinh viên khóa K22 chuẩn bị nộp...'),
          HomeOutstandingActitvity(
              id: 4,
              image: '',
              title: ' 4444444 Bạn được nhắn đến trong 01 bài viết gần đây',
              content: 'Thông báo: Các em sinh viên khóa K22 chuẩn bị nộp...'),
        ];
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
  navigateToTestingPlaning() {
    Fimber.d("navigateToTestingPlaning()");
    Get.toNamed(Routes.TESTING_PLANING);
  }


  navigateToExamSchedule() {
    Fimber.d("navigateToExamSchedule()");
    Get.toNamed(Routes.EXAM_SCHEDULE);
  }

  navigateToTeachingReplace() {
    Fimber.d("navigateToTeachingReplace()");
    Get.toNamed(Routes.TEACHING_REPLACE);
  }

  navigateToReExamApproval() {
    Fimber.d("navigateToReExamApproval()");
    Get.toNamed(Routes.RE_EXAM_APPROVAL);
  }

  navigateToInspectionSchedule() {
    Fimber.d("navigateToInspectionSchedule()");
    Get.toNamed(Routes.INSPECTION_SCHEDULE);
  }

  navigateToLectureManagement() {
    Fimber.d("navigateToLectureManagement()");
    Get.toNamed(Routes.LECTURE_MANAGEMENT);
  }

  navigateToWebView(){

  }

  navigateToOneGate() {
    Fimber.d("navigateToOneGate()");
    Get.toNamed(Routes.ONE_GATE);
  }

  navigateToCheckInDevice() {
    Fimber.d("navigateToCheckInDevice()");
    Get.toNamed(Routes.SCHEDULE_CHECKIN);
  }

  navigateToPropertyLookUp() {
    Fimber.d("navigateToPropertyLookUp()");
    Get.toNamed(Routes.CHECKIN);
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


  navigateToWorkingProcess() {
    Fimber.d("navigateToWorkingProcess()");
    Get.toNamed(Routes.WORKING_PROCESS);
  }

  navigateToTrainingProcess() {
    Fimber.d("navigateToTrainingProcess()");
    Get.toNamed(Routes.TRAINING_PROCESS);
  }

  navigateToSalaryInfo() {
    Fimber.d("navigateToSalaryInfo()");
    Get.toNamed(Routes.SALARY_INFO);
  }
  navigateToSocialInsurance() {
    Fimber.d("navigateToSocialInsurance()");
    Get.toNamed(Routes.SOCIAL_INSURANCE);
  }

  navigateToAllowance() {
    Fimber.d("navigateToAllowance()");
    Get.toNamed(Routes.ALLOWANCE);
  }

  navigateToAnotherSchedule() {
    Fimber.d("navigateToAnotherSchedule()");
    Get.toNamed(Routes.ANOTHER_SCHEDULE);
  }

  navigateToTextAway() {
    Fimber.d("navigateToTextAway()");
    Get.toNamed(Routes.TEXT_AWAY);
  }

  navigateToWorkResolve() {
    Fimber.d("navigateToWorkResolve()");
    Get.toNamed(Routes.WORK_RESOLE);
  }

  navigateToTextIncome() {
    Fimber.d("navigateToTextIncome()");
    Get.toNamed(Routes.TEXT_INCOME);
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
    Fimber.d("navigateToScientificResearch()");
    Get.toNamed(Routes.SCIENTIFIC_RESEARCH);
  }

  navigateToDomesticNews() {
    Fimber.d("navigateToDomesticNews()");
    Get.toNamed(Routes.DOMESTIC_NEWS);
  }

  navigateToInternationalNews() {
    Fimber.d("navigateToInternationalNews()");
    Get.toNamed(Routes.INTERNATIONAL_NEWS);
  }

  navigateToScienceTopic() {
    Fimber.d("navigateToScienceTopic()");
    Get.toNamed(Routes.SCIENCE_TOPIC);
  }

  navigateToMemberTopic() {
    Fimber.d("navigateToMemberTopic()");
    Get.toNamed(Routes.MEMBER_TOPIC);
  }

  navigateToSeminar() {
    Fimber.d("navigateToSeminar()");
    Get.toNamed(Routes.SEMINAR);
  }

  navigateToSurveyResult() {
    Fimber.d("navigateToSurveyResult()");
    Get.toNamed(Routes.SURVEY_RESULT);
  }

  navigateToTeacherContact() {
    Fimber.d("navigateToTeacherContact()");
    Get.toNamed(Routes.LIST_TEACHER_INFO);
  }

  navigateToFollowScientificResearch() {
    Fimber.d("navigateToFollowScientificResearch()");
    Get.toNamed(Routes.FOLLOW_SCIENTIFIC_RESEARCH);
  }

  navigateToGroupArrive() {
    Fimber.d("navigateToGroupArrive()");
    Get.toNamed(Routes.GROUP_ARRIVE);
  }

  navigateToPartnerProject() {
    Fimber.d("navigateToPartnerProject()");
    Get.toNamed(Routes.PARTNER_PROJECT);
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

  navigateToListClassManagerTitle() {
    Fimber.d("navigateToListClassManagerTitle()");
    Get.toNamed(Routes.LIST_CLASS_MANAGERS);
  }

  navigateToClassSurveyResult() {
    Fimber.d("navigateToClassSurveyResult()");
    Get.toNamed(Routes.CLASS_SURVEY_RESULT);
  }

  navigateToStuCheckinManager() {
    Fimber.d("navigateToStuCheckinManager()");
    Get.toNamed(Routes.STU_CHECKIN_MANAGER);
  }

  navigateToExecutiveDocuments() {
    Fimber.d("navigateToExecutiveDocuments()");
    Get.toNamed(Routes.EXECUTIVE_DOCUMENTS);
  }

  navigateToSendRequest() {
    Fimber.d("navigateToSendRequest()");
    Get.toNamed(Routes.SEND_REQUEST);
  }

  navigateToTraining(){
    Fimber.d("navigateToTraining()");
    Get.toNamed(Routes.TRAINING);
  }

  navigateToSalary(){
    Fimber.d("navigateToSalary()");
    Get.toNamed(Routes.SALARY);
  }

  navigateToAttendance(){
    Fimber.d("navigateToAttendance()");
    Get.toNamed(Routes.ATTENDANCE);
  }

  navigateToTeachingHour(){
    Fimber.d("navigateToTeachingHour()");
    Get.toNamed(Routes.TEACHING_HOUR);
  }

  navigateToOutlineDetail(){
    Fimber.d("navigateToOutlineDetail()");
    Get.toNamed(Routes.OUTLINE_DETAIL);
  }

  navigateToPointProcess(){
    Fimber.d("navigateToPointProcess()");
    Get.toNamed(Routes.POINT_PROCESS);
  }

  navigateToTestPoint(){
    Fimber.d("navigateToTestPoint()");
    Get.toNamed(Routes.TEST_POINT);
  }

  navigateToCreditApproval(){
    Fimber.d("navigateToCreditApproval()");
    Get.toNamed(Routes.CREDIT_APPROVAL);
  }
  navigateToLMS(){
    Fimber.d("navigateToLMS()");
    Get.toNamed(Routes.LMS);
  }

  navigateToProof(){
    Fimber.d("navigateToProof()");
    Get.toNamed(Routes.PROOF);
  }

  navigateToAccreditation(){
    Fimber.d("navigateToAccreditation()");
    Get.toNamed(Routes.ACCREDITATION);
  }

  navigateToTeachingSchedule(){
    Fimber.d("navigateToTeachingSchedule()");
    Get.toNamed(Routes.TEACHING_SCHEDULE);
  }

  navigateToJobDeclaration(){
    Fimber.d("navigateToJobDeclaration()");
    Get.toNamed(Routes.JOB_DECLARATION);
  }

  navigateToAttendanceStu(){
    Fimber.d("navigateToAttendanceStu()");
    Get.toNamed(Routes.ATTENDANCE_STU);
  }
  navigateToRoomRegistration(){
    Fimber.d("navigateToRoomRegistration()");
    Get.toNamed(Routes.ROOM_REGISTRATION);
  }

  navigateToVehicleRegistration(){
    Fimber.d("navigateToVehicleRegistration()");
    Get.toNamed(Routes.VEHICLE_REGISTRATION);
  }



  navigateToReportTask() {
    Fimber.d("navigateToReportTask()");
    Get.toNamed(Routes.REPORT_TASK);
  }

  navigateToEvaluateTraining() {
    Fimber.d("navigateToEvaluateTraining()");
    Get.toNamed(Routes.EVALUATE_TRAINING);
  }

  navigateToStuListManagement() {
    Fimber.d("navigateToStuListManagement()");
    Get.toNamed(Routes.STU_LIST_MANAGEMENT);
  }

  navigateToAdministrativeClass() {
    Fimber.d("navigateToAdministrativeClass()");
    Get.toNamed(Routes.ADMINISTRATIVE_CLASS);
  }

  navigateToCreditClass() {
    Fimber.d("navigateToCreditClass()");
    Get.toNamed(Routes.CREDIT_CLASS);
  }

  navigateToDebtList() {
    Fimber.d("navigateToDebtList()");
    Get.toNamed(Routes.DEBT_LIST);
  }

  navigateToPersonalProperty() {
    Fimber.d("navigateToPersonalProperty()");
    Get.toNamed(Routes.PERSONAL_PROPERTY);
  }

  navigateToRepairRequest() {
    Fimber.d("navigateToRepairRequest()");
    Get.toNamed(Routes.REPAIR_REQUEST);
  }

  navigateToShoppingNeed() {
    Fimber.d("navigateToShoppingNeed()");
    Get.toNamed(Routes.SHOPPING_NEED);
  }

  navigateToApproveRepair() {
    Fimber.d("navigateToApproveRepair()");
    Get.toNamed(Routes.APPROVE_REPAIR);
  }

  navigateToFinancialDetail() {
    Fimber.d("navigateToFinancialDetail()");
    Get.toNamed(Routes.FINANCIAL_DETAIL);
  }

  navigateToScholarshipList() {
    Fimber.d("navigateToScholarshipList()");
    Get.toNamed(Routes.SCHOLARSHIP_LIST);
  }
  navigateToConsultant() {
    Fimber.d("navigateToConsultant()");
    Get.toNamed(Routes.CONSULTANT);
  }

  navigateToClassOfficial() {
    Fimber.d("navigateToClassOfficial()");
    Get.toNamed(Routes.CLASS_OFFICIAL);
  }

  navigateToEmail() {
    Fimber.d("navigateToEmail()");
    Get.toNamed(Routes.EMAIL);
  }

  navigateToProfile() {
    Fimber.d("navigateToProfile()");
    Get.toNamed(Routes.PROFILE);
  }

  navigateToNotification() {
    Fimber.d("navigateToNotification()");
    Get.toNamed(Routes.NOTIFICATION);
  }

  navigateToDocumentManagement() {
    Fimber.d("navigateToDocumentManagement()");
    StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    Get.toNamed(Routes.DOCUMENT_MANAGEMENT);
  }

  navigateToStatistical() {
    Fimber.d('navigateToStatistical()');
    StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    Get.toNamed(Routes.STATISTICAL);
  }
  navigateToTrackProgress() {
    Fimber.d('navigateToTrackProgress()');
    StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    Get.toNamed(Routes.TRACK_PROGRESS);
  }
}
