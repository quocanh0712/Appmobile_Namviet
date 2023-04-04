// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/data/bean/course_object/course_object.dart';
import 'package:ftu_lms/data/bean/test_schedule_object/test_schedule_object.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/custom_bottom_sheet.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';

import '../controllers/testing_planing_controller.dart';

class TestingPlaningView extends BaseView<TestingPlaningController> {
  TestingPlaningView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            BaseAppBarWidget(
              title: LocaleKeys.testingPlan.tr,
              appBarActions: (context) => [
                IconButton(
                  onPressed: () {
                    CustomBottomSheet.showBottomSheet(
                      headerTitle: LocaleKeys.filterDataTitle.tr,
                      buttonTitle: LocaleKeys.filterDataButton.tr,
                      contentView: SearchAdvanceView(
                        dataYearSelected: controller.searchAdvance.value.year,
                        dataSemesterSelected:
                            controller.searchAdvance.value.semester,
                        onModelChanged: (SearchAdvanceResponse? model) {
                          controller.searchAdvance.value =
                              model ?? SearchAdvanceResponse();
                        },
                      ),
                      acceptBtPress: () => controller.loadData(),
                    );
                  },
                  icon: Assets.images.icFilterSearch
                      .image(width: 24, height: 24, color: context.themeExtensions.textColor),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: context.themeExtensions.bgGrey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AutoSizeText(
                        LocaleKeys.schoolYear.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      const SizedBox(width: 13),
                      Expanded(
                        child: Obx(() => AutoSizeText(
                          controller.searchAdvance.value.year ?? "",
                              style: context.themeExtensions.paragraph.copyWith(
                                  color: context.themeExtensions.black),
                              textAlign: TextAlign.end,
                            )),
                      )
                    ],
                  ).paddingOnly(bottom: 13),
                  Container(height: 1, color: context.themeExtensions.black.withOpacity(0.07)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AutoSizeText(
                        LocaleKeys.semester.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      const SizedBox(width: 13),
                      Expanded(
                        child: Obx(() => AutoSizeText(
                          controller.searchAdvance.value.semester
                                      ?.toString() ??
                                  "",
                              style: context.themeExtensions.paragraph.copyWith(
                                  color: context.themeExtensions.black),
                              textAlign: TextAlign.end,
                            )),
                      )
                    ],
                  ).paddingSymmetric(vertical: 13),
                  Container(height: 1, color: context.themeExtensions.black.withOpacity(0.07)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AutoSizeText(
                        LocaleKeys.major.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      const SizedBox(width: 13),
                      Expanded(
                        child: Obx(() => AutoSizeText(
                              controller.userObject.value?.nganh ?? '',
                              style: context.themeExtensions.paragraph
                                  .copyWith(color: context.themeExtensions.black),
                              textAlign: TextAlign.end,
                            )),
                      )
                    ],
                  ).paddingOnly(top: 13),
                ],
              ).paddingAll(20),
            ).paddingOnly(left: 20, top: 20, right: 20),
            const SizedBox(height: 15),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => controller.loadData(isRefresh: true),
                child: SingleChildScrollView(
                  child: Obx(() => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          for (var test in controller.lstTestingPlan)
                            _buildItem(context, test,
                                isFirst: controller.lstTestingPlan.indexOf(test) == 0),
                          const SizedBox(height: 30),
                        ],
                      )),
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
    );
  }

  Widget _buildItem(BuildContext context, TestScheduleObject? item, {bool? isFirst = false}) {
    Fimber.d("buildItem()");
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLabel(context, item),
        for (var course in item?.lstCourses ?? [])
          _buildTestInfoItem(context, course,
              item?.lstCourses?.indexOf(course) == (item?.lstCourses?.length ?? 0 - 1)),
      ],
    );
  }

  Widget _buildLabel(BuildContext context, TestScheduleObject? item, {bool? isFirst = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        isFirst == true
            ? const SizedBox(height: 10)
            : const SizedBox(height: 20),
        AutoSizeText(
          '${item?.dayofweeks} - ${item?.date}/${item?.month}',
          style: context.themeExtensions.heading2
              .copyWith(color: context.themeExtensions.black),
        ).paddingSymmetric(horizontal: 10),
        const SizedBox(height: 9),
      ],
    );
  }

  Widget _buildTestInfoItem(BuildContext context, CourseObject? item, bool? isLast) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 4),
                width: 70,
                child: AutoSizeText('${item?.time?.replaceAll(RegExp(r' - '), '\n')}')),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  AutoSizeText(
                    item?.coursename ?? '',
                    style: context.themeExtensions.paragraphSemiBold
                        .copyWith(color: context.themeExtensions.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AutoSizeText(
                        '${LocaleKeys.idNumber.tr}: ',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      AutoSizeText(
                        item?.identificationnumber?.toString() ?? '',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.black),
                      ),
                      AutoSizeText(
                        LocaleKeys.bull.tr,
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.lightSilver),
                      ),
                      AutoSizeText(
                        '${LocaleKeys.location.tr}: ',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      AutoSizeText(
                        item?.roomname ?? '',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.black),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AutoSizeText(
                        '${LocaleKeys.learningTime.tr}: ',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      AutoSizeText(
                        item?.examination?.toString() ?? '',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.black),
                      ),
                      AutoSizeText(
                        LocaleKeys.bull.tr,
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.lightSilver),
                      ),
                      AutoSizeText(
                        '${LocaleKeys.testingTime.tr}: ',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                      AutoSizeText(
                        item?.examTime?.toString() ?? '',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.black),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ).paddingSymmetric(horizontal: 20),
        isLast == true
            ? const SizedBox.shrink()
            : Container(
                height: 1,
                color: context.themeExtensions.black.withOpacity(0.1),
              ).paddingSymmetric(horizontal: 20, vertical: 13)
      ],
    );
  }
}
