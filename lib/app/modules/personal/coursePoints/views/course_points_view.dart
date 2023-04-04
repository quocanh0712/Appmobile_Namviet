// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/data/bean/single_course_points_object/single_course_points_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../controllers/course_points_controller.dart';

class CoursePointsView extends BaseView<CoursePointsController> {
  CoursePointsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            BaseAppBarWidget(
              title: LocaleKeys.pointDetails.tr,
            ),
            const SizedBox(height: 16),
            Container(
              color: context.themeExtensions.mainGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  AutoSizeText(
                    LocaleKeys.index.tr,
                    style: context.themeExtensions.subTexMedium
                        .copyWith(color: context.themeExtensions.white),
                  ).paddingSymmetric(horizontal: 20),
                  Expanded(
                    child: AutoSizeText(
                      LocaleKeys.pointName.tr,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.white),
                    ),
                  ),
                  AutoSizeText(
                    LocaleKeys.point.tr,
                    style: context.themeExtensions.subTexMedium
                        .copyWith(color: context.themeExtensions.white),
                  ).paddingSymmetric(horizontal: 20),
                ],
              ).paddingSymmetric(vertical: 13),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => controller.loadData(isRefesh: true),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Obx(() => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          for (var point in controller.coursePoints)
                            _buildPointItem(
                                context, point, controller.coursePoints.indexOf(point)),
                          const SizedBox(height: 150),
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

  Widget _buildPointItem(BuildContext context, SingleCoursePointsObject? point, int index) {
    return Container(
        color: index.isOdd == true
            ? context.themeExtensions.alabaster
            : context.themeExtensions.transparent,
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
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '${index + 1}',
                          style: context.themeExtensions.subTexMedium
                              .copyWith(color: context.themeExtensions.black),
                        ),
                      ),
                    )
                  ],
                ).paddingSymmetric(horizontal: 20),
                Expanded(
                  child: Stack(
                    children: [
                      AutoSizeText(
                        LocaleKeys.pointName.tr,
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.transparent),
                      ),
                      AutoSizeText(
                        point?.pointname ?? '',
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.black),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    AutoSizeText(
                      LocaleKeys.point.tr,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.transparent),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          point?.point?.toString() ?? '',
                          style: context.themeExtensions.subTexMedium
                              .copyWith(color: context.themeExtensions.black),
                        ),
                      ),
                    )
                  ],
                ).paddingSymmetric(horizontal: 20),
              ],
            ).paddingSymmetric(vertical: 13),
          ],
        ));
  }
}
