// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_view.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/controllers/base_service_request_list_controller.dart';
import 'package:ftu_lms/data/bean/service_request_object/service_request_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

abstract class BaseServiceRequestListView<C extends BaseInfiniteListController>
    extends BaseInfiniteListView<C> {
  BaseServiceRequestListView({Key? key}) : super(key: key);

  @override
  bool? get appBarIsHidden => true;

  @override
  Widget buildItemViews(BuildContext context, {item, int? index}) {
    if (item is ServiceRequestObject) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          index != 0
              ? Container(
                  height: 1,
                  color: context.themeExtensions.lightSilver,
                )
              : const SizedBox.shrink(),
          InkWell(
            onTap: () => navigateDetailServiceRequest(index),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AutoSizeText(
                        item.formname ?? '',
                        style: context.themeExtensions.paragraphSemiBold
                            .copyWith(color: context.themeExtensions.black),
                      ),
                      const SizedBox(height: 3),
                      if (item.updateTime != null)
                        AutoSizeText(
                          DateTimeUtils.formatDateTime(item.updateTime!, timeAndDate),
                          style: context.themeExtensions.subTex
                              .copyWith(color: context.themeExtensions.textGrey),
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        color: _retrieveStatusColor(context, item.status),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: AutoSizeText(
                      _retrieveStatusString(item.status),
                      style: context.themeExtensions.smallTex
                          .copyWith(color: _retrieveStatusColor(context, item.status)),
                    )),
              ],
            ).paddingSymmetric(vertical: 14),
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }

  String _retrieveStatusString(int? status) {
    if (status == ServiceRequestStatus.all.value) return LocaleKeys.allRequests.tr;
    if (status == ServiceRequestStatus.waiting.value) return LocaleKeys.waitingRequests.tr;
    if (status == ServiceRequestStatus.approved.value) return LocaleKeys.approvedRequests.tr;
    if (status == ServiceRequestStatus.rejected.value) return LocaleKeys.rejectedRequests.tr;
    return '';
  }

  Color _retrieveStatusColor(BuildContext context, int? status) {
    if (status == ServiceRequestStatus.waiting.value) return context.themeExtensions.orange;
    if (status == ServiceRequestStatus.approved.value) return context.themeExtensions.mainGreen;
    if (status == ServiceRequestStatus.rejected.value) return context.themeExtensions.red;
    return context.themeExtensions.mainGreen;
  }

  void navigateDetailServiceRequest(int? index) {}
}
