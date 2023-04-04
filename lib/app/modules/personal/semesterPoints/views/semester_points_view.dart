// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/data/bean/course_object/course_object.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/custom_bottom_sheet.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';

import '../controllers/semester_points_controller.dart';

class SemesterPointsView extends BaseView<SemesterPointsController> {
  SemesterPointsView({Key? key}) : super(key: key);
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
            title: LocaleKeys.semesterPoints.tr,
            appBarActions: (context) => [
              IconButton(
                onPressed: () {
                  CustomBottomSheet.showBottomSheet(
                    headerTitle: LocaleKeys.filterDataTitle.tr,
                    buttonTitle: LocaleKeys.filterDataButton.tr,
                    contentView: SearchAdvanceView(
                      dataYearSelected: controller.selectedYear,
                      dataSemesterSelected: controller.selectedSmester,
                      onModelChanged: (SearchAdvanceResponse? model) {
                        controller.selectedYear = model?.year ?? '';
                        controller.selectedSmester = model?.semester;
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
          const SizedBox(height: 20),
          Container(
            color: context.themeExtensions.darkGreen,
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 40),
                Expanded(
                    child: AutoSizeText(
                  LocaleKeys.course.tr,
                  style: context.themeExtensions.subTex
                      .copyWith(color: context.themeExtensions.white),
                  textAlign: TextAlign.start,
                )),
                const SizedBox(width: 7),
                SizedBox(
                  width: 68,
                  child: AutoSizeText(
                    LocaleKeys.numberCredit.tr,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 7),
                SizedBox(
                  width: 45,
                  child: AutoSizeText(
                    LocaleKeys.coefficient.tr,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 7),
                SizedBox(
                  width: 68,
                  child: AutoSizeText(
                    LocaleKeys.sumPoint.tr,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 13),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => controller.loadData(isRefresh: true),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Obx(() => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        for (var point in controller.semesterPoint?.value?.lstCourses ?? [])
                          _buildPointItem(context,
                              course: point,
                              rank:
                                  controller.semesterPoint?.value?.lstCourses?.indexOf(point) ?? 0,
                              isLast: point == controller.semesterPoint?.value?.lstCourses?.last),
                        Container(
                          height: 5,
                          color: context.themeExtensions.black.withOpacity(0.1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AutoSizeText(
                              LocaleKeys.summary.tr,
                              style: context.themeExtensions.paragraphSemiBold
                                  .copyWith(color: context.themeExtensions.black),
                            ),
                            const SizedBox(width: 13),
                            AutoSizeText(
                              controller.semesterPoint?.value?.selectedSemesterverage
                                      ?.toString() ??
                                  '',
                              style: context.themeExtensions.paragraphSemiBold
                                  .copyWith(color: context.themeExtensions.black),
                            )
                          ],
                        ).paddingOnly(left: 20, top: 13, right: 20, bottom: 7),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Obx(() => AutoSizeText(
                                  controller.semesterPoint?.value?.selectedSemester ?? "",
                                  style: context.themeExtensions.smallTex
                                      .copyWith(color: context.themeExtensions.textGrey),
                                )),
                            const SizedBox(width: 13),
                            AutoSizeText(
                              controller.semesterPoint?.value?.selectedSemesterClassification ??
                                  '',
                              style: context.themeExtensions.smallTex
                                  .copyWith(color: context.themeExtensions.textGrey),
                            )
                          ],
                        ).paddingSymmetric(horizontal: 20),
                        const SizedBox(height: 13),
                        Container(
                          padding: const EdgeInsets.only(bottom: 13),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Assets.images.butGradientBg.path),
                                  fit: BoxFit.cover)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    LocaleKeys.summary.tr,
                                    style: context.themeExtensions.paragraphSemiBold
                                        .copyWith(color: context.themeExtensions.white),
                                  ),
                                  const SizedBox(width: 13),
                                  AutoSizeText(
                                    controller.semesterPoint?.value?.allSemestersAvarage
                                            ?.toString() ??
                                        '',
                                    style: context.themeExtensions.paragraphSemiBold
                                        .copyWith(color: context.themeExtensions.white),
                                  )
                                ],
                              ).paddingOnly(left: 20, top: 13, right: 20, bottom: 7),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    '${controller.semesterPoint?.value?.semesterCount ?? 1} ${LocaleKeys.semester.tr.toLowerCase()}',
                                    style: context.themeExtensions.smallTex
                                        .copyWith(color: context.themeExtensions.white),
                                  ),
                                  const SizedBox(width: 13),
                                  AutoSizeText(
                                    '${LocaleKeys.classification.tr} : ${controller.semesterPoint?.value?.classification ?? ''}',
                                    style: context.themeExtensions.smallTex
                                        .copyWith(color: context.themeExtensions.white),
                                  )
                                ],
                              ).paddingSymmetric(horizontal: 20),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        AutoSizeText(
                          LocaleKeys.theSubjectFailsWarning.tr,
                          style: context.themeExtensions.subTex
                              .copyWith(color: context.themeExtensions.red),
                        ).paddingSymmetric(horizontal: 20),
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
    ));
  }

  Widget _buildPointItem(BuildContext context,
      {CourseObject? course, int rank = 0, bool? isLast = false}) {
    return InkWell(
      onTap: () => controller.navigateToCoursePointDetail(course),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            color: rank.isOdd ? context.themeExtensions.alabaster : context.themeExtensions.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 40,
                  child: Center(
                      child: AutoSizeText(
                    '${rank + 1}',
                    style: context.themeExtensions.subTex.copyWith(
                        color: course?.status == CourseStatus.PASS
                            ? context.themeExtensions.black
                            : context.themeExtensions.red),
                  )),
                ),
                Expanded(
                    child: AutoSizeText(
                  course?.coursename ?? '',
                  style: context.themeExtensions.subTex.copyWith(
                      color: course?.status == CourseStatus.PASS
                          ? context.themeExtensions.black
                          : context.themeExtensions.red),
                  textAlign: TextAlign.start,
                )),
                const SizedBox(width: 7),
                SizedBox(
                  width: 68,
                  child: AutoSizeText(
                    course?.numbercredits?.toString() ?? '',
                    style: context.themeExtensions.subTex.copyWith(
                        color: course?.status == CourseStatus.PASS
                            ? context.themeExtensions.black
                            : context.themeExtensions.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 7),
                SizedBox(
                  width: 45,
                  child: AutoSizeText(
                    course?.coefficient?.toString() ?? '',
                    style: context.themeExtensions.subTex.copyWith(
                        color: course?.status == CourseStatus.PASS
                            ? context.themeExtensions.black
                            : context.themeExtensions.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 7),
                SizedBox(
                  width: 68,
                  child: AutoSizeText(
                    course?.gpaPoint?.toString() ?? '',
                    style: context.themeExtensions.subTex.copyWith(
                        color: course?.status == CourseStatus.PASS
                            ? context.themeExtensions.black
                            : context.themeExtensions.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 13),
              ],
            ).paddingSymmetric(vertical: 14),
          ),
          Container(
            height: 1,
            color: context.themeExtensions.black.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}
