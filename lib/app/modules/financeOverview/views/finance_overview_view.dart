// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/base/custom_appbar.dart';
import 'package:ftu_lms/app/modules/utils/disable_scroll_glow_behavior.dart';
import 'package:ftu_lms/data/bean/finance_response_object/semester_finance.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/int_ext.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../controllers/finance_overview_controller.dart';

class FinanceOverviewView extends BaseView<FinanceOverviewController> {
  FinanceOverviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Assets.images.profileHeaderBg.image(width: double.infinity, fit: BoxFit.cover),
              SafeArea(
                top: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomAppBar(
                        context: context,
                        backGroundColor: context.themeExtensions.transparent,
                        title: LocaleKeys.financeInformations.tr),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: // Figma Flutter Generator Rectangle27Widget - RECTANGLE
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
                              color: context.themeExtensions.black.withOpacity(0.05), width: 1),
                        ),
                        child: Obx(() => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildTotalItem(
                                    context: context,
                                    title: LocaleKeys.totalAmountNeedToPay.tr,
                                    value:
                                        '${controller.financeInfo.value?.totalFee?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                                    isFirst: true),
                                _buildTotalItem(
                                  context: context,
                                  title: LocaleKeys.totalAmountHasPayed.tr,
                                  value:
                                      '${controller.financeInfo.value?.feePaid?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                                ),
                                _buildTotalItem(
                                    context: context,
                                    title: LocaleKeys.excessFee.tr,
                                    value:
                                        '${controller.financeInfo.value?.excessFee?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                                    isLast: true),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ScrollConfiguration(
                behavior: DisableScrollGlowBehavior(),
                child: Obx(() => ListView(
                      padding: const EdgeInsets.all(20),
                      shrinkWrap: true,
                      children: [
                        for (var semester in controller.financeInfo.value?.semesters ?? [])
                          _buildSemesterItem(context: context, semester: semester),
                      ],
                    ))),
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
    );
  }

  Widget _buildTotalItem(
      {required BuildContext context,
      String? title,
      String? value,
      bool? isFirst = false,
      bool? isLast = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isFirst == false ? const SizedBox(height: 13) : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: AutoSizeText(title ?? '',
                  style: context.themeExtensions.paragraph
                      .copyWith(color: context.themeExtensions.textGrey)),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: AutoSizeText(
                value ?? '',
                style: isFirst == true
                    ? context.themeExtensions.paragraphSemiBold.copyWith(
                        color: _valueColor(context: context, isFirst: isFirst, isLast: isLast))
                    : context.themeExtensions.paragraph.copyWith(
                        color: _valueColor(context: context, isFirst: isFirst, isLast: isLast)),
              ),
            )
          ],
        ),
        isLast == false ? const SizedBox(height: 13) : const SizedBox.shrink(),
        isLast == false
            ? Container(
                width: double.infinity,
                height: 1,
                color: context.themeExtensions.black.withOpacity(0.1))
            : const SizedBox.shrink(),
      ],
    );
  }

  Color _valueColor({required BuildContext context, bool? isFirst = false, bool? isLast = false}) {
    if (isFirst == true) return context.themeExtensions.black;
    if (isLast == true) return context.themeExtensions.red;
    return context.themeExtensions.dartmouthGreen;
  }

  Widget _buildSemesterItem({required BuildContext context, SemesterFinance? semester}) {
    return InkWell(
      onTap: () => controller.navigateToFinaceBySemester(semester),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
              border: Border.all(color: context.themeExtensions.black.withOpacity(0.05), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  '${LocaleKeys.schoolYearTitle.tr} ${semester?.year} - ${LocaleKeys.semesterTitle.tr} ${semester?.semester}',
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.black),
                ),
                Assets.images.arrowRight.svg(
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                    color: context.themeExtensions.textGrey)
              ],
            ),
          ),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}
