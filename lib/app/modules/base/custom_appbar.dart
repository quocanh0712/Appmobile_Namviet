// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/colors.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

class CustomAppBar extends AppBar {
  Color? backGroundColor;
  BuildContext? context;

  CustomAppBar({
    Key? key,
    required this.context,
    String? title,
    this.backGroundColor,
    bool? showHomeButton = false,
    List<Widget>? actions,
    Function? handleBackPress,
  }) : super(
            key: key,
            backgroundColor: backGroundColor ?? LMSColors.mainGreen,
            elevation: 0,
            title: AutoSizeText(
              title ?? "",
              style:
                  context?.themeExtensions.heading2.copyWith(color: context.themeExtensions.white),
            ),
            centerTitle: true,
            leading: ((context != null && Navigator.canPop(context))
                ? IconButton(
                    onPressed: () {
                      Fimber.d("CustomAppBar.backPress()");
                      handleBackPress != null ? handleBackPress.call() : Get.back();
                    },
                    icon: Assets.images.icArrowLeft
                        .svg(width: 24, height: 24, color: context.themeExtensions.white))
                : null),
            actions: [
              ...(actions ?? []),
              if (showHomeButton == true)
                IconButton(
                    onPressed: () {
                      Get.offNamedUntil(Routes.DASHBOARD, (Route<dynamic> route) => false);
                    },
                    icon: Assets.images.icHome.svg(fit: BoxFit.cover, width: 24, height: 24)),
            ]);
}
