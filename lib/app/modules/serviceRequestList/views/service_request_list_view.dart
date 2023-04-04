// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/allServiceRequestList/views/all_service_request_list_view.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/approvedServiceRequestList/views/approved_service_request_list_view.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/rejectedServiceRequestList/views/rejected_service_request_list_view.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/waitingServiceRequestList/views/waiting_service_request_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/decorated_tab_bar.dart';
import 'package:get/get.dart';

import '../controllers/service_request_list_controller.dart';

class ServiceRequestListView extends BaseView<ServiceRequestListController> {
  ServiceRequestListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              BaseAppBarWidget(
                title: LocaleKeys.serviceRequestList.tr,
              ),
              const SizedBox(height: 7),
              DecoratedTabBar(
                tabBar: TabBar(
                  isScrollable: true,
                  unselectedLabelStyle: context.themeExtensions.subTex
                      .copyWith(color: context.themeExtensions.textGrey),
                  labelStyle: context.themeExtensions.subTexMedium
                      .copyWith(color: context.themeExtensions.black),
                  labelColor: context.themeExtensions.black,
                  indicatorColor: context.themeExtensions.mainGreen,
                  tabs: [
                    Tab(
                      text: LocaleKeys.allRequests.tr,
                    ),
                    Tab(
                      text: LocaleKeys.waitingRequests.tr,
                    ),
                    Tab(
                      text: LocaleKeys.approvedRequests.tr,
                    ),
                    Tab(
                      text: LocaleKeys.rejectedRequests.tr,
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
                      AllServiceRequestListView(),
                      WaitingServiceRequestListView(),
                      ApprovedServiceRequestListView(),
                      RejectedServiceRequestListView(),
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
