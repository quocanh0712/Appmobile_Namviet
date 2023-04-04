// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/data/bean/notification_object/notification_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../controllers/notification_details_controller.dart';

class NotificationDetailsView extends BaseView<NotificationDetailsController> {
  NotificationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final notification = Get.arguments as NotificationObject?;
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            BaseAppBarWidget(title: LocaleKeys.notificationDetails.tr),
            const SizedBox(height: 20),
            AutoSizeText(
              notification?.title ?? '',
              style:
                  context.themeExtensions.heading2.copyWith(color: context.themeExtensions.black),
            ).paddingSymmetric(horizontal: 20),
            const SizedBox(height: 9),
            AutoSizeText(
              '${notification?.createdAt?.Hm} - ${notification?.createdAt?.EEEE}, ${notification?.createdAt?.date}/${notification?.createdAt?.month}/${notification?.createdAt?.year}',
              style:
                  context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
            ).paddingSymmetric(horizontal: 20),
            const SizedBox(height: 20),
            AutoSizeText(
              notification?.body ?? '',
              style: context.themeExtensions.paragraph
                  .copyWith(color: context.themeExtensions.textColor),
            ).paddingSymmetric(horizontal: 20)
          ],
        ),
      ),
    );
  }
}
