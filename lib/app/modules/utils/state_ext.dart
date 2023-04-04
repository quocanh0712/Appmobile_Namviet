// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:dart_extensions/dart_extensions.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

extension StateExt on State {
  void showErrorDialog(
    BuildContext context, {
    String? messageError,
    Function? leftAction,
    String? leftActionTitle,
    Function? rightAction,
    String? rightActionTitle,
  }) {
    Get.dialog(
      AlertDialog(
        contentPadding: const EdgeInsets.all(20),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        title: Text(
          LocaleKeys.titleDialog.tr,
          style: Get.context?.themeExtensions.heading2
              .copyWith(color: Get.context?.themeExtensions.mainGreen),
        ),
        content: Text(
          messageError?.isEmptyOrNull == true
              ? LocaleKeys.commonErrorMessage.tr
              : messageError ?? '',
          style: Get.context?.themeExtensions.paragraph
              .copyWith(color: Get.context?.themeExtensions.black),
        ),
        actions: [
          leftActionTitle?.isNullOrWhiteSpace == true
              ? const SizedBox.shrink()
              : TextButton(
                  style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: context.themeExtensions.transparent),
                  child: Text(
                    leftActionTitle ?? LocaleKeys.close.tr,
                    style: Get.context?.themeExtensions.paragraphSemiBold
                        .copyWith(color: Get.context?.themeExtensions.mainGreen),
                  ),
                  onPressed: () {
                    leftAction?.call();
                    Get.back();
                  },
                ),
          rightActionTitle?.isNullOrWhiteSpace == true
              ? const SizedBox.shrink()
              : TextButton(
                  style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: context.themeExtensions.transparent),
                  child: Text(
                    rightActionTitle ?? LocaleKeys.close.tr,
                    style: Get.context?.themeExtensions.paragraphSemiBold
                        .copyWith(color: Get.context?.themeExtensions.mainGreen),
                  ),
                  onPressed: () {
                    rightAction?.call();
                    Get.back();
                  },
                ),
        ],
      ),
    );
  }

  void showAlertDialog(
    BuildContext context, {
    String? title,
    String? message,
    Function? leftAction,
    String? leftActionTitle,
    Function? rightAction,
    String? rightActionTitle,
  }) {
    Fimber.d(
        "showAlertDialog(BuildContext context, {title? $title, message? $message, FunleftActionction? $leftAction, leftActionTitle? $leftActionTitle, rightAction? $rightAction, rightActionTitle? $rightActionTitle})");
    Get.dialog(
      AlertDialog(
        contentPadding: const EdgeInsets.all(20),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        title: Text(
          title ?? '',
          style: Get.context?.themeExtensions.heading2
              .copyWith(color: Get.context?.themeExtensions.mainGreen),
        ),
        content: Text(
          message ?? '',
          style: Get.context?.themeExtensions.paragraph
              .copyWith(color: Get.context?.themeExtensions.black),
        ),
        actions: [
          leftActionTitle?.isNullOrWhiteSpace == true
              ? const SizedBox.shrink()
              : TextButton(
                  style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: context.themeExtensions.transparent),
                  child: Text(
                    leftActionTitle ?? '',
                    style: Get.context?.themeExtensions.paragraphSemiBold
                        .copyWith(color: Get.context?.themeExtensions.mainGreen),
                  ),
                  onPressed: () {
                    leftAction?.call();
                    Get.back();
                  },
                ),
          rightActionTitle?.isNullOrWhiteSpace == true
              ? const SizedBox.shrink()
              : TextButton(
                  style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: context.themeExtensions.transparent),
                  child: Text(
                    rightActionTitle ?? '',
                    style: Get.context?.themeExtensions.paragraphSemiBold
                        .copyWith(color: Get.context?.themeExtensions.mainGreen),
                  ),
                  onPressed: () {
                    rightAction?.call();
                    Get.back();
                  },
                ),
        ],
      ),
    );
  }
}
