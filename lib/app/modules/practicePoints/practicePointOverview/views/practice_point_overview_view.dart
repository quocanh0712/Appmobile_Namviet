// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/base/custom_appbar.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/parent_practice_criteria_object.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/double_ext.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';

import '../controllers/practice_point_overview_controller.dart';

class PracticePointOverviewView extends BaseView<PracticePointOverviewController> {
  PracticePointOverviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Assets.images.profileHeaderBg.image(width: double.infinity, fit: BoxFit.cover),
              SafeArea(
                top: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(
                        context: context,
                        backGroundColor: context.themeExtensions.transparent,
                        title: LocaleKeys.trainingPoint.tr),
                    const SizedBox(height: 13),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: context.themeExtensions.black.withOpacity(0.05),
                                    offset: const Offset(0, 4),
                                    blurRadius: 10)
                              ],
                              color: context.themeExtensions.white,
                              border: Border.all(
                                  color: context.themeExtensions.black.withOpacity(0.05),
                                  width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Assets.images.icImage6
                                    .image(width: 32, height: 32, fit: BoxFit.cover),
                                const SizedBox(width: 20),
                                Expanded(
                                  flex: 1,
                                  child: AutoSizeText(
                                    LocaleKeys.pointInAllYears.tr,
                                    style: context.themeExtensions.heading3
                                        .copyWith(color: context.themeExtensions.semiGrey),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Obx(() => AutoSizeText(
                                      controller.practicePoints.value?.sum?.toString() ?? '',
                                      style: context.themeExtensions.heading3
                                          .copyWith(color: context.themeExtensions.mainGreen),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(height: 13),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: context.themeExtensions.black.withOpacity(0.05),
                                    offset: const Offset(0, 4),
                                    blurRadius: 10)
                              ],
                              color: context.themeExtensions.white,
                              border: Border.all(
                                  color: context.themeExtensions.black.withOpacity(0.05),
                                  width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Assets.images.icImage7
                                    .image(width: 32, height: 32, fit: BoxFit.cover),
                                const SizedBox(width: 20),
                                Expanded(
                                  flex: 2,
                                  child: AutoSizeText(
                                    LocaleKeys.rankInAllYears.tr,
                                    style: context.themeExtensions.heading3
                                        .copyWith(color: context.themeExtensions.semiGrey),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Obx(() => AutoSizeText(
                                      controller.practicePoints.value?.rank?.retrieveSRank4() ??
                                          '',
                                      style: context.themeExtensions.heading3
                                          .copyWith(color: context.themeExtensions.mainGreen),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    AutoSizeText(
                      LocaleKeys.practicePointDetail.tr,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.black),
                    ).paddingSymmetric(vertical: 20, horizontal: 20),
                    Container(
                      color: context.themeExtensions.bgGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AutoSizeText(
                            LocaleKeys.index.tr,
                            style: context.themeExtensions.subTexMedium
                                .copyWith(color: context.themeExtensions.semiGrey),
                          ).paddingOnly(left: 20, right: 13, top: 13, bottom: 13),
                          Expanded(
                            flex: 1,
                            child: AutoSizeText(
                              LocaleKeys.groupCriterias.tr,
                              style: context.themeExtensions.subTexMedium
                                  .copyWith(color: context.themeExtensions.semiGrey),
                            ).paddingOnly(left: 13, right: 7, top: 13, bottom: 13),
                          ),
                          AutoSizeText(
                            LocaleKeys.totalPoints.tr,
                            style: context.themeExtensions.subTexMedium
                                .copyWith(color: context.themeExtensions.semiGrey),
                          ).paddingOnly(left: 7, top: 13, right: 20, bottom: 13),
                        ],
                      ),
                    ),
                    Obx(() => SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              for (var point in controller.practicePoints.value?.criterias ?? [])
                                _buildPracticePointCriteria(context, point,
                                    controller.practicePoints.value?.criterias?.indexOf(point)),
                              const SizedBox(height: 96),
                            ],
                          ),
                        )),
                    Obx(() {
                      if (controller.isError.value?.isNotBlank() == true) {
                        controller.isError.value = "";
                        WidgetsBinding.instance.addPostFrameCallback((duration) {
                          showErrorDialog(context, messageError: controller.isError.value);
                        });
                      }
                      return const SizedBox.shrink();
                    }),
                    Obx(() {
                      if (controller.isLoading.value == true) {
                        WidgetsBinding.instance.addPostFrameCallback((duration) {
                          EasyLoading.show(dismissOnTap: false);
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
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPracticePointCriteria(
      BuildContext context, ParentPracticeCriteriaObject? point, int? index) {
    return InkWell(
      onTap: () => controller.navigateToPracticePointDetail(point),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          index != 0
              ? Container(
                  height: 1,
                  color: context.themeExtensions.black.withOpacity(0.1),
                )
              : const SizedBox.shrink(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  AutoSizeText(
                    LocaleKeys.index.tr,
                    style: context.themeExtensions.subTexMedium
                        .copyWith(color: context.themeExtensions.transparent),
                  ).paddingOnly(left: 20, right: 13, top: 13, bottom: 13),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        '${(index ?? 0) + 1}',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.black),
                      ).paddingOnly(left: 20, right: 13, top: 13, bottom: 13),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    AutoSizeText(
                      LocaleKeys.groupCriterias.tr,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.transparent),
                    ).paddingOnly(left: 13, right: 7, top: 13, bottom: 13),
                    AutoSizeText(
                      point?.typeCriteriaName ?? '',
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.black),
                    ).paddingOnly(left: 13, right: 7, top: 13, bottom: 13)
                  ],
                ),
              ),
              Stack(
                children: [
                  AutoSizeText(
                    LocaleKeys.totalPoints.tr,
                    style: context.themeExtensions.subTexMedium
                        .copyWith(color: context.themeExtensions.transparent),
                  ).paddingOnly(left: 7, top: 13, right: 7, bottom: 13),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AutoSizeText(
                        point?.totalScore?.toString() ?? '',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.semiGrey),
                      ).paddingOnly(left: 7, top: 13, right: 7, bottom: 13),
                    ),
                  )
                ],
              ),
              Assets.images.arrowRight
                  .svg(
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                    color: context.themeExtensions.semiGrey,
                  )
                  .paddingOnly(right: 20),
            ],
          )
        ],
      ),
    );
  }
}
