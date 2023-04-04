// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/int_ext.dart';
import 'package:get/get.dart';

import '../controllers/tuition_controller.dart';

class TuitionView extends BaseView<TuitionController> {
  TuitionView({Key? key}) : super(key: key);
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
              title: LocaleKeys.billPaymentTitle.tr,
            ),
            Container(
              width: double.infinity,
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
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(() => AutoSizeText(
                          controller.bill.value?.feeName ?? '',
                          style: context.themeExtensions.paragraphSemiBold
                              .copyWith(color: context.themeExtensions.black),
                        )),
                    AutoSizeText(
                      '${LocaleKeys.paymentSemester.tr}: ${LocaleKeys.semesterTitle.tr} ${controller.bill.value?.semester}',
                      style: context.themeExtensions.subTex
                          .copyWith(color: context.themeExtensions.textGrey),
                    ).marginSymmetric(vertical: 8),
                    AutoSizeText(
                      '${LocaleKeys.schoolYearTitle.tr}: ${controller.bill.value?.year}',
                      style: context.themeExtensions.subTex
                          .copyWith(color: context.themeExtensions.textGrey),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 1,
                      color: context.themeExtensions.black.withOpacity(0.1),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AutoSizeText(
                          LocaleKeys.totalAmount.tr,
                          style: context.themeExtensions.smallTex
                              .copyWith(color: context.themeExtensions.textGrey),
                        ),
                        const SizedBox(width: 13),
                        AutoSizeText(
                          '${controller.bill.value?.value?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                          style: context.themeExtensions.heading3
                              .copyWith(color: context.themeExtensions.black),
                        )
                      ],
                    )
                  ],
                ).paddingSymmetric(vertical: 13, horizontal: 13),
              ),
            ).paddingSymmetric(horizontal: 20, vertical: 16),
            const Expanded(flex: 1, child: SizedBox.expand()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(Assets.images.butGradientBg.path), fit: BoxFit.cover)),
                child: InkWell(
                  onTap: () {
                    controller.performPayment();
                  },
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: AutoSizeText(
                        LocaleKeys.payNowTitle.tr,
                        style: context.themeExtensions.heading3
                            .copyWith(color: context.themeExtensions.white),
                      )),
                ),
              ),
            ).paddingSymmetric(horizontal: 20),
          ],
        ),
      ),
    );
  }
}
