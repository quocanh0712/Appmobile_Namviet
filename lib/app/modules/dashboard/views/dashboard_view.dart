// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ftu_lms/app/modules/appInformation/bindings/app_information_binding.dart';
import 'package:ftu_lms/app/modules/appInformation/views/app_information_view.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/checkin/views/checkin_view.dart';
import 'package:ftu_lms/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:ftu_lms/app/modules/dashboard/models/bot_nav_items.dart';
import 'package:ftu_lms/app/modules/home/bindings/home_binding.dart';
import 'package:ftu_lms/app/modules/home/views/home_view.dart';
import 'package:ftu_lms/app/modules/notification/bindings/notification_binding.dart';
import 'package:ftu_lms/app/modules/notification/views/notification_view.dart';
import 'package:ftu_lms/app/modules/personal/bindings/personal_binding.dart';
import 'package:ftu_lms/app/modules/personal/views/personal_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/colors.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../../schedule_checkin/views/request_checkin_view.dart';

class DashboardView extends StatefulHookWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  late PageController pageController;
  final autoSizeGroup = AutoSizeGroup();
  late StreamSubscription<bool> keyboardSubscription;

  final DashboardController dashboardController =
      Get.put(DashboardController(), permanent: false);

  final GlobalKey<CheckinViewState> checkinGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    pageController =
        usePageController(keepPage: true, initialPage: homeTabIndex);
    return WillPopScope(
      onWillPop: () => _showExitPopup(context),
      child: Stack(
        children: [
          Scaffold(
            extendBody: true,
            body: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                _updateCurrentTabIndex(index);
                _setupQRScannerCamera(index);
                _changeSystemStatusBarIconColor(index);
              },
              children: <Widget>[
                KeepAliveWidget(
                    child: HomeView(
                  bindingCreator: () => HomeBinding(),
                  pageController: pageController,
                )),
                KeepAliveWidget(
                  safeAreaTop: true,
                  child: NotificationView(
                      bindingCreator: () => NotificationBinding()),
                ),
                KeepAliveWidget(child: CheckinView(key: checkinGlobalKey)),
                KeepAliveWidget(
                    child: AppInformationView(
                        bindingCreator: () => AppInformationBinding())),
                KeepAliveWidget(
                    child:
                        PersonalView(bindingCreator: () => PersonalBinding())),
              ],
            ),
            floatingActionButton: InkWell(
              child: Assets.images.icCheckin
                  .image(width: 56, height: 56, fit: BoxFit.cover),
              onTap: () {
                pageController.jumpToPage(checkInTabIndex);
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: buildBottomNavigationBar(context),
          ),
          SafeArea(
            bottom: true,
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    pageController.jumpToPage(checkInTabIndex);
                  },
                  child: Obx(() => Container(
                        padding: const EdgeInsets.only(top: 32, bottom: 7),
                        child: AutoSizeText(
                          LocaleKeys.checkin.tr,
                          maxLines: 1,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              color:
                                  (dashboardController.currentTabIndex.value ==
                                          -1)
                                      ? LMSColors.mainGreen
                                      : LMSColors.textGrey),
                        ),
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  buildBottomNavigationBar(BuildContext context) {
    return Obx(() => AnimatedBottomNavigationBar.builder(
          height: 68,
          itemCount: botNavItems.length,
          tabBuilder: (int index, bool isActive) {
            final botNavItem = botNavItems[index];
            final color =
                (isActive && dashboardController.currentTabIndex.value != -1)
                    ? botNavItem.activeColor
                    : botNavItem.inactiveColor;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9, top: 7, right: 9),
                      child: botNavItems[index].icon?.svg(
                              width: 25,
                              height: 25,
                              fit: BoxFit.cover,
                              color: color) ??
                          const SizedBox.shrink(),
                    ),
                    index == notificationTabIndex
                        ? Positioned(
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: context.themeExtensions.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              constraints: const BoxConstraints(
                                  minWidth: 10, minHeight: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  dashboardController.notiCount.value,
                                  style: context.themeExtensions.subTexMedium
                                      .copyWith(
                                          color: context.themeExtensions.white,
                                          fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(height: 4),
                AutoSizeText(
                  botNavItem.title ?? "",
                  maxLines: 1,
                  style: TextStyle(color: color),
                  group: autoSizeGroup,
                )
              ],
            );
          },
          backgroundColor: Colors.white54,
          activeIndex: dashboardController.currentTabIndex.value,
          splashSpeedInMilliseconds: 68,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: 20,
          rightCornerRadius: 20,
          onTap: (index) => {
            dashboardController.currentTabIndex.value = index,
            if (index < checkInTabIndex) {pageController.jumpToPage(index)},
            if (index >= checkInTabIndex) {pageController.jumpToPage(index + 1)}
          },
          shadow: BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 12,
              spreadRadius: 0.5,
              color: context.themeExtensions.lightSilver),
        ));
  }

  Future<bool> _showExitPopup(BuildContext context) async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              LocaleKeys.exitApp.tr,
              style: context.themeExtensions.heading2
                  .copyWith(color: context.themeExtensions.mainGreen),
            ),
            content: Text(
              LocaleKeys.exitAppMessage.tr,
              style: context.themeExtensions.paragraph
                  .copyWith(color: context.themeExtensions.black),
            ),
            actions: [
              ElevatedButton(
                //return false when click on "NO"
                onPressed: () => Get.back(result: false, closeOverlays: true),
                style: ElevatedButton.styleFrom(
                    backgroundColor: context.themeExtensions.mainGreen),
                child: Text(
                  LocaleKeys.no.tr,
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.white),
                ),
              ),
              ElevatedButton(
                //return true when click on "Yes"
                onPressed: () => Get.back(result: true, closeOverlays: true),
                style: ElevatedButton.styleFrom(
                    backgroundColor: context.themeExtensions.textGrey),
                child: Text(
                  LocaleKeys.yes.tr,
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.white),
                ),
              ),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }

  void _changeSystemStatusBarIconColor(int tabIndex) {
    Fimber.d("_changeSystemStatusBarIconColor(int index)");
    if (tabIndex == notificationTabIndex) {
      StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    } else {
      StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
    }
  }

  void _updateCurrentTabIndex(int tabIndex) {
    if (tabIndex < checkInTabIndex) {
      dashboardController.currentTabIndex.value = tabIndex;
    }
    if (tabIndex == checkInTabIndex) {
      dashboardController.currentTabIndex.value = -1;
    }
    if (tabIndex > checkInTabIndex) {
      dashboardController.currentTabIndex.value = tabIndex - 1;
    }
  }

  void _setupQRScannerCamera(int tabIndex) {
    if (tabIndex < checkInTabIndex) {
      checkinGlobalKey.currentState?.pauseQRScannerCamera();
    }
    if (tabIndex == checkInTabIndex) {
      checkinGlobalKey.currentState?.resumeQRScannerCamera();
    }
    if (tabIndex > checkInTabIndex) {
      checkinGlobalKey.currentState?.pauseQRScannerCamera();
    }
  }
}
