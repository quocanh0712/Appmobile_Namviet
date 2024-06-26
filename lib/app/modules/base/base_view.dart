// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// ignore_for_file: depend_on_referenced_packages
import 'package:dart_extensions/dart_extensions.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import 'base_controller.dart';

abstract class BaseView<C extends BaseController> extends GetView<C> {
  BaseView({Key? key}) : super(key: key);

  var loadingDialogIsShown = false;

  void showLoadingDialog() {
    Fimber.d('showLoadingDialog()');
    loadingDialogIsShown = true;
    Get.dialog(const Center(child: CircularProgressIndicator()), barrierDismissible: false);
  }

  void hideLoadingDialog() {
    Fimber.d("hideLoadingDialog()");
    if (loadingDialogIsShown) {
      loadingDialogIsShown = false;
      Get.back();
    }
  }

  void showErrorDialog(BuildContext context, {String? messageError}) {
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
          TextButton(
            style: ElevatedButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            child: Text(
              LocaleKeys.close.tr,
              style: Get.context?.themeExtensions.paragraphSemiBold
                  .copyWith(color: Get.context?.themeExtensions.mainGreen),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context,
      {String? title, String? message, Function? onAction, String? actionTitle}) {
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
          TextButton(
            style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                backgroundColor: context.themeExtensions.transparent),
            child: Text(
              actionTitle ?? LocaleKeys.close.tr,
              style: Get.context?.themeExtensions.paragraphSemiBold
                  .copyWith(color: Get.context?.themeExtensions.mainGreen),
            ),
            onPressed: () {
              Get.back();
              onAction?.call();
            },
          ),
        ],
      ),
    );
  }
}
