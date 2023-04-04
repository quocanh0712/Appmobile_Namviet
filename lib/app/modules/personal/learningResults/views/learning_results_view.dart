// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/personal/learningResults/controllers/learning_results_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

class LearningResultsView extends BaseView<LearningResultsController> {
  LearningResultsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeExtensions.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: controller.scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            centerTitle: true,
            title: AutoSizeText(LocaleKeys.learningResults.tr,
                style: context.themeExtensions.heading2
                    .copyWith(color: context.themeExtensions.white),
                textAlign: TextAlign.center),
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Assets.images.icArrowLeft
                  .svg(width: 24, height: 24, color: context.themeExtensions.white),
            ),
            stretch: true,
            flexibleSpace: Stack(
              children: [
                Obx(() => Container(
                      color: controller.scrollUpOverTransparent.value == true
                          ? context.themeExtensions.mainGreen
                          : context.themeExtensions.white,
                    )),
                FlexibleSpaceBar(
                  stretchModes: const [StretchMode.zoomBackground],
                  background: Stack(
                    children: [
                      Positioned.fill(
                          child: Assets.images.profileHeaderBg
                              .image(width: double.infinity, fit: BoxFit.cover)),
                      Padding(
                        padding: const EdgeInsets.only(top: 95),
                        child: Stack(
                          children: [
                            Center(child: Assets.images.aristaBg.image(fit: BoxFit.cover)),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    LocaleKeys.classification.tr,
                                    style: context.themeExtensions.paragraph
                                        .copyWith(color: context.themeExtensions.white),
                                  ),
                                  const SizedBox(height: 3),
                                  Obx(() => AutoSizeText(
                                        controller.semesterPoint?.value?.classification ?? '',
                                        style: context.themeExtensions.heading1
                                            .copyWith(color: context.themeExtensions.white),
                                      )),
                                  const SizedBox(height: 28)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: context.themeExtensions.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
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
                          color: context.themeExtensions.black.withOpacity(0.05), width: 1),
                    ),
                    child: Obx(() => Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.learningRank.tr,
                                value: controller.semesterPoint?.value?.classification,
                                isFirst: true),
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.learningRank10.tr,
                                value: controller.semesterPoint?.value?.classification10),
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.semesterAverageType4.tr,
                                value: controller.semesterPoint?.value?.rank?.toString()),
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.averageType4.tr,
                                value: controller.semesterPoint?.value?.gpA4?.toString()),
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.credits.tr,
                                value:
                                    '${controller.semesterPoint?.value?.accumulatedCredits}/${controller.semesterPoint?.value?.academicCredits}'),
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.semesterCredits.tr,
                                value: controller.semesterPoint?.value?.accumulatedCredits
                                    ?.toString()),
                            buildLearningResultInfoItem(
                                context: context,
                                title: LocaleKeys.semesterAverageType10.tr,
                                value: controller.semesterPoint?.value?.gpA10?.toString(),
                                isLast: true),
                          ],
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildSemesterPointsButton(context),
              const SizedBox(height: 156),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildSemesterPointsButton(BuildContext context) {
    return InkWell(
      onTap: () => controller.navigateToSemesterPoints(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: const EdgeInsets.only(left: 22, top: 13, bottom: 13, right: 13),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: context.themeExtensions.black.withOpacity(0.05),
                  offset: const Offset(0, 4),
                  blurRadius: 10)
            ],
            color: context.themeExtensions.white,
            border: Border.all(color: context.themeExtensions.black.withOpacity(0.05), width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.images.icMenuBoard.svg(width: 24, height: 24, fit: BoxFit.cover),
              const SizedBox(width: 15),
              Expanded(
                flex: 1,
                child: AutoSizeText(
                  LocaleKeys.semesterPoints.tr,
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.mainGreen),
                ),
              ),
              Assets.images.arrowRight.svg(fit: BoxFit.cover, width: 24, height: 24)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLearningResultInfoItem(
      {required BuildContext context,
      String? title,
      String? value,
      bool? isFirst = false,
      bool? isLast = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: isFirst == true ? 0 : 15, bottom: isLast == true ? 0 : 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isFirst == true ? const SizedBox.shrink() : const SizedBox(height: 15),
              Expanded(
                child: AutoSizeText(
                  title ?? '',
                  style: context.themeExtensions.paragraph
                      .copyWith(color: context.themeExtensions.textGrey),
                ),
              ),
              const SizedBox(width: 7),
              Expanded(
                child: AutoSizeText(
                  value ?? '',
                  style: context.themeExtensions.paragraph
                      .copyWith(color: context.themeExtensions.black),
                  textAlign: TextAlign.end,
                ),
              ),
              isLast == true ? const SizedBox.shrink() : const SizedBox(height: 15)
            ],
          ),
        ),
        isLast == false
            ? Container(color: context.themeExtensions.black.withOpacity(0.1), height: 1)
            : const SizedBox.shrink(),
      ],
    );
  }
}
