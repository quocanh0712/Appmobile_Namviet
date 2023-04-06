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
import 'package:ftu_lms/data/bean/home_response_object/home_recent_actitvity.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../styles/theme_extensions.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseBindingCreatorView<HomeBinding, HomeController> {
  HomeView({Key? key, required BindingCreator<HomeBinding>? bindingCreator})
      : super(key: key, bindingCreator: bindingCreator);

  @override
  Widget? onCreateViews(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: Get.height - 130,
      minHeight: Get.height - 260,
      parallaxEnabled: false,
      color: context.themeExtensions.transparent,
      boxShadow: [BoxShadow(blurRadius: 0, color: context.themeExtensions.transparent)],
      body: Scaffold(
        body: Stack(
          children: [
            Assets.images.universityBuilding.image(width: double.infinity, fit: BoxFit.cover),
            Container(
              width: double.infinity,
              height: 445,
              decoration: BoxDecoration(gradient: GradientExtension(context).headerGradient),
              child: SafeArea(
                top: true,
                bottom: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 36),
                    Assets.images.ftuLogo.image(width: 68, height: 68, fit: BoxFit.cover),
                    const SizedBox(height: 13),
                    Obx(() => AutoSizeText(controller.userObject.value?.fullname ?? '',
                        style: context.themeExtensions.heading1
                            .copyWith(color: context.themeExtensions.white))),
                    const SizedBox(height: 3),
                    Obx(() => AutoSizeText("ID: ${controller.userObject.value?.username}",
                        style: context.themeExtensions.subTex
                            .copyWith(color: context.themeExtensions.white)))
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
                Obx(() => SizedBox(height: controller.hasNoTasks.value ? 75 : 105)),
                Expanded(
                  child: Container(
                    color: context.themeExtensions.white,
                    child: ScrollConfiguration(
                      behavior: DisableScrollGlowBehavior(),
                      child: ListView(
                        physics: PanelScrollPhysics(controller: controller.panelController),
                        controller: controller.scrollController,
                        children: <Widget>[
                          Obx(() => SizedBox(height: controller.hasNoTasks.value ? 76 : 96)),
                          const SizedBox(height: 40),
                          Obx(() => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: _retrieveMainFeaturesByPermission(context,
                                  controller.userPermission?.value ?? UserPermission.none))),
                          const SizedBox(height: 15),
                          InkWell(
                            onTap: () => controller.navigateToUtilites(),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    LocaleKeys.utilities.tr,
                                    style: context.themeExtensions.paragraphSemiBold
                                        .copyWith(color: context.themeExtensions.black),
                                  ),
                                  Assets.images.arrowRight.svg(fit: BoxFit.cover)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Obx(() => SizedBox(
                                child: _retrieveUtilitiesByPermission(context,
                                    controller.userPermission?.value ?? UserPermission.none),
                              )),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                              child: _buildBanners(context)),
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
                          for (var activity in controller.lstRecentActivities)
                            _buildRecentActivityItem(context, activity,
                                isLast: activity == controller.lstRecentActivities.last),
                          const SizedBox(height: 45),
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

  Widget _buildStudentUtilities(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icUserOctagon,
                title: LocaleKeys.eLearning.tr,
                onTap: () => controller.navigateToELearning(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icAward,
                title: LocaleKeys.trainingPoint.tr,
                onTap: () => controller.navigateToPracticePointOverview(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icBookPng,
                title: LocaleKeys.teachingProgram.tr,
                onTap: () => controller.navigateToEducationProgram(),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icEmptyWalletChange,
                title: LocaleKeys.finance.tr,
                onTap: () => controller.navigateToFinanceOverview(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icExamPlan,
                title: LocaleKeys.testingPlan.tr,
                onTap: () => controller.navigateToTestSchedule(),
              ),
              _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icBrifecaseTick,
                  title: LocaleKeys.oneStopService.tr,
                  onTap: () => controller.navigateToOneGate()),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icUserOctagon,
                title: LocaleKeys.account.tr,
                onTap: () => showFeatureIsDeveloping(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.ic74,
                title: LocaleKeys.titleTeacherContact.tr,
                onTap: () => showFeatureIsDeveloping(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icConversation,
                title: LocaleKeys.conversationTitle.tr,
                onTap: () => controller.navigateToConversation(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icTask,
                title: LocaleKeys.registedCourses.tr,
                onTap: () => showFeatureIsDeveloping(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icReceiptDisscount,
                title: LocaleKeys.scholarship.tr,
                onTap: () => showFeatureIsDeveloping(),
              ),
              _buildUtilityButton(
                context: context,
                assetImage: Assets.images.icUtilityMedalStar,
                title: LocaleKeys.rewardDiscipline.tr,
                onTap: () => showFeatureIsDeveloping(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        ),
      ],
    );
  }

  Widget _retrieveUtilitiesByPermission(BuildContext context, UserPermission permission) {
    if (permission == UserPermission.teacher) return _buildTeacherUtilities(context);
    return _buildStudentUtilities(context);
  }

  // Widget _buildTeacherUtilities(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     mainAxisSize: MainAxisSize.max,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             // _buildUtilityButton(
  //             //   context: context,
  //             //   assetImage: Assets.images.icUserOctagon,
  //             //   title: LocaleKeys.account.tr,
  //             //   onTap: () => showFeatureIsDeveloping(),
  //             // ),
  //             _buildUtilityButton(
  //                 context: context,
  //                 assetImage: Assets.images.icMicroscope,
  //                 onTap: () => controller.navigateToScientificResearch(),
  //                 title: LocaleKeys.scienceStudy.tr),
  //             // _buildUtilityButton(
  //             //   context: context,
  //             //   assetImage: Assets.images.icProfileTick,
  //             //   title: LocaleKeys.setupPermission.tr,
  //             //   onTap: () => showFeatureIsDeveloping(),
  //             // )
  //           ],
  //         ),
  //       ),
  //       const SizedBox(height: 20),
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             _buildUtilityButton(
  //               context: context,
  //               assetImage: Assets.images.icFilterSearch,
  //               title: LocaleKeys.serveyResults.tr,
  //               onTap: () => controller.navigateToSurveyResult(),
  //             ),
  //             _buildUtilityButton(
  //                 context: context,
  //                 assetImage: Assets.images.icTeacherContact,
  //                 onTap: () => controller.navigateToTeacherContact(),
  //                 title: LocaleKeys.titleTeacherContact.tr),
  //             // _buildUtilityButton(
  //             //   context: context,
  //             //   assetImage: Assets.images.icMonitorMobbile,
  //             //   title: LocaleKeys.assets.tr,
  //             //   onTap: () => showFeatureIsDeveloping(),
  //             // ),
  //           ],
  //         ),
  //       ),
  //       const SizedBox(height: 20),
  //       // Padding(
  //       //   padding: const EdgeInsets.symmetric(horizontal: 20),
  //       //   child: Row(
  //       //     mainAxisAlignment: MainAxisAlignment.start,
  //       //     children: [
  //       //       // _buildUtilityButton(
  //       //       //   context: context,
  //       //       //   assetImage: Assets.images.icDirectInbox,
  //       //       //   title: LocaleKeys.incomeDocuments.tr,
  //       //       //   onTap: () => showFeatureIsDeveloping(),
  //       //       // ),
  //       //       // _buildUtilityButton(
  //       //       //     context: context,
  //       //       //     assetImage: Assets.images.icDirectSend,
  //       //       //     onTap: () => showFeatureIsDeveloping(),
  //       //       //     title: LocaleKeys.outcomeDocuments.tr),
  //       //       // _buildUtilityButton(
  //       //       //   context: context,
  //       //       //   assetImage: Assets.images.icScan,
  //       //       //   title: LocaleKeys.timekeeping.tr,
  //       //       //   onTap: () => showFeatureIsDeveloping(),
  //       //       // ),
  //       //     ],
  //       //   ),
  //       // ),
  //       const SizedBox(height: 20),
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             // _buildUtilityButton(
  //             //   context: context,
  //             //   assetImage: Assets.images.icCalendarTick,
  //             //   title: LocaleKeys.examTrackingSchedule.tr,
  //             //   onTap: () => showFeatureIsDeveloping(),
  //             // ),
  //             _buildUtilityButton(
  //                 context: context,
  //                 assetImage: Assets.images.icBrifecaseTick,
  //                 onTap: () => controller.navigateToOneGate(),
  //                 title: LocaleKeys.oneStopService.tr),
  //             // _buildUtilityButton(
  //             //   context: context,
  //             //   assetImage: Assets.images.icPeople,
  //             //   title: LocaleKeys.studentList.tr,
  //             //   onTap: () => showFeatureIsDeveloping(),
  //             // ),
  //           ],
  //         ),
  //       ),
  //       const SizedBox(height: 20),
  //       // Padding(
  //       //   padding: const EdgeInsets.symmetric(horizontal: 20),
  //       //   child: Row(
  //       //     mainAxisAlignment: MainAxisAlignment.start,
  //       //     children: [
  //       //       _buildUtilityButton(
  //       //         context: context,
  //       //         assetImage: Assets.images.icDollarCircle,
  //       //         title: LocaleKeys.salaryInfo.tr,
  //       //         onTap: () => showFeatureIsDeveloping(),
  //       //       ),
  //       //       _buildUtilityButton(
  //       //           context: context,
  //       //           assetImage: Assets.images.icTaskSquare,
  //       //           onTap: () => showFeatureIsDeveloping(),
  //       //           title: LocaleKeys.taskStatus.tr),
  //       //       _buildUtilityButton(context: context),
  //       //     ],
  //       //   ),
  //       // ),
  //     ],
  //   );
  // }
  Widget _buildTeacherUtilities(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icMicroscope,
                  onTap: () => controller.navigateToScientificResearch(),
                  title: LocaleKeys.scienceStudy.tr),
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
                  title: LocaleKeys.titleTeacherContact.tr),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildUtilityButton(
                  context: context,
                  assetImage: Assets.images.icBrifecaseTick,
                  onTap: () => controller.navigateToOneGate(),
                  title: LocaleKeys.oneStopService.tr),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
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

  Widget _buildRecentActivityItem(BuildContext context, HomeRecentActitvity activity,
      {bool? isLast = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: activity.icon ?? '',
                width: 24,
                height: 24,
                fit: BoxFit.cover,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => Assets.images.icEmptyWalletChange.image(
                    width: 24,
                    height: 23,
                    fit: BoxFit.cover,
                    color: context.themeExtensions.textGrey),
              ),
              const SizedBox(width: 15),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(activity.title ?? ''),
                    const SizedBox(height: 7),
                    AutoSizeText(activity.content ?? '')
                  ],
                ),
              )
            ],
          ),
          isLast == false ? const SizedBox(height: 18) : const SizedBox.shrink(),
          isLast == false
              ? Container(height: 1, color: context.themeExtensions.chineseBlack.withOpacity(0.1))
              : const SizedBox.shrink()
        ],
      ),
    );
  }

  Widget _buildUtilityButton(
      {required BuildContext context,
      AssetGenImage? assetImage,
      String? title,
      GestureTapCallback? onTap}) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: assetImage != null
                  ? BoxDecoration(
                      color: context.themeExtensions.antiFlashWhite, shape: BoxShape.circle)
                  : null,
              child: assetImage?.image(fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            AutoSizeText(title ?? '',
                maxLines: 2,
                style: context.themeExtensions.subTexMedium
                    .copyWith(color: context.themeExtensions.textColor),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis)
          ],
        ),
      ),
    );
  }

  Widget _buildTodayTasksOverview(BuildContext context) {
    return ForceDraggableWidget(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Obx(() => Container(
              width: double.infinity,
              height: controller.hasNoTasks.value ? 146 : 196,
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
                        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 3),
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
            style:
                context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
          ),
        )
      ],
    );
  }

  Widget _retrieveMainFeaturesByPermission(BuildContext context, UserPermission permission) {
    if (permission == UserPermission.teacher) return _buildTeacherMainFeatures(context);
    if (permission == UserPermission.student) return _buildStudentMainFeatures(context);
    return const SizedBox.shrink();
  }

  Widget _buildTeacherMainFeatures(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildMainFeatureItem(
              context,
              background: Assets.images.homeTopLeftButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icCalendarEdition.svg(fit: BoxFit.cover),
              title: LocaleKeys.tasksCalendar.tr,
              onTap: () => controller.navigateToScheduleTime(),
            ),
            const SizedBox(width: 6),
            _buildMainFeatureItem(
              context,
              background: Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icCalendarEdition.svg(fit: BoxFit.cover),
              title: LocaleKeys.teachingProgram.tr,
              onTap: () => controller.navigateToEducationProgram(),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildMainFeatureItem(
              context,
              onTap: () => controller.navigateToRewardDiscipline(),
              background: Assets.images.homeBotLeftButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icCalendarEdition.svg(fit: BoxFit.cover),
              title: LocaleKeys.rewardDiscipline.tr,
            ),
            const SizedBox(width: 6),
            _buildMainFeatureItem(
              context,
              background: Assets.images.homeBotRightButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icCalendarEdition.svg(fit: BoxFit.cover),
              title: LocaleKeys.eLearning.tr,
              onTap: () => controller.navigateToELearning(),
            ),
          ],
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
              background: Assets.images.homeTopLeftButBg.image(fit: BoxFit.cover),
              icon: Assets.images.icCalendarEdition.svg(fit: BoxFit.cover),
              title: LocaleKeys.learningSchedule.tr,
              onTap: () => controller.navigateToScheduleTime(),
            ),
            const SizedBox(width: 6),
            _buildMainFeatureItem(
              context,
              background: Assets.images.homeTopRightButBg.image(fit: BoxFit.cover),
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
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            background ?? const SizedBox.shrink(),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  const SizedBox(height: 3),
                  AutoSizeText(
                    title ?? '',
                    maxLines: 2,
                    style: context.themeExtensions.subTexMedium
                        .copyWith(color: context.themeExtensions.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
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
                        borderRadius: const BorderRadius.all(Radius.circular(9)),
                        child: CachedNetworkImage(
                          imageUrl: element.imageurl ?? '',
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 123,
                          placeholder: (context, url) => const SizedBox(
                              width: 35, height: 35, child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Assets.images.ftuLogo.image(width: 35, height: 35),
                        )),
                  ),
                )),
            carouselController: controller.bannerController,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                aspectRatio: 2,
                onPageChanged: (index, reason) => controller.currentBanner.value = index),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: controller.lstBanners.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => controller.bannerController?.animateToPage(entry.key),
            child: Obx(() => Container(
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.themeExtensions.mainGreen
                          .withOpacity(controller.currentBanner.value == entry.key ? 0.9 : 0.3)),
                )),
          );
        }).toList(),
      ),
    ]);
  }
}
