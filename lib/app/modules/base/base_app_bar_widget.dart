// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

typedef ExpandHeaderWidget = Widget Function();
typedef AppBarActions = List<Widget>? Function(BuildContext context);

class BaseAppBarWidget extends StatelessWidget {
  bool? isBackButtonShown = true;
  ExpandHeaderWidget? expandHeaderViewBuilder;
  AppBarActions? appBarActions;
  String? title;
  final bool? safeAreaLeft;
  final bool? safeAreaTop;
  final bool? safeAreaRight;
  final bool? safeAreaBottom;

  BaseAppBarWidget({
    super.key,
    this.expandHeaderViewBuilder,
    this.appBarActions,
    this.title,
    this.safeAreaLeft,
    this.safeAreaTop,
    this.safeAreaRight,
    this.safeAreaBottom,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: safeAreaLeft ?? false,
      top: safeAreaTop ?? false,
      right: safeAreaRight ?? false,
      bottom: safeAreaBottom ?? false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Navigator.canPop(context) || expandHeaderViewBuilder != null
                    ? InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                          padding: const EdgeInsets.only(top: 9, bottom: 9, right: 9),
                          child: Assets.images.icArrowLeft.svg(
                              width: 24, height: 24, color: context.themeExtensions.textColor),
                        ),
                      )
                    : const SizedBox.shrink(),
                const SizedBox(width: 0),
                Expanded(child: expandHeaderViewBuilder?.call() ?? Container()),
                const SizedBox(width: 0),
                if (appBarActions?.call(context)?.isNotEmpty == true) ...{
                  Row(children: appBarActions?.call(context) ?? []),
                }
              ],
            ),
            title?.isNotEmpty == true
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title ?? "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontSize: 25, fontWeight: FontWeight.bold),
                    ))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
