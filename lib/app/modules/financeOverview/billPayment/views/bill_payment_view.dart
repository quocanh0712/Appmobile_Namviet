// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/int_ext.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:get/get.dart';

import '../controllers/bill_payment_controller.dart';

class BillPaymentView extends BaseView<BillPaymentController> {
  BillPaymentView({Key? key}) : super(key: key);
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
              title: LocaleKeys.qrScan.tr,
            ),
            const SizedBox(height: 56),
            AutoSizeText(
              LocaleKeys.qrScanMessage.tr,
              style:
                  context.themeExtensions.paragraph.copyWith(color: context.themeExtensions.black),
            ).paddingSymmetric(horizontal: 20),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
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
              child: Obx(() => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Utils.imageFromBase64String(controller.bill.value?.qrCode ?? '',
                      width: 250, height: 280, fit: BoxFit.cover))),
            ).paddingSymmetric(horizontal: 20, vertical: 16),
            Align(
              alignment: Alignment.center,
              child: AutoSizeText(
                LocaleKeys.totalAmount.tr,
                style: context.themeExtensions.paragraph
                    .copyWith(color: context.themeExtensions.textGrey),
              ),
            ),
            Obx(() => Align(
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    '${controller.bill.value?.value?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
                    style: context.themeExtensions.heading2
                        .copyWith(color: context.themeExtensions.black),
                  ),
                )),
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
                    controller.saveQRCode();
                  },
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: AutoSizeText(
                        LocaleKeys.saveQRCode.tr,
                        style: context.themeExtensions.heading3
                            .copyWith(color: context.themeExtensions.white),
                      )),
                ),
              ),
            ).paddingSymmetric(horizontal: 20),
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
}
