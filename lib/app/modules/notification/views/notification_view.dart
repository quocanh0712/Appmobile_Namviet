// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_lis_view_with_binding_creator.dart';
import 'package:ftu_lms/app/modules/notification/bindings/notification_binding.dart';
import 'package:ftu_lms/data/bean/notification_object/notification_object.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView
    extends BaseInfiniteListViewWithCreator<NotificationBinding, NotificationController> {
  NotificationView({super.key, required super.bindingCreator});

  @override
  AppBarActions? get appBarActions => (context) => <Widget>[
        IconButton(
          onPressed: () => controller.items.isNotEmpty == true
              ? showAlertDialog(context,
                  title: LocaleKeys.notification.tr,
                  message: LocaleKeys.readAllNotificationMessage.tr,
                  onAction: () => controller.readAllNotifications(),
                  actionTitle: LocaleKeys.agree.tr)
              : () {},
          icon: Assets.images.icReadAll
              .image(width: 24, height: 24, color: context.themeExtensions.textColor),
        )
      ];

  @override
  Widget buildItemViews(BuildContext context, {item, int? index}) {
    if (item is NotificationObject) {
      return _buildItem(context, item, index);
    }
    return const SizedBox.shrink();
  }

  Widget _buildItem(BuildContext context, NotificationObject? item, int? index) {
    if (item?.isLabel == true) return _buildLabel(context, item, isFirst: index == 0);
    return _buildNotificationItem(context, item);
  }

  Widget _buildLabel(BuildContext context, NotificationObject? item, {bool? isFirst = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        isFirst == true ? const SizedBox(height: 15) : const SizedBox(height: 30),
        AutoSizeText(
          '${item?.createdAt?.EEEE} - ${item?.createdAt?.date}/${item?.createdAt?.month}/${item?.createdAt?.year}',
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
        ).paddingSymmetric(horizontal: 20),
        const SizedBox(height: 9),
      ],
    );
  }

  Widget _buildNotificationItem(BuildContext context, NotificationObject? notificationObject) {
    return InkWell(
      onTap: () => controller.readNotification(notificationObject),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: notificationObject?.status == 0
                    ? context.themeExtensions.black.withOpacity(0.03)
                    : context.themeExtensions.transparent,
                padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                        imageUrl: notificationObject?.icon ?? '',
                        width: 24,
                        height: 24,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Assets.images.icEmptyWalletChange
                            .image(
                                width: 24,
                                height: 23,
                                fit: BoxFit.cover,
                                color: context.themeExtensions.textGrey),
                        fit: BoxFit.cover),
                    const SizedBox(width: 15),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            notificationObject?.title ?? '',
                            maxLines: 2,
                            style: context.themeExtensions.paragraph
                                .copyWith(color: context.themeExtensions.textColor),
                          ),
                          const SizedBox(height: 7),
                          AutoSizeText(
                            notificationObject?.body ?? '',
                            maxLines: 1,
                            style: context.themeExtensions.subTex
                                .copyWith(color: context.themeExtensions.textGrey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              notificationObject?.isLast != true
                  ? Container(
                      height: 1, color: context.themeExtensions.chineseBlack.withOpacity(0.1))
                  : const SizedBox.shrink()
            ],
          ),
        ],
      ),
    );
  }
}
