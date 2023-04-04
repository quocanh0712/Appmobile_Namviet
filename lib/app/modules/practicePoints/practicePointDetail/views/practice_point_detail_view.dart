// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/data/bean/practice_point_detail_response_object/child_practice_criteria_object.dart';
import 'package:ftu_lms/data/bean/practice_point_detail_response_object/practice_point_detail_response_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../controllers/practice_point_detail_controller.dart';

class PracticePointDetailView extends BaseView<PracticePointDetailController> {
  PracticePointDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() =>
                BaseAppBarWidget(title: controller.practiceCriteria.value?.typeCriteriaName)),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Obx(() => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        for (var criteria in controller.lstPracticePoints)
                          _buildParentPoint(
                              context, criteria, controller.lstPracticePoints.indexOf(criteria))
                      ],
                    )),
              ),
            ),
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
      ),
    );
  }

  Widget _buildParentPoint(
      BuildContext context, PracticePointDetailResponseObject? criteria, int? index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        index != 0 ? const SizedBox(height: 7) : const SizedBox(height: 20),
        Container(
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
              width: 1,
            ),
          ),
          child: ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: AutoSizeText(
                    criteria?.criteriaName ?? '',
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.black),
                  ),
                ),
                const SizedBox(width: 7),
                AutoSizeText(
                  criteria?.score?.toString() ?? '',
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.mainGreen),
                ),
              ],
            ),
            iconColor: context.themeExtensions.semiGrey,
            collapsedIconColor: context.themeExtensions.semiGrey,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  color: context.themeExtensions.bgGrey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AutoSizeText(
                      '#',
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.semiGrey),
                    ).paddingSymmetric(horizontal: 13, vertical: 7),
                    Expanded(
                      flex: 1,
                      child: AutoSizeText(
                        LocaleKeys.childCriterias.tr,
                        style: context.themeExtensions.subTexMedium
                            .copyWith(color: context.themeExtensions.semiGrey),
                      ).paddingSymmetric(horizontal: 13, vertical: 7),
                    ),
                    AutoSizeText(
                      LocaleKeys.point.tr,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.semiGrey),
                    ).paddingSymmetric(horizontal: 13, vertical: 7),
                  ],
                ),
              ).paddingSymmetric(horizontal: 10),
              for (var childPoint in criteria?.criterias ?? [])
                _buildChildPoint(context, childPoint, criteria?.criterias?.indexOf(childPoint)),
              const SizedBox(height: 13),
            ],
          ),
        ).paddingSymmetric(horizontal: 20)
      ],
    );
  }

  Widget _buildChildPoint(BuildContext context, ChildPracticeCriteriaObject? point, int? index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        index != 0
            ? Container(
                height: 1,
                color: context.themeExtensions.black.withOpacity(0.1),
              ).paddingSymmetric(horizontal: 20)
            : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                AutoSizeText(
                  '#',
                  style: context.themeExtensions.subTexMedium
                      .copyWith(color: context.themeExtensions.transparent),
                ).paddingSymmetric(horizontal: 13, vertical: 7),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      '${(index ?? 0) + 1}',
                      style: context.themeExtensions.subTex
                          .copyWith(color: context.themeExtensions.textGrey),
                    ).paddingSymmetric(horizontal: 13, vertical: 7),
                  ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  AutoSizeText(
                    LocaleKeys.childCriterias.tr,
                    style: context.themeExtensions.subTexMedium
                        .copyWith(color: context.themeExtensions.transparent),
                  ).paddingSymmetric(horizontal: 13, vertical: 7),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: context.themeExtensions.subTex
                            .copyWith(color: context.themeExtensions.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: point?.levelCriteriaName ?? '',
                            style: context.themeExtensions.subTex
                                .copyWith(color: context.themeExtensions.black),
                          ),
                          TextSpan(
                            text: ' (0 - ${point?.maxPoint} ${LocaleKeys.point.tr.toLowerCase()})',
                            style: context.themeExtensions.smallTex
                                .copyWith(color: context.themeExtensions.textGrey),
                          ),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: 13, vertical: 7),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                AutoSizeText(
                  LocaleKeys.point.tr,
                  style: context.themeExtensions.subTexMedium
                      .copyWith(color: context.themeExtensions.transparent),
                ).paddingSymmetric(horizontal: 13, vertical: 7),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      point?.point?.toString() ?? '',
                      style: context.themeExtensions.subTex
                          .copyWith(color: context.themeExtensions.textColor),
                    ).paddingSymmetric(horizontal: 13, vertical: 7),
                  ),
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 10)
      ],
    );
  }
}
