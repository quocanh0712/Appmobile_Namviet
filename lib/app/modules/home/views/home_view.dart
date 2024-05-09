// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_extensions/dart_extensions.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/binding_creator.dart';
import 'package:ftu_lms/app/modules/home/bindings/home_binding.dart';
import 'package:ftu_lms/app/modules/utils/disable_scroll_glow_behavior.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_new_activity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_outstanding_actitvity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_recent_actitvity.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;
import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../styles/theme_extensions.dart';
import '../../../routes/app_pages.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../../dashboard/models/bot_nav_items.dart';
import '../../practicePoints/practicePointDetail/views/practice_point_detail_view.dart';
import '../controllers/home_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends BaseBindingCreatorView<HomeBinding, HomeController> {
  HomeView(
      {Key? key,
      required BindingCreator<HomeBinding>? bindingCreator,
      this.pageController})
      : super(key: key, bindingCreator: bindingCreator);
  final PageController? pageController;
  late InAppWebViewController webController;
  final DashboardController dashboardController =
      Get.put(DashboardController(), permanent: false);

  @override
  Widget? onCreateViews(BuildContext context) {
    return ScreenUtilInit(
      child: SlidingUpPanel(
        maxHeight: Get.height - 150,
        minHeight: Get.height - 350,
        parallaxEnabled: false,
        color: context.themeExtensions.transparent,
        boxShadow: [
          BoxShadow(blurRadius: 0, color: context.themeExtensions.transparent)
        ],
        body: Scaffold(
          body: Stack(
            children: [
              Assets.images.universityBuilding.image(
                  width: double.infinity, fit: BoxFit.cover, height: 380),
              Container(
                width: double.infinity,
                height: 445,
                decoration: BoxDecoration(
                    gradient: GradientExtension(context).headerGradient),
                child: SafeArea(
                  top: true,
                  bottom: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// header profile
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => GestureDetector(
                                    onTap: () => controller.navigateToProfile(),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            controller
                                                    .userObject.value?.avatar ??
                                                '',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Obx(() => AutoSizeText(
                                        "${controller.userObject.value?.fullname}",
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))),
                                    const SizedBox(height: 3),
                                    Obx(() => AutoSizeText(
                                        "${controller.userObject.value?.username}",
                                        // controller.username.value,
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 17))),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                                onTap: () {
                                  controller.navigateToNotification();
                                  // pageController?.animateToPage(
                                  //     notificationTabIndex,
                                  //     duration: const Duration(milliseconds: 300),
                                  //     curve: Curves.easeInOut);
                                },
                                child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: dashboardController
                                            .notiCount.value.isEmpty
                                        ? const Icon(
                                            Icons.notifications,
                                            color: Colors.white,
                                            size: 30,
                                          )
                                        : Badge(
                                            label: Text(dashboardController
                                                .notiCount.value),
                                            child: const Icon(
                                              Icons.notifications,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ))),
                          ],
                        ),
                      ),
                      //logo
                      Obx(() => Visibility(
                            visible: true,
                            child: Image.asset(controller.imagePath.value,
                                height: 68, width: 68, fit: BoxFit.cover),
                          )),
                      const SizedBox(height: 13),
                      Obx(() => AutoSizeText(controller.title.value,
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))),
                    ],
                  ),
                ),
              ),
              Obx(() {
                if (controller.isLoading.value == true) {
                  WidgetsBinding.instance.addPostFrameCallback((duration) {
                    EasyLoading.show();
                  });
                } else {
                  WidgetsBinding.instance.addPostFrameCallback((duration) {
                    EasyLoading.dismiss();
                  });
                }
                return const SizedBox.shrink();
              }),
            ],
          ),
        ),
        scrollController: controller.scrollController,
        controller: controller.panelController,
        panelBuilder: () => _panel(context),
        onPanelSlide: (double pos) {
          Fimber.d("onPanelSlide - pos: $pos");
        },
      ),
    );
  }

  Widget? _panel(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() =>
                    SizedBox(height: controller.hasNoTasks.value ? 75 : 105)),
                Expanded(
                  child: Container(
                    color: context.themeExtensions.white,
                    child: ScrollConfiguration(
                      behavior: DisableScrollGlowBehavior(),
                      child: ListView(
                        physics: PanelScrollPhysics(
                            controller: controller.panelController),
                        controller: controller.scrollController,
                        children: <Widget>[
                          Obx(() => SizedBox(
                              height: controller.hasNoTasks.value ? 56 : 76)),

                          /// The functions of the teacher or student
                          _retrieveMainFeaturesByUser(context),

                          ///Show list banner
                          _buildBannerWithPadding(context),

                          ///Teacher or student amenities
                          // _retrieveUtilitiesFeaturesByUser(context),

                          ///show outstanding activity
                          _buildOutstandingActivities(context),

                          ///show recent activity
                          _buildRecentActivities(context),

                          SizedBox(height: 50)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            _buildTodayTasksOverview(context)
          ],
        ));
  }

  Widget _retrieveMainFeaturesByUser(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => controller.navigateToUtilites(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.task.tr,
                  style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => _navigatorToTeacherMainFeatures(context),
                    );
                  },
                  child: Text(
                    'Tất cả',
                    style: GoogleFonts.openSans(
                        color: context.themeExtensions.mainGreen,
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Obx(() => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: _retrieveMainFeaturesByPermission(context,
                controller.userPermission?.value ?? UserPermission.none))),
        const SizedBox(height: 10),
        const Divider(
          thickness: 4,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _buildBannerWithPadding(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: _buildBanners(context)),
        const Divider(
          thickness: 4,
          color: Colors.black12,
        ),
        // InkWell(
        //   onTap: () => controller.navigateToUtilites(),
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         AutoSizeText(LocaleKeys.utilities.tr,
        //             style: const TextStyle(
        //                 fontSize: 15,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.black87)),
        //         GestureDetector(
        //           onTap: () {
        //             // Get.to(
        //             //   () => _navigatorToTeacherMainFeatures(context),
        //             // );
        //           },
        //           child: const Icon(
        //             Icons.arrow_forward_ios_rounded,
        //             size: 15,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 35),
      ],
    );
  }

  Widget _buildStudentUtilities(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icUserOctagon,
                  title: LocaleKeys.eLearning.tr,
                  onTap: () => controller.navigateToELearning(),
                ),
                const SizedBox(
                  height: 20,
                  width: 5,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icAward,
                  title: LocaleKeys.trainingPoint.tr,
                  onTap: () => controller.navigateToPracticePointOverview(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icBookPng,
                  title: LocaleKeys.teachingProgram.tr,
                  onTap: () => controller.navigateToEducationProgram(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icEmptyWalletChange,
                  title: LocaleKeys.finance.tr,
                  onTap: () => controller.navigateToFinanceOverview(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icExamPlan,
                  title: LocaleKeys.testingPlan.tr,
                  onTap: () => controller.navigateToTestSchedule(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                    context: context,
                    assetImage: Assets.images.icBrifecaseTick,
                    title: LocaleKeys.oneStopService.tr,
                    onTap: () => controller.navigateToOneGate()),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icUserOctagon,
                  title: LocaleKeys.account.tr,
                  onTap: () => showFeatureIsDeveloping(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.ic74,
                  title: LocaleKeys.titleTeacherContact.tr,
                  onTap: () => showFeatureIsDeveloping(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icConversation,
                  title: LocaleKeys.conversationTitle.tr,
                  onTap: () => controller.navigateToConversation(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icTask,
                  title: LocaleKeys.registedCourses.tr,
                  onTap: () => showFeatureIsDeveloping(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icReceiptDisscount,
                  title: LocaleKeys.scholarship.tr,
                  onTap: () => showFeatureIsDeveloping(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icUtilityMedalStar,
                  title: LocaleKeys.rewardDiscipline.tr,
                  onTap: () => showFeatureIsDeveloping(),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                ),
                _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.ic129,
                  title: LocaleKeys.certificatesTitle.tr,
                  onTap: () => controller.navigateToCertificate(),
                ),
                _buildUtilityButton(context: context),
                _buildUtilityButton(context: context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _retrieveUtilitiesFeaturesByUser(BuildContext context) {
    return Column(
      children: [
        Obx(() => SizedBox(
              child: _retrieveUtilitiesByPermission(context,
                  controller.userPermission?.value ?? UserPermission.none),
            )),
        const SizedBox(height: 10),
        const Divider(
          thickness: 4,
          color: Colors.black12,
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildRecentActivities(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                LocaleKeys.recentActivities.tr,
                style: GoogleFonts.openSans(
                    color: context.themeExtensions.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              AutoSizeText(
                LocaleKeys.viewMore.tr,
                style: GoogleFonts.openSans(
                    color: context.themeExtensions.mainGreen,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.lstRecentActivities.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _handleItemClick(context,
                        controller.lstRecentActivities[index].url.toString());
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 5, bottom: 5),
                    child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: _buildRecentActivityItem(
                          context,
                          recentActivity: controller.lstRecentActivities[index],
                        )),
                  ),
                );
              }),
        ),
      ],
    );
  }

  void _handleItemClick(BuildContext context, String url) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Tin tức',
                style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22)),
          ),
          body: InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(url),
            ),
            onWebViewCreated: (InAppWebViewController webviewController) {
              webController = webviewController;
            },
          ),
        ),
      ),
    );
  }

  Widget _buildOutstandingActivities(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15, bottom: 25),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  'Tin tức nhà trường',
                  // LocaleKeys.outstandingActivity.tr,
                  style: GoogleFonts.openSans(
                      color: context.themeExtensions.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                // AutoSizeText(
                //   LocaleKeys.viewMore.tr,
                //   style: context.themeExtensions.subTex
                //       .copyWith(
                //       color: context
                //           .themeExtensions.mainGreen),
                // )
              ],
            ),
          ),
        ),
        SizedBox(
          // width: 1090,
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.lstNewActivities.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _handleItemClick(context,
                        controller.lstNewActivities[index].url.toString());
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 5, bottom: 5),
                    child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: _buildActivityItem(context,
                            isRecentActivity: false,
                            newActivity: controller.lstNewActivities[index])),
                  ),
                );
              }),
        ),
        const Divider(
          thickness: 4,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _retrieveUtilitiesByPermission(
      BuildContext context, UserPermission permission) {
    if (permission == UserPermission.teacher) {
      return _buildTeacherUtilities(context: context, isShowAll: false);
    }
    return _buildStudentUtilities(context);
  }

  Widget _buildTeacherUtilities(
      {required BuildContext context, bool? isShowAll = false}) {
    List<Widget> mainUtilitiesItemList = [
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icMicroscope,
        onTap: () => controller.navigateToScientificResearch(),
        title: LocaleKeys.scienceStudy.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icDocumentNormal,
        onTap: () => controller.navigateToReportTask(),
        title: LocaleKeys.reportTask.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icFilterSearch,
        title: LocaleKeys.serveyResults.tr,
        onTap: () => controller.navigateToSurveyResult(),
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icTeacherContact,
        onTap: () => controller.navigateToTeacherContact(),
        title: LocaleKeys.titleTeacherContact.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icBrifecaseTick,
        onTap: () => controller.navigateToOneGate(),
        title: LocaleKeys.oneStopService.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.iconsEmailView32,
        onTap: () => controller.navigateToEmail(),
        title: LocaleKeys.email.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icReceiptDisscount,
        onTap: () => controller.navigateToClassSurveyResult(),
        title: LocaleKeys.classSurveyResults.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icons8Training28,
        onTap: () => controller.navigateToListClassManagerTitle(),
        title: LocaleKeys.listClassManagerTitle.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icTaskSquare,
        onTap: () => controller.navigateToStuCheckinManager(),
        title: LocaleKeys.studentManager.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.iconsDocument32,
        onTap: () => controller.navigateToExecutiveDocuments(),
        title: LocaleKeys.executiveDocuments.tr,
      ),
      _buildUtilityButton(
        context: context,
        assetImage: Assets.images.icons8Request28,
        onTap: () => controller.navigateToSendRequest(),
        title: LocaleKeys.sendRequest.tr,
      ),
    ];
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        margin: isShowAll! == true
            ? const EdgeInsets.only(left: 10)
            : const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isShowAll == false)
              SizedBox(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mainUtilitiesItemList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: mainUtilitiesItemList[index],
                      );
                    }),
              ),
            if (isShowAll == true)
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: MediaQuery.of(context).size.height - 250,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children:
                      List.generate(mainUtilitiesItemList.length, (index) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: mainUtilitiesItemList[index]),
                    );
                  }),
                ),
              ),
          ],
        ),
      ),
    );
  }

  showFeatureIsDeveloping() {
    Fimber.d("showFeatureIsDeveloping()");
    EasyLoading.instance.userInteractions = true;
    EasyLoading.showToast(LocaleKeys.featureIsDeveloping.tr,
        duration: ToastDuration.LENGTH_SHORT,
        toastPosition: EasyLoadingToastPosition.bottom,
        maskType: EasyLoadingMaskType.clear);
  }

  Widget _buildActivityItem(
    BuildContext context, {
    bool? isRecentActivity = false,
    HomeNewActivity? newActivity,
    HomeRecentActitvity? recentActivity,
    HomeOutstandingActitvity? outstandingActivity,
  }) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 155,
            child: ClipRRect(
              borderRadius: isRecentActivity == true
                  ? BorderRadius.circular(10)
                  : BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: isRecentActivity == true
                    ? recentActivity?.icon ?? ''
                    : newActivity?.icon ?? '',
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Assets.images.icEmptyWalletChange.image(
                        fit: BoxFit.cover,
                        color: context.themeExtensions.textGrey),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isRecentActivity == true
                      ? recentActivity?.title ?? ''
                      : newActivity?.title ?? '',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black),
                  maxLines: 2,
                ),
                const SizedBox(height: 20),
                Text(
                  isRecentActivity == true
                      ? recentActivity?.content ?? ''
                      : newActivity?.content ?? '',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500, fontSize: 13),
                  maxLines: 3,
                )
              ],
            ),
          ),
          // isLast == false
          //     ? const SizedBox(height: 18)
          //     : const SizedBox.shrink(),
          // isLast == false
          //     ? Container(
          //         height: 1,
          //         color: context.themeExtensions.chineseBlack.withOpacity(0.1))
          //     : const SizedBox.shrink()
        ],
      ),
    );
  }

  Widget _buildRecentActivityItem(
    BuildContext context, {
    HomeRecentActitvity? recentActivity,
  }) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 155,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: recentActivity?.icon ?? '',
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Assets.images.icEmptyWalletChange.image(
                        fit: BoxFit.fitWidth,
                        color: context.themeExtensions.textGrey),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recentActivity?.title ?? '',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black),
                  maxLines: 2,
                ),
                const SizedBox(height: 20),
                Text(
                  recentActivity?.content ?? '',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500, fontSize: 13),
                  maxLines: 3,
                )
              ],
            ),
          ),
          // isLast == false
          //     ? const SizedBox(height: 18)
          //     : const SizedBox.shrink(),
          // isLast == false
          //     ? Container(
          //         height: 1,
          //         color: context.themeExtensions.chineseBlack.withOpacity(0.1))
          //     : const SizedBox.shrink()
        ],
      ),
    );
  }

  Widget _buildUtilityButton(
      {required BuildContext context,
      AssetGenImage? assetImage,
      String? title,
      GestureTapCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: assetImage != null
                ? const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle)
                : null,
            child: assetImage?.image(
                fit: BoxFit.cover,
                // filterQuality: FilterQuality.none,
                color: context.themeExtensions.secondGreen),
          ),
          const SizedBox(height: 8),
          AutoSizeText(title ?? '',
              maxLines: 2,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis)
        ],
      ),
    );
  }

  //
  Widget _buildTodayTasksOverview(BuildContext context) {
    return ForceDraggableWidget(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Obx(() => Container(
              width: double.infinity,
              height: controller.hasNoTasks.value ? 146 : 170,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: context.themeExtensions.white,
              ),
              child: controller.recentTasks.isEmpty
                  ? _buildNoTasksOverview(context)
                  : _buildTodayTasks(context),
              //controller.hasNoTasks.value
           // _buildNoTasksOverview(context)
            )),
      ),
    );
  }

  Widget? _buildNoTasksOverview(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 32),
        Assets.images.icNoTasks.image(fit: BoxFit.cover),
        const SizedBox(width: 25),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(LocaleKeys.restNow.tr,
                style: context.themeExtensions.heading2
                    .copyWith(color: context.themeExtensions.textColor)),
            const SizedBox(height: 11),
            AutoSizeText(LocaleKeys.noTasksMessage.tr,
                style: context.themeExtensions.paragraph
                    .copyWith(color: context.themeExtensions.textGrey))
          ],
        )),
        const SizedBox(width: 25)
      ],
    );
  }

  Widget? _buildTodayTasks(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(LocaleKeys.todayTasks.tr,
                          style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      AutoSizeText(
                          "${Jiffy().EEEE}, ${Jiffy().date}/${Jiffy().month}/${Jiffy().year}",
                          style: GoogleFonts.openSans(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w500,
                              fontSize: 14)),
                      const SizedBox(height: 7),
                    ],
                  ),
                  InkWell(
                    onTap: () => controller.navigateToTasksCalendar(),
                    child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Assets.images.arrowRight.svg(fit: BoxFit.cover)),
                  )
                ],
              ),
              Stack(
                children: [
                  Obx(() => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var task in controller.recentTasks)
                            _buildLesson(
                              context: context,
                              isCurrent: true,
                              subject: task?.content,
                              time: task?.tasktime,
                              index: controller.recentTasks.indexOf(task),
                            ),
                        ],
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 19, horizontal: 3),
                        child: DottedLine(
                          dashLength: 5,
                          dashGapLength: 3,
                          lineThickness: 1,
                          dashColor: context.themeExtensions.chineseSilver,
                          direction: Axis.vertical,
                          lineLength: 55,
                        ),
                      ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLesson({
    required BuildContext context,
    String? time,
    String? subject,
    bool? isCurrent = false,
    int? index = 0,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        index != 0 ? const SizedBox(height: 13) : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.icDot.svg(
                fit: BoxFit.cover,
                color: isCurrent == true
                    ? context.themeExtensions.red
                    : context.themeExtensions.subYellow),
            const SizedBox(width: 7),
            AutoSizeText(time ?? "10h-11h",
                style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, top: 3, right: 13),
          child: AutoSizeText(subject ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 13)),
        )
      ],
    );
  }

  Widget _retrieveMainFeaturesByPermission(
      BuildContext context, UserPermission permission) {
    if (permission == UserPermission.teacher) {
      return _buildTeacherMainFeatures(context);
    }
    if (permission == UserPermission.student) {
      return _buildStudentMainFeatures(context);
    }
    return const SizedBox.shrink();
  }

  Widget _buildTeacherMainFeatures(BuildContext context,
      {bool? isShowAll = false}) {
    List<Widget> eduItemList = [
      // kiem dinh
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToAccreditation(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/68.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.accreditation.tr,
      // ),

      // minh chung
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToProof(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/63.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.proof.tr,
      // ),

      // LMS
      _buildListFeatureItem(
        context,
         onTap: () => controller.navigateToELearning(),
       // onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/62.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.courseManagement.tr,
      ),

      // Duyet tin chi
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToCreditApproval(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/67.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.creditApproval.tr,
      // ),

      // Diem Thi
      // _buildListFeatureItem(
      //   context,
      //   //  onTap: () => controller.navigateToTestPoint(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/61.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.test_point.tr,
      // ),

      // Diem qua trinh
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToPointProcess(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/60.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.pointProcess.tr,
      // ),

      // De cuong
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToOutlineDetail(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/58.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.outlineDetail.tr,
      // ),

      // lich giang day
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToTeachingSchedule(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/59.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.teachingSchedule.tr,
      // ),

      // Khối lượng giảng dạy
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToTeachingHour(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/26.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.teaching_hour.tr,
      // ),
      //20
      //abc
      // _buildListFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToListClassManagerTitle(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //
      //
      //   // icon: Icon(
      //   //   Icons.file_copy_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.red,
      //   //   size: 30,
      //   // ),
      //   image: const Image(image: AssetImage('assets/Icon/21.png',), fit: BoxFit.cover, ),
      //   title: LocaleKeys.executiveDocuments.tr,
      // ),

      //21
      // _buildListFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToSendRequest(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(image: AssetImage('assets/Icon/07.png',), fit: BoxFit.cover, ),
      //   title: LocaleKeys.sendRequest.tr,
      // ),
      // Lich thanh tra
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.red,
      //   ),
      //   // icon: Icon(
      //   //   Icons.calendar_today,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/48.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.inspectionSchedule.tr,
      //   // onTap: () => controller.navigateToInspectionSchedule(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // dang ky day thay
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.red,
      //   ),
      //   // icon: Icon(
      //   //   Icons.calendar_today,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/30.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.teachingReplace.tr,
      //   //onTap: () => controller.navigateToTeachingReplace(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // Duyet thi lai
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.red,
      //   ),
      //   // icon: Icon(
      //   //   Icons.calendar_today,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/45.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.reExamApproval.tr,
      //   // onTap: () => controller.navigateToReExamApproval(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // Quan ly bai giang
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.red,
      //   ),
      //   // icon: Icon(
      //   //   Icons.calendar_today,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/31.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.lectureManagement.tr,
      //   //onTap: () => controller.navigateToExamSchedule(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // Lịch coi thi
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.red,
      //   ),
      //   // icon: Icon(
      //   //   Icons.calendar_today,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/32.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.examSchedule.tr,
      //   // onTap: () => controller.navigateToExamSchedule(),
      //   onTap: () => _showNotificationDialog(context),
      // ),

      //1 Lich cong tac
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.red,
        ),
        // icon: Icon(
        //   Icons.calendar_today,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/11.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.tasksCalendar.tr,
        // onTap: () => controller.navigateToScheduleTime(),
        onTap: () => _showNotificationDialog(context),
      ),
      //10 Lich lam viec
      // _buildListFeatureItem(
      //   context,
      //   onTap: () {
      //     _showNotificationDialog(context);
      //   },
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.bookmarks,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/12.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.teacherScheduleTimeTitle.tr,
      // ),

      //13 khao sat su kien
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToSurveyResult(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.filter_alt_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/09.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.serveyResults.tr,
      ),
      //2 Chuong trinh dao tao
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/03.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.teachingProgram.tr,
        onTap: () => controller.navigateToEducationProgram(),
      ),
      // ket qua hoc tap
      // _buildMainFeatureItem(
      //   context,
      //   background: Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
      //   image: Image(
      //     image: AssetImage(
      //       'assets/Icon/74.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.learningResults.tr,
      //   onTap: () => controller.navigateToLearningResults(),
      // ),

      //4
      // _buildListFeatureItem(
      //   context,
      //   background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.laptop_mac_sharp,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/08.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.eLearning.tr,
      //   onTap: () => controller.navigateToELearning(),
      //   //onTap: () => showNotificationDialog(context),
      // ),
    ];
    List<Widget> trackerList = [
      //17 danh gia lop hoc
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToClassSurveyResult(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.class_,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/05.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.classSurveyResults.tr,
      ),
      //18 quan ly lop hoc
      _buildListFeatureItem(
        context,
        // onTap: () => controller.navigateToListClassManagerTitle(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.flight_class_rounded,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/15.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.listClassManagerTitle.tr,
      ),
      //19 quan ly sinh vien
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToStuCheckinManager(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.fact_check_outlined,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/16.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.studentManager.tr,
      ),

      //5 kiem ke tai san

      //8
      // _buildListFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToDocumentManagement(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.bookmarks,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(image: AssetImage('assets/Icon/17.png',), fit: BoxFit.cover, ),
      //   title: 'Theo dõi văn bản',
      // ),
    ];
    List<Widget> timeSchedule = [
      // // Cong viec
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/49.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.workResolve.tr,
      //   onTap: () => _showNotificationDialog(context),
      //   // onTap: () => controller.navigateToTextAway(),
      // ),

      // // van ban di
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/50.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.textAway.tr,
      //   // onTap: () => controller.navigateToTextAway(),
      //   onTap: () => _showNotificationDialog(context),
      // ),

      // // van ban den
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/51.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.textIncome.tr,
      //   onTap: () => _showNotificationDialog(context),
      //   //onTap: () => controller.navigateToTextIncome(),
      // ),

      // // Lich khac
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/52.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.anotherSchedule.tr,
      //   // onTap: () => controller.navigateToAnotherSchedule(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // Phu cap
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/53.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.allowance.tr,
      //   // onTap: () => controller.navigateToAllowance(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // BHXH
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/54.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.socialInsurance.tr,
      //   //onTap: () => controller.navigateToSocialInsurance(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      // luong theo thang
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/55.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.salaryInfo.tr,
      //   //onTap: () => controller.navigateToSalaryInfo(),
      //   onTap: () => _showNotificationDialog(context),
      // ),

      // Qua trinh dao tao
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/56.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.trainingProcess.tr,
      //   //onTap: () => controller.navigateToTrainingProcess(),
      //   onTap: () => _showNotificationDialog(context),
      // ),

      //2 Qua trinh cong tac
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/79.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.workingProcess.tr,
        onTap: () => controller.navigateToWorkingProcess(),
      ),

      //3 Khen thuong , ky luat
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        //onTap: () => _showNotificationDialog(context),
        background: Container(
          color: Colors.orange,
        ),
        // icon: Icon(
        //   Icons.bookmarks,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/10.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      // đăng ký xe công
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToVehicleRegistration(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/29.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.vehicle_registration.tr,
      // ),
      // đăng ký phòng học
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToRoomRegistration(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/28.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.room_registration.tr,
      // ),

      // Chấm công
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToAttendance(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/22.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.attendance.tr,
      // ),
      // luong-BHXH
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToSalary(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/24.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.salary.tr,
      ),
      // Bồi dưỡng
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToTraining(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/25.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.training.tr,
      // ),

      //15 dich vu mot cua
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToOneGate(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.home_repair_service_rounded,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/01.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.oneStopService.tr,
      ),
    ];

    List<Widget> propertyTool = [
      // tài sản cá nhân
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToRepairRequest(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/47.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.repairRequest.tr,
      // ),
      // tài sản cá nhân
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToPersonalProperty(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/33.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.personalProperty.tr,
      // ),

      // nhu cầu mua sắm
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToShoppingNeed(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/34.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.shoppingNeed.tr,
      // ),

      // khấu hao tài sản
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToApproveRepair(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/35.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.approveRepair.tr,
      // ),

      //kiem ke tai san
      _buildListFeatureItem(
        context,
        background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.qr_code_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/19.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.checkInDevice.tr,
        onTap: () => controller.navigateToCheckInDevice(),
        //onTap: () => showNotificationDialog(context),
      ),

      //tra cuu tai san
      _buildListFeatureItem(
        context,
        background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.qr_code_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/69.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.propertyLookUp.tr,
        onTap: () => controller.navigateToPropertyLookUp(),
        //onTap: () => showNotificationDialog(context),
      ),
    ];

    List<Widget> learnerFinance = [
      // danh sách công nợ
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToDebtList(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.calendar_today_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/36.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.debtList.tr,
      ),
      // chi tiết thu chi
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToFinancialDetail(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.calendar_today_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/37.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.financialDetail.tr,
      ),
    ];

    List<Widget> learnerProfile = [
      // Lop tin chi
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToCreditClass(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/65.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.creditClass.tr,
      // ),

      // Lop hanh chinh
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToAdministrativeClass(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/66.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.administrativeClass.tr,
      // ),
      // Quan ly danh sach sinh vien
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToStuListManagement(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/46.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.stuListManagement.tr,
      // ),
      // Đánh giá điểm rèn luyện
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToEvaluateTraining(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/38.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.evaluateTrainingPoint.tr,
      // ),
      // Danh sách học bổng
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToScholarshipList(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/39.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.scholarshipList.tr,
      // ),
      // Cố vấn học tập
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToConsultant(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/40.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.consultant.tr,
      // ),

      // Cán sự lớp
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToClassOfficial(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/41.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.classOfficial.tr,
      // ),
      // điểm danh học viên
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToAttendanceStu(),
        //onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/23.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.attendance_stu.tr,
      ),
    ];

    List<Widget> elearningFeature = [
      //16
      // _buildListFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToEmail(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.attach_email_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/06.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.email.tr,
      // ),
    ];

    List<Widget> sciencePartner = [
    // hoi thao
    _buildListFeatureItem(
    context,
      onTap: () => controller.navigateToSeminar(),
    background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
    // icon: Icon(
    //   Icons.science_outlined,
    //   //color: const Color(0xFF4da543).withOpacity(0.75),
    //   color: Colors.white,
    //   size: 30,
    // ),
    image: const Image(
    image: AssetImage(
    'assets/Icon/77.png',
    ),
    fit: BoxFit.cover,
    ),
    title: LocaleKeys.seminar.tr,
    ),
      // // De tai thanh vien
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToMemberTopic(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.science_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/70.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.memberTopic.tr,
      // ),
      // de tai khoa hoc
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToScienceTopic(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.science_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/71.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.scienceTopic.tr,
      // ),
      // bao quoc te
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToInternationalNews(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.science_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/72.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.internationalNews.tr,
      // ),

      // bao trong nuoc
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToDomesticNews(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.science_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/73.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.domesticNews.tr,
      // ),

      //11 Nghien cuu khoa hoc
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToScientificResearch(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.science_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/14.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.scienceStudy.tr,
      ),
      // theo doi NCKH
      // _buildListFeatureItem(
      //   context,
      //   //  onTap: () => controller.navigateToFollowScientificResearch(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.quick_contacts_dialer_sharp,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/42.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.followScientificResearch.tr,
      // ),

      // Đoàn đến - đoàn đi
      // _buildListFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToGroupArrive(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.quick_contacts_dialer_sharp,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/43.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.groupArrive.tr,
      // ),
      // đối tác - dự án
      // _buildListFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToPartnerProject(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.quick_contacts_dialer_sharp,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/44.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.partnerProject.tr,
      // ),
    ];

    List<Widget> checkAttendance = [
      // Kê khai công việc
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToJobDeclaration(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.send_to_mobile,
      //   //  // color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/27.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.job_declaration.tr,
      // ),
      //12 Bao cao tien do
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToReportTask(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.calendar_today_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/02.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.reportTask.tr,
      ),
      //20 van ban dieu hanh
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToDocumentManagement(),
        //onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.file_copy_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/21.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.docsManagement.tr,
      ),
      //9 Thong ke
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToStatistical(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.bookmarks,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/20.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.statistical.tr,
      ),
      //7 Theo doi tien do
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToTrackProgress(),
        //onTap: () => showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.bookmarks,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/18.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.trackProgress.tr,
      ),
      //21 gui de xuat
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToSendRequest(),
        //onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/07.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.sendRequest.tr,
      ),
      //6 Ban do truong hoc
      _buildListFeatureItem(
        context,
        onTap: () {
          if (Platform.isIOS) {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.inAppWebView,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          } else {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.externalNonBrowserApplication,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          }
        },
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.maps_home_work,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/13.png',
          ),
          fit: BoxFit.cover,
        ),
        title: 'Bản đồ trường học',
      ),

//14 danh ba giao vien
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToTeacherContact(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.quick_contacts_dialer_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/04.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.titleTeacherContact.tr,
      ),
    ];


    //menu chinh GV
    List<Widget> mainFeatureItemList = [
      //11 Nghien cuu khoa hoc
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToScientificResearch(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.science_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/14.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.scienceStudy.tr,
      ),
      //15 dich vu mot cua
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToOneGate(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.home_repair_service_rounded,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/01.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.oneStopService.tr,
      ),

      //diemdanh1
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToAttendanceStu(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/23.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.attendance_stu.tr,
      ),
      // hoi thao
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToSeminar(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.science_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/77.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.seminar.tr,
      ),
      //1 DANG FIX
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.red,
        ),
        // icon: Icon(
        //   Icons.calendar_today,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: Image(
          image: AssetImage(
            'assets/Icon/11.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.tasksCalendar.tr,
        onTap: () => controller.navigateToScheduleTime(),
        //onTap: () => _showNotificationDialog(context),
      ),
      //2
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/03.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.teachingProgram.tr,
        onTap: () => controller.navigateToEducationProgram(),
      ),
      //3
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Container(
          color: Colors.orange,
        ),
        // icon: Icon(
        //   Icons.bookmarks,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/10.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      //2 Qua trinh cong tac
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/79.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.workingProcess.tr,
        onTap: () => controller.navigateToWorkingProcess(),
      ),
      _buildListFeatureItem(
        context,
        background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.qr_code_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/19.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.checkInDevice.tr,
        onTap: () => controller.navigateToCheckInDevice(),
        //onTap: () => showNotificationDialog(context),
      ),
      //6
      _buildListFeatureItem(
        context,
        onTap: () {
          if (Platform.isIOS) {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.inAppWebView,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          } else {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.externalNonBrowserApplication,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          }
        },
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.maps_home_work,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/13.png',
          ),
          fit: BoxFit.cover,
        ),
        title: 'Bản đồ trường học',
      ),
      //7
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToTrackProgress(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.bookmarks,
      //    // color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: LocaleKeys.trackProgress.tr,
      // ),
      //8
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToDocumentManagement(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.bookmarks,
      //     //color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: 'Theo dõi văn bản',
      // ),
      //9
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToStatistical(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.bookmarks,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/20.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.statistical.tr,
      ),
      //tra cuu tai san
      _buildListFeatureItem(
        context,
        background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.qr_code_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/69.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.propertyLookUp.tr,
        onTap: () => controller.navigateToPropertyLookUp(),
        //onTap: () => showNotificationDialog(context),
      ),
      //11
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToScientificResearch(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.science_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/14.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.scienceStudy.tr,
      ),
      //12
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToReportTask(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.calendar_today_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/02.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.reportTask.tr,
      ),
      //13
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToSurveyResult(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.filter_alt_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/09.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.serveyResults.tr,
      ),
      //14
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToTeacherContact(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.quick_contacts_dialer_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/04.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.titleTeacherContact.tr,
      ),
      // //15
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToOneGate(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.home_repair_service_rounded,
      //     // color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: LocaleKeys.oneStopService.tr,
      // ),
      //16
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToEmail(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.attach_email_outlined,
      //     //color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: LocaleKeys.email.tr,
      // ),
      //17
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToClassSurveyResult(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.class_,
      //     // color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: LocaleKeys.classSurveyResults.tr,
      // ),
      //18
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToListClassManagerTitle(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.flight_class_rounded,
      //     // color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: LocaleKeys.listClassManagerTitle.tr,
      // ),
      //19
      // _buildMainFeatureItem(
      //   context,
      //   onTap: () => controller.navigateToStuCheckinManager(),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   icon: const Icon(
      //     Icons.fact_check_outlined,
      //     //color: const Color(0xFF4da543).withOpacity(0.75),
      //     color: Colors.green,
      //     size: 30,
      //   ),
      //   title: LocaleKeys.studentManager.tr,
      // ),
    ];
    List<Widget> blankSpace = [
      Container(
        height: 10,
      ),
    ];

    final Map<String, List<Widget>> mapOfWidgets = {
      'Hành chính - Tổng hợp': timeSchedule,
      'Đào tạo - Khảo thí': eduItemList,
      'Hồ sơ người học': learnerProfile,
      // 'Tài chính người học': learnerFinance,
      'Tài sản - Công cụ': propertyTool,
      'Khoa học - Hợp tác quốc tế - Tạp chí': sciencePartner,
      // 'Lớp học': trackerList,
      'Khác': checkAttendance,
      '': blankSpace,
    };

    return isShowAll == true
        ? Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: mapOfWidgets.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    final title = mapOfWidgets.keys.toList()[index];
                    final widgets = mapOfWidgets.values.toList()[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(title,
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10.h,
                            mainAxisSpacing: 15.w,
                          ),
                          itemCount: widgets.length,
                          itemBuilder: (BuildContext context, int innerIndex) {
                            return Column(
                              children: [
                                widgets[innerIndex],
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          )

        // SizedBox(
        //    height: MediaQuery.of(context).size.height ,
        //    child: GridView.count(
        //      crossAxisCount: 3,
        //     childAspectRatio: 1.2 / 1,
        //      children: List.generate(mainFeatureItemList.length, (index) {
        //        return Container(
        //            decoration: BoxDecoration(
        //              borderRadius: BorderRadius.circular(20),
        //            ),
        //            child: mainFeatureItemList[index]);
        //      }),
        //    ),
        //  )
        : Column(
            children: [
              SizedBox(
                height: 225,
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: controller.pageTeacherController,
                        //itemCount: (mainFeatureItemList.length / 6).ceil(),
                        itemCount: 2,
                        onPageChanged: (int page) {
                          controller.currentPage.value = page;
                        },
                        itemBuilder: (context, pageIndex) {
                          int startIndex = pageIndex * 8;
                          int endIndex = (pageIndex + 1) * 8;
                          endIndex = endIndex < mainFeatureItemList.length
                              ? endIndex
                              : mainFeatureItemList.length;
                          List<Widget> items =
                              mainFeatureItemList.sublist(startIndex, endIndex);
                          return Container(
                            margin: const EdgeInsets.only(
                              top: 0,
                            ),
                            child: GridView.count(
                              crossAxisCount: 4,
                              crossAxisSpacing: 5.h,
                              mainAxisSpacing: 20.w,
                              // childAspectRatio: 2 / 1,
                              physics: const NeverScrollableScrollPhysics(),
                              children: items.map((item) {
                                return Column(
                                  children: [
                                    Expanded(child: item),
                                  ],
                                );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  (mainFeatureItemList.length / 10).ceil(),
                  (index) => Obx(() => Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.themeExtensions.mainGreen.withOpacity(
                            controller.currentPage.value == index ? 0.9 : 0.3,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          );
  }

  Future<void> _showNotificationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: const Text('Chức năng đang được cập nhật'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Đồng ý'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildStudentMainFeatures(BuildContext context,
      {bool? isShowAll = false}) {

    //menu sv
    List<Widget> mainFeatureStudentItemList = [
      _buildListFeatureItem(
        context,
        background: Assets.images.homeTopLeftButBg.image(fit: BoxFit.cover),
        image: Image(
          image: AssetImage(
            'assets/Icon/11.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.learningSchedule.tr,
        onTap: () => controller.navigateToScheduleTime(),
      ),
      _buildListFeatureItem(
        context,
        background: Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
        image: Image(
          image: AssetImage(
            'assets/Icon/74.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.learningResults.tr,
        onTap: () => controller.navigateToLearningResults(),
      ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToOneGate(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.home_repair_service_rounded,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/01.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.oneStopService.tr,
      ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        // onTap: () => _showNotificationDialog(context),
        background: Container(
          color: Colors.orange,
        ),
        // icon: Icon(
        //   Icons.bookmarks,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/10.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),

      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToCreditClass(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/65.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.creditClass.tr,
      // ),
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToEvaluateTraining(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/38.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.evaluateTrainingPoint.tr,
      // ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToScientificResearch(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.science_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/14.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.scienceStudy.tr,
      ),
      _buildListFeatureItem(
        context,
        onTap: () {
          if (Platform.isIOS) {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.inAppWebView,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          } else {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.externalNonBrowserApplication,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          }
        },
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.maps_home_work,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/13.png',
          ),
          fit: BoxFit.cover,
        ),
        title: 'Bản đồ trường học',
      ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToTeacherContact(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.quick_contacts_dialer_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/04.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.titleTeacherContact.tr,
      ),
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/54.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.socialInsurance.tr,
      //   //onTap: () => controller.navigateToSocialInsurance(),
      //   onTap: () => _showNotificationDialog(context),
      // ),

      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToScholarshipList(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/39.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.scholarshipList.tr,
      // ),
      // Quan ly danh sach sinh vien
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToStuListManagement(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/46.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.stuListManagement.tr,
      // ),

      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToAttendanceStu(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/23.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.attendance_stu.tr,
      ),
      //2 Chuong trinh dao tao
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/03.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.teachingProgram.tr,
        onTap: () => controller.navigateToEducationProgram(),
      ),

      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/76.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.finance.tr,
        onTap: () => controller.navigateToFinanceOverview(),
      ),

      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToSurveyResult(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.filter_alt_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/09.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.serveyResults.tr,
      ),
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.red,
        ),
        // icon: Icon(
        //   Icons.calendar_today,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/75.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.testingPlan.tr,
        onTap: () => controller.navigateToTestingPlaning(),
        //  onTap: () => _showNotificationDialog(context),
      ),

    ];
//student1
    List<Widget> administrative = [
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/76.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.finance.tr,
        onTap: () => controller.navigateToFinanceOverview(),
      ),
      //2 Chuong trinh dao tao
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.green,
        ),
        // icon: Icon(
        //   Icons.train,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/03.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.teachingProgram.tr,
        onTap: () => controller.navigateToEducationProgram(),
      ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToOneGate(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.home_repair_service_rounded,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/01.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.oneStopService.tr,
      ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        // onTap: () => _showNotificationDialog(context),
        background: Container(
          color: Colors.orange,
        ),
        // icon: Icon(
        //   Icons.bookmarks,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/10.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      //BHXH1
      // _buildListFeatureItem(
      //   context,
      //   background: Container(
      //     color: Colors.green,
      //   ),
      //   // icon: Icon(
      //   //   Icons.train,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/54.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.socialInsurance.tr,
      //   //onTap: () => controller.navigateToSocialInsurance(),
      //   onTap: () => _showNotificationDialog(context),
      // ),
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToSurveyResult(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.filter_alt_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/09.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.serveyResults.tr,
      ),
    ];
    List<Widget> eduStudentItemList = [
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.red,
        ),
        // icon: Icon(
        //   Icons.calendar_today,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/75.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.testingPlan.tr,
         onTap: () => controller.navigateToTestingPlaning(),
      //  onTap: () => _showNotificationDialog(context),
      ),
      //lich hoc
      _buildListFeatureItem(
        context,
        background: Container(
          color: Colors.red,
        ),
        // icon: Icon(
        //   Icons.calendar_today,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/11.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.otherScheduleTimeTitle.tr,
         onTap: () => controller.navigateToScheduleTime(),
        //onTap: () => _showNotificationDialog(context),
      ),
      //ketquahoctap1
      _buildMainFeatureItem(
        context,
        background: Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
        image: Image(
          image: AssetImage(
            'assets/Icon/74.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.learningResults.tr,
        onTap: () => controller.navigateToLearningResults(),
      ),


    ];
    List<Widget> studentProfile = [
      //loptinchi1
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToCreditClass(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/65.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.creditClass.tr,
      // ),
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToEvaluateTraining(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/38.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.evaluateTrainingPoint.tr,
      // ),
      // Danh sách học bổng
      // _buildListFeatureItem(
      //   context,
      //   //onTap: () => controller.navigateToScholarshipList(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/39.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.scholarshipList.tr,
      // ),
      // Quan ly danh sach sinh vien
      // _buildListFeatureItem(
      //   context,
      //   // onTap: () => controller.navigateToStuListManagement(),
      //   onTap: () => _showNotificationDialog(context),
      //   background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
      //   // icon: Icon(
      //   //   Icons.calendar_today_outlined,
      //   //   //color: const Color(0xFF4da543).withOpacity(0.75),
      //   //   color: Colors.white,
      //   //   size: 30,
      //   // ),
      //   image: const Image(
      //     image: AssetImage(
      //       'assets/Icon/46.png',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   title: LocaleKeys.stuListManagement.tr,
      // ),
      //diemdanh1
      _buildListFeatureItem(
        context,
        //onTap: () => controller.navigateToAttendanceStu(),
        onTap: () => _showNotificationDialog(context),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.send_to_mobile,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/23.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.attendance_stu.tr,
      ),
    ];
    List<Widget> scientificStudent = [
      //NCKH1
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToScientificResearch(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.science_outlined,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/14.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.scienceStudy.tr,
      ),
    ];
    List<Widget> otherStudent = [
      _buildListFeatureItem(
        context,
        onTap: () {
          if (Platform.isIOS) {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.inAppWebView,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          } else {
            // launchUrl(
            //   Uri.parse('https://viettech.itch.io/map3d'),
            //   mode: LaunchMode.externalNonBrowserApplication,
            // );
            Fimber.d("navigateToMapWevView()");
            Get.toNamed(Routes.MAP_WEBVIEW);
          }
        },
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.maps_home_work,
        //  // color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/13.png',
          ),
          fit: BoxFit.cover,
        ),
        title: 'Bản đồ trường học',
      ),

//14 danh ba giao vien
      _buildListFeatureItem(
        context,
        onTap: () => controller.navigateToTeacherContact(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        // icon: Icon(
        //   Icons.quick_contacts_dialer_sharp,
        //   //color: const Color(0xFF4da543).withOpacity(0.75),
        //   color: Colors.white,
        //   size: 30,
        // ),
        image: const Image(
          image: AssetImage(
            'assets/Icon/04.png',
          ),
          fit: BoxFit.cover,
        ),
        title: LocaleKeys.titleTeacherContact.tr,
      ),
    ];

    List<Widget> blankSpaceSv = [
    Container(
      height: 10,
    ),];

    final Map<String, List<Widget>> mapOfStudentWidgets = {
      'Hành chính - Tổng hợp': administrative,
      'Đào tạo - Khảo thí': eduStudentItemList,
      'Hồ sơ người học': studentProfile,
      'Khoa học - Hợp tác quốc tế - Tạp chí': scientificStudent,
      'Khác': otherStudent,
      '': blankSpaceSv,
    };
    return isShowAll == true
        ? Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: mapOfStudentWidgets.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    final title = mapOfStudentWidgets.keys.toList()[index];
                    final widgets = mapOfStudentWidgets.values.toList()[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(title,
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10.h,
                            mainAxisSpacing: 15.w,
                          ),
                          itemCount: widgets.length,
                          itemBuilder: (BuildContext context, int innerIndex) {
                            return Column(
                              children: [
                                widgets[innerIndex],
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          )

        // SizedBox(
        //    height: MediaQuery.of(context).size.height ,
        //    child: GridView.count(
        //      crossAxisCount: 3,
        //     childAspectRatio: 1.2 / 1,
        //      children: List.generate(mainFeatureItemList.length, (index) {
        //        return Container(
        //            decoration: BoxDecoration(
        //              borderRadius: BorderRadius.circular(20),
        //            ),
        //            child: mainFeatureItemList[index]);
        //      }),
        //    ),
        //  )
        : Column(
            children: [
              SizedBox(
                height: 225,
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: controller.pageTeacherController,
                        //itemCount: (mainFeatureItemList.length / 6).ceil(),
                        itemCount: 2,
                        onPageChanged: (int page) {
                          controller.currentPage.value = page;
                        },
                        itemBuilder: (context, pageIndex) {
                          int startIndex = pageIndex * 8;
                          int endIndex = (pageIndex + 1) * 8;
                          endIndex = endIndex < mainFeatureStudentItemList.length
                              ? endIndex
                              : mainFeatureStudentItemList.length;
                          List<Widget> items =
                          mainFeatureStudentItemList.sublist(startIndex, endIndex);
                          return Container(
                            margin: const EdgeInsets.only(
                              top: 0,
                            ),
                            child: GridView.count(
                              crossAxisCount: 4,
                              crossAxisSpacing: 8.h,
                              mainAxisSpacing: 20.w,
                              // childAspectRatio: 2 / 1,
                              physics: const NeverScrollableScrollPhysics(),
                              children: items.map((item) {
                                return Column(
                                  children: [
                                    Expanded(child: item),
                                  ],
                                );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  (mainFeatureStudentItemList.length / 10).ceil(),
                  (index) => Obx(() => Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.themeExtensions.mainGreen.withOpacity(
                            controller.currentPage.value == index ? 0.9 : 0.3,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          );
    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         _buildMainFeatureItem(
    //           context,
    //           background:
    //               Assets.images.homeTopLeftButBg.image(fit: BoxFit.cover),
    //           image: Image(
    //             image: AssetImage(
    //               'assets/Icon/11.png',
    //             ),
    //             fit: BoxFit.cover,
    //           ),
    //           title: LocaleKeys.learningSchedule.tr,
    //           onTap: () => controller.navigateToScheduleTime(),
    //         ),
    //         //assets/images/ic_teacher.svg
    //         const SizedBox(width: 6),
    //         _buildMainFeatureItem(
    //           context,
    //           background:
    //               Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
    //           image: Image(
    //             image: AssetImage(
    //               'assets/Icon/74.png',
    //             ),
    //             fit: BoxFit.cover,
    //           ),
    //           title: LocaleKeys.learningResults.tr,
    //           onTap: () => controller.navigateToLearningResults(),
    //         ),
    //       ],
    //     )
    //   ],
    // );
  }

  Widget _buildMainFeatureItem(
    BuildContext context, {
    Widget? background,
    Widget? image,
    String? title,
    GestureTapCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          // background ?? const SizedBox.shrink(),
          Container(
            // width: 120,
            // height: 120,
            // decoration: BoxDecoration(
            //   // gradient: LinearGradient(
            //   //   begin: Alignment.topLeft,
            //   //   end: Alignment.bottomRight,
            //   //   colors: [
            //   //     Color.fromRGBO(9, 116, 66, 1),
            //   //     Color.fromRGBO(98, 179, 69, 1),
            //   //   ],
            //   // ),
            //   color: Colors.white,
            //   borderRadius: BorderRadius.circular(30),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.black.withOpacity(0.2),
            //       spreadRadius: 2,
            //       blurRadius: 5,
            //       offset: const Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            // ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      // color: Colors.black12.withOpacity(0.04),

                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(child: image),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: 110,
                      child: Text(
                        title ?? '',
                        maxLines: 2,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                        textAlign: TextAlign.center,

                        // overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListFeatureItem(
    BuildContext context, {
    Widget? background,
    Widget? image,
    String? title,
    GestureTapCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          // background ?? const SizedBox.shrink(),
          Container(
            // width: 120,
            // height: 120,
            // decoration: BoxDecoration(
            //   // gradient: LinearGradient(
            //   //   begin: Alignment.topLeft,
            //   //   end: Alignment.bottomRight,
            //   //   colors: [
            //   //     Color.fromRGBO(9, 116, 66, 1),
            //   //     Color.fromRGBO(98, 179, 69, 1),
            //   //   ],
            //   // ),
            //   color: Colors.white,
            //   borderRadius: BorderRadius.circular(30),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.black.withOpacity(0.2),
            //       spreadRadius: 2,
            //       blurRadius: 5,
            //       offset: const Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            // ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      // color: Colors.black12.withOpacity(0.04),

                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(child: image),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: 110,
                      child: Text(
                        title ?? '',
                        maxLines: 2,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                        textAlign: TextAlign.center,

                        // overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBanners(BuildContext context) {
    return Column(children: [
      Obx(() => CarouselSlider(
            items: controller.lstBanners.mapList((element) => InkWell(
                  onTap: () => launchUrl(Uri.parse(element.href ?? '')),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(9)),
                        child: CachedNetworkImage(
                          imageUrl: element.imageurl ?? '',
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 123,
                          placeholder: (context, url) => const SizedBox(
                              width: 35,
                              height: 35,
                              child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => Assets
                              .images.ftuLogo
                              .image(width: 35, height: 35),
                        )),
                  ),
                )),
            carouselController: controller.bannerController,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                aspectRatio: 2,
                onPageChanged: (index, reason) =>
                    controller.currentBanner.value = index),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: controller.lstBanners.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => controller.bannerController?.animateToPage(entry.key),
            child: Obx(() => Container(
                  width: 6,
                  height: 6,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.themeExtensions.mainGreen.withOpacity(
                          controller.currentBanner.value == entry.key
                              ? 0.9
                              : 0.3)),
                )),
          );
        }).toList(),
      ),
    ]);
  }

  Widget _navigatorToTeacherMainFeatures(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // backgroundColor: LMSColors.white,
      appBar: AppBar(
          backgroundColor: LMSColors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: LMSColors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Để text tạm thời
              AutoSizeText(LocaleKeys.utilitiesInformation.tr,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
            ],
          )),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 2, right: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   margin: const EdgeInsets.fromLTRB(10, 5, 0, 20),
              //   child: AutoSizeText(LocaleKeys.utilitiesInformation.tr,
              //       style: const TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black87)),
              // ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child:
                    controller.userPermission?.value == UserPermission.teacher
                        ? _buildTeacherMainFeatures(context, isShowAll: true)
                        : _buildStudentMainFeatures(context, isShowAll: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showNotificationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: const Text('Chức năng đang được cập nhật'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Đồng ý'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
