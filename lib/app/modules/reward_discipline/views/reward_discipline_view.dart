// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/decorated_tab_bar.dart';

import 'package:get/get.dart';

import '../controllers/reward_discipline_controller.dart';
import 'discipline/views/discipline_view.dart';
import 'reward/views/reward_view.dart';

class RewardDisciplineView extends BaseView<RewardDisciplineController> {
  RewardDisciplineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              BaseAppBarWidget(
                title: LocaleKeys.rewardDiscipline.tr,
              ),
              const SizedBox(height: 7),
              DecoratedTabBar(
                tabBar: TabBar(
                  unselectedLabelStyle: context.themeExtensions.subTex
                      .copyWith(color: context.themeExtensions.textGrey),
                  labelStyle: context.themeExtensions.subTexMedium
                      .copyWith(color: context.themeExtensions.black),
                  labelColor: context.themeExtensions.black,
                  indicatorColor: context.themeExtensions.mainGreen,
                  tabs: [
                    Tab(
                      text: LocaleKeys.reward.tr,
                    ),
                    Tab(
                      text: LocaleKeys.discipline.tr,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: context.themeExtensions.black.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: TabBarView(
                    children: <Widget>[
                      RewardView(),
                      DisciplineView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
