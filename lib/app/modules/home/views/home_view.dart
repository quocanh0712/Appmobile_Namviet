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
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/binding_creator.dart';
import 'package:ftu_lms/app/modules/home/bindings/home_binding.dart';
import 'package:ftu_lms/app/modules/utils/disable_scroll_glow_behavior.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_outstanding_actitvity.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_recent_actitvity.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../styles/theme_extensions.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../../dashboard/models/bot_nav_items.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseBindingCreatorView<HomeBinding, HomeController> {
  HomeView(
      {Key? key,
      required BindingCreator<HomeBinding>? bindingCreator,
      this.pageController})
      : super(key: key, bindingCreator: bindingCreator);
  final PageController? pageController;
  final DashboardController dashboardController =
      Get.put(DashboardController(), permanent: false);

  @override
  Widget? onCreateViews(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: Get.height - 130,
      minHeight: Get.height - 260,
      parallaxEnabled: false,
      color: context.themeExtensions.transparent,
      boxShadow: [
        BoxShadow(blurRadius: 0, color: context.themeExtensions.transparent)
      ],
      body: Scaffold(
        body: Stack(
          children: [
            Assets.images.universityBuilding
                .image(width: double.infinity, fit: BoxFit.cover),
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
                              GestureDetector(
                                onTap: () => controller.navigateToProfile(),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg'),
                                      fit: BoxFit.cover,
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
                                      style: context.themeExtensions.subTex
                                          .copyWith(
                                              color:
                                                  context.themeExtensions.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))),
                                  const SizedBox(height: 3),
                                  Obx(() => AutoSizeText(
                                      "${controller.userObject.value?.username}",
                                      // controller.username.value,
                                      style: context.themeExtensions.subTex
                                          .copyWith(
                                        color: context.themeExtensions.white,
                                      ))),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                              onTap: () {
                                pageController?.animateToPage(
                                    notificationTabIndex,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut);
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
                    Obx(() => Visibility(
                          visible: true,
                          child: Image.asset(controller.imagePath.value,
                              height: 68, width: 68, fit: BoxFit.cover),
                        )),
                    const SizedBox(height: 13),
                    Obx(() => AutoSizeText(controller.title.value,
                        style: context.themeExtensions.heading3
                            .copyWith(color: context.themeExtensions.white))),
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
                          _retrieveUtilitiesFeaturesByUser(context),

                          ///show recent activity
                          _buildRecentActivities(context),

                          ///show outstanding activity
                          _buildOutstandingActivities(context),
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
            padding: const EdgeInsets.only(
                left: 20, top: 20, right: 20),
            child: Text(LocaleKeys.task.tr,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
        ),
        const SizedBox(height: 20),
        Obx(() => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _retrieveMainFeaturesByPermission(context,
                controller.userPermission?.value ?? UserPermission.none))),
        const SizedBox(height: 15),
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
        InkWell(
          onTap: () => controller.navigateToUtilites(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(LocaleKeys.utilities.tr,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87)),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => _navigatorToAllUtilities(context),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                LocaleKeys.recentActivities.tr,
                style: context.themeExtensions.paragraphSemiBold
                    .copyWith(color: context.themeExtensions.textColor),
              ),
              AutoSizeText(
                LocaleKeys.viewMore.tr,
                style: context.themeExtensions.subTex
                    .copyWith(color: context.themeExtensions.mainGreen),
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
                return SizedBox(
                    width: 300,
                    child: _buildActivityItem(context,
                        recentActivity: controller.lstRecentActivities[index]));
              }),
        ),
        const Divider(
          thickness: 4,
          color: Colors.black12,
        ),
      ],
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
                  LocaleKeys.outstandingActivity.tr,
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.textColor),
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
              itemCount: controller.lstOutstandingActivities.length,
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 300,
                    child: _buildActivityItem(context,
                        isRecentActivity: true,
                        outstandingActivity:
                            controller.lstOutstandingActivities[index]));
              }),
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
    HomeRecentActitvity? recentActivity,
    HomeOutstandingActitvity? outstandingActivity,
  }) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 155,
            child: ClipRRect(
              borderRadius: isRecentActivity == true
                  ? BorderRadius.circular(10)
                  : BorderRadius.zero,
              child: CachedNetworkImage(
                imageUrl: isRecentActivity == true
                    ? outstandingActivity?.image ?? ''
                    : recentActivity?.image ?? '',
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(isRecentActivity == true
                  ? outstandingActivity?.title ?? ''
                  : recentActivity?.title ?? ''),
              const SizedBox(height: 7),
              AutoSizeText(isRecentActivity == true
                  ? outstandingActivity?.content ?? ''
                  : recentActivity?.content ?? '')
            ],
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
                      color: context.themeExtensions.smokyWhite,
                      offset: const Offset(0, 4),
                      blurRadius: 10)
                ],
                color: context.themeExtensions.white,
              ),
              child: controller.hasNoTasks.value
                  ? _buildNoTasksOverview(context)
                  : _buildTodayTasks(context),
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
                      AutoSizeText(
                        LocaleKeys.todayTasks.tr,
                        style: context.themeExtensions.paragraphSemiBold
                            .copyWith(color: context.themeExtensions.textColor),
                      ),
                      AutoSizeText(
                        "${Jiffy().EEEE}, ${Jiffy().date}/${Jiffy().month}/${Jiffy().year}",
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
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
            AutoSizeText(
              time ?? "10h-11h",
              style: context.themeExtensions.paragraph
                  .copyWith(color: context.themeExtensions.textColor),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, top: 3, right: 13),
          child: AutoSizeText(
            subject ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.themeExtensions.subTex
                .copyWith(color: context.themeExtensions.textGrey),
          ),
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

  Widget _buildTeacherMainFeatures(BuildContext context) {
    List<Widget> mainFeatureItemList = [
      _buildMainFeatureItem(
        context,
        // background: Container(
        //   color: Colors.red,
        // ),
        icon: Icon(
          Icons.calendar_today,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.tasksCalendar.tr,
        onTap: () => controller.navigateToScheduleTime(),
      ),
      _buildMainFeatureItem(
        context,
        background: Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.train,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.teachingProgram.tr,
        onTap: () => controller.navigateToEducationProgram(),
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      _buildMainFeatureItem(
        context,
        background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.laptop_mac_sharp,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.eLearning.tr,
        onTap: () => controller.navigateToELearning(),
      ),
      _buildMainFeatureItem(
        context,
        background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.qr_code_sharp,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.checkInDevice.tr,
        onTap: () => controller.navigateToCheckInDevice(),
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: LocaleKeys.rewardDiscipline.tr,
      ),
      _buildMainFeatureItem(
        context,
        onTap: () => controller.navigateToRewardDiscipline(),
        background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
        icon: Icon(
          Icons.bookmarks,
          color: const Color(0xFF4da543).withOpacity(0.75),
          size: 30,
        ),
        title: 'ok',
      ),
    ];
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller.pageTeacherController,
                  itemCount: (mainFeatureItemList.length / 4).ceil(),
                  onPageChanged: (int page) {
                    controller.currentPage.value = page;
                  },
                  itemBuilder: (context, pageIndex) {
                    int startIndex = pageIndex * 4;
                    int endIndex = (pageIndex + 1) * 4;
                    endIndex = endIndex < mainFeatureItemList.length
                        ? endIndex
                        : mainFeatureItemList.length;
                    List<Widget> items =
                        mainFeatureItemList.sublist(startIndex, endIndex);
                    return Container(
                      margin: const EdgeInsets.only(top: 2),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1.8 / 1,
                        physics: const NeverScrollableScrollPhysics(),
                        children: items.map((item) {
                          return Column(
                            children: [
                              item,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            (mainFeatureItemList.length / 4).ceil(),
            (index) => Obx(() => Container(
                  width: 6,
                  height: 6,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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

  Widget _buildStudentMainFeatures(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildMainFeatureItem(
              context,
              background:
                  Assets.images.homeTopLeftButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icCalendarEdition.svg(fit: BoxFit.cover),
              title: LocaleKeys.learningSchedule.tr,
              onTap: () => controller.navigateToScheduleTime(),
            ),
            const SizedBox(width: 6),
            _buildMainFeatureItem(
              context,
              background:
                  Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icTeacherSvg
                  .svg(fit: BoxFit.cover, color: context.themeExtensions.white),
              title: LocaleKeys.learningResults.tr,
              onTap: () => controller.navigateToLearningResults(),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildMainFeatureItem(
    BuildContext context, {
    Widget? background,
    Widget? icon,
    String? title,
    GestureTapCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          // background ?? const SizedBox.shrink(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(child: icon),
              ),
              const SizedBox(height: 3),
              AutoSizeText(
                title ?? '',
                maxLines: 5,
                style: context.themeExtensions.subTexMedium
                    .copyWith(color: context.themeExtensions.black),
                textAlign: TextAlign.center,
              )
            ],
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

  Widget _navigatorToAllUtilities(BuildContext context) {
    return Scaffold(
      backgroundColor: LMSColors.white,
      appBar: AppBar(
          backgroundColor: LMSColors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: LMSColors.cyan,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              // Để text tạm thời
              Text(
                'Tất cả tiện ích',
                style: TextStyle(color: Colors.black),
              ),
            ],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 0, 20),
            child: AutoSizeText(LocaleKeys.utilitiesInformation.tr,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
          ),
          Container(
            child: _buildTeacherUtilities(context: context, isShowAll: true),
          ),
        ],
      ),
    );
  }
}
