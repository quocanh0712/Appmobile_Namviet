// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/base/custom_appbar.dart';
import 'package:ftu_lms/app/modules/utils/disable_scroll_glow_behavior.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/extensions/int_ext.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../controllers/finance_by_semester_controller.dart';

class FinanceBySemesterView extends BaseView<FinanceBySemesterController> {
  FinanceBySemesterView({Key? key}) : super(key: key);
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
              Assets.images.profileHeaderBg
                  .image(width: double.infinity, fit: BoxFit.cover),
              SafeArea(
                top: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(() => CustomAppBar(
                        context: context,
                        backGroundColor: context.themeExtensions.transparent,
                        title:
                            '${LocaleKeys.schoolYearTitle.tr} ${controller.semester.value?.year} - ${LocaleKeys.semesterTitle.tr} ${controller.semester.value?.semester}')),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: // Figma Flutter Generator Rectangle27Widget - RECTANGLE
                          Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: context.themeExtensions.black
                                    .withOpacity(0.05),
                                offset: const Offset(0, 4),
                                blurRadius: 10)
                          ],
                          color: context.themeExtensions.white,
                          border: Border.all(
                              color: context.themeExtensions.black
                                  .withOpacity(0.05),
                              width: 1),
                        ),
                        child: Obx(() => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buiildTotalItem(
                                    context: context,
                                    title: LocaleKeys
                                        .totalAmountNeedToPayBySemester.tr,
                                    value:
                                        '${controller.semester.value?.totalFee?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                                    isFirst: true),
                                _buiildTotalItem(
                                  context: context,
                                  title: LocaleKeys.totalAmountHasPayed.tr,
                                  value:
                                      '${controller.semester.value?.feePaid?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                                ),
                                _buiildTotalItem(
                                    context: context,
                                    title: LocaleKeys.excessFee.tr,
                                    value:
                                        '${controller.semester.value?.excessFee?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: AutoSizeText(
              LocaleKeys.lstBills.tr,
              style: context.themeExtensions.subTexMedium
                  .copyWith(color: context.themeExtensions.textGrey),
            ),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: DisableScrollGlowBehavior(),
              child: Obx(() => ListView(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    shrinkWrap: true,
                    children: [
                      for (var bill in controller.lstBills)
                        _buildSemesterItem(
                            context: context,
                            bill: bill,
                            isFirst: controller.lstBills.indexOf(bill) == 0,
                            isLast: (controller.lstBills.indexOf(bill) ==
                                controller.lstBills.length - 1)),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 12, right: 12),
            child: InkWell(
              onTap: () => controller.doPayment(),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(Assets.images.butGradientBg.path),
                        fit: BoxFit.cover)),
                child: Align(
                    alignment: FractionalOffset.center,
                    child: AutoSizeText(
                      LocaleKeys.billPaymentTitle.tr,
                      style: Get.context?.themeExtensions.paragraph
                          .copyWith(color: Get.context?.themeExtensions.white),
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
    );
  }

  Widget _buiildTotalItem(
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
                        color: _valueColor(
                            context: context, isFirst: isFirst, isLast: isLast))
                    : context.themeExtensions.paragraph.copyWith(
                        color: _valueColor(
                            context: context,
                            isFirst: isFirst,
                            isLast: isLast)),
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

  Color _valueColor(
      {required BuildContext context,
      bool? isFirst = false,
      bool? isLast = false}) {
    if (isFirst == true) return context.themeExtensions.black;
    if (isLast == true) return context.themeExtensions.red;
    return context.themeExtensions.dartmouthGreen;
  }

  Widget _buildSemesterItem(
      {required BuildContext context,
      SemesterBillResponseObject? bill,
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
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    bill?.feeName ?? '',
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.textColor),
                  ),
                  AutoSizeText(
                    '${LocaleKeys.semester.tr} ${controller.semester.value?.semester} - ${LocaleKeys.schoolYearTitle.tr} ${controller.semester.value?.year?.replaceAll(RegExp(r' - '), '/')}',
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.textGrey),
                  )
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    '${bill?.value?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                    style: context.themeExtensions.paragraph.copyWith(
                        color: bill?.status != BillStatus.PAID
                            ? context.themeExtensions.red
                            : context.themeExtensions.black),
                    textAlign: TextAlign.end,
                  ),
                  bill?.status != BillStatus.PAID
                      ? const SizedBox(height: 7)
                      : const SizedBox.shrink(),
                  bill?.status != BillStatus.PAID
                      ? InkWell(
                          onTap: () => controller.navigateToPayBill(bill),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 7),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                color: context.themeExtensions.white,
                                border: Border.all(
                                  color: context.themeExtensions.bgGrey,
                                  width: 1,
                                ),
                              ),
                              child: AutoSizeText(
                                LocaleKeys.payNow.tr,
                                style: context.themeExtensions.subTexMedium
                                    .copyWith(
                                        color:
                                            context.themeExtensions.mainGreen),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
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
}
