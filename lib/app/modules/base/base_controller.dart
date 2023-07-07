// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

abstract class BaseController<T> extends GetxController with StateMixin<T> {
  var isLoading = false.obs;
  var isRefreshing = false.obs;
  Rx<String?> isError = ''.obs;
  var hasNoData = false.obs;
  Rx<String?> showMessage = ''.obs;

  @override
  void dispose() {
    EasyLoading.dismiss();
    super.dispose();
  }

  void showAlertDialog(String title, String message, Function onAction) {
    Get.dialog(
      AlertDialog(
        contentPadding: const EdgeInsets.all(20),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        title: Text(
          title,
          style: Get.context?.themeExtensions.heading2
              .copyWith(color: Get.context?.themeExtensions.mainGreen),
        ),
        content: Text(
          message,
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
              onAction.call();
            },
          ),
        ],
      ),
    );
  }
}
