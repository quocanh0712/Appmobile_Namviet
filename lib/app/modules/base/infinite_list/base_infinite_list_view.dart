// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/base/binding_creator.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

abstract class BaseInfiniteListView<C extends BaseInfiniteListController> extends BaseView<C> {
  BaseInfiniteListView({Key? key, BindingCreator? bindingCreator}) : super(key: key);

  bool? appBarIsHidden = false;

  AppBarActions? appBarActions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Visibility(
            visible: controller.hasNoData.value != true,
            child: Padding(
              padding: _evaluateTopPadding(context),
              child: RefreshIndicator(
                  key: controller.refreshIndicatorKey ?? GlobalKey(),
                  onRefresh: () => controller.fetchData(isRefresh: true),
                  child: GetBuilder<C>(
                    builder: (controller) => controller.items.isEmptyOrNull
                        ? const SizedBox.shrink()
                        : buildInfiniteList(),
                  )),
            ),
          ),
          appBarIsHidden == false
              ? BaseAppBarWidget(
                  title: LocaleKeys.notification.tr,
                  appBarActions: appBarActions,
                  //safeAreaTop: true,
                )
              : const SizedBox.shrink(),
          Obx(() {
            return Visibility(
              visible: controller.isError.value?.isNotBlank == true,
              child: Center(
                child: buildErrorLayout(context),
              ),
            );
          }),
          Obx(() {
            return Visibility(
              visible: controller.hasNoData.value == true,
              child: Padding(
                padding: _evaluateNoDataPadding(context),
                child: RefreshIndicator(
                  key: controller.refreshFromNoData ?? GlobalKey(),
                  onRefresh: () => controller.fetchData(isRefresh: true),
                  child: Stack(
                    children: [
                      Center(
                        child: buildHasNoDataLayout(context),
                      ),
                      ListView(),
                    ],
                  ),
                ),
              ),
            );
          }),
          Obx(() {
            if (controller.isLoading.value) {
              WidgetsBinding.instance.addPostFrameCallback((duration) {
                EasyLoading.instance.userInteractions = true;
                EasyLoading.show();
              });
            } else {
              WidgetsBinding.instance.addPostFrameCallback((duration) {
                EasyLoading.dismiss();
              });
            }
            return const SizedBox.shrink();
          }),
        ],
      ),
    );
  }

  Widget buildInfiniteList() {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: controller.items.length + (controller.hasMore == true ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == controller.items.length - (controller.nextPageThreshold) &&
            controller.hasMore == true) {
          controller.fetchData();
        }
        if (index == controller.items.length) {
          if (controller.loadMoreError == true) {
            return Center(
              child: InkWell(
                onTap: () => controller.fetchData(isLoadMore: true),
                child: controller.loadMoreError == true
                    ? buildErrorItemWhileLoadMore()
                    : const Padding(
                        padding: EdgeInsets.all(8),
                        child: CircularProgressIndicator(),
                      ),
              ),
            );
          } else {
            return controller.items.isNotEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: CircularProgressIndicator(),
                    ),
                  )
                : const SizedBox.shrink();
          }
        }
        return buildItemViews(context, item: controller.items[index], index: index);
      },
    );
  }

  Widget buildHasNoDataLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Assets.images.icHasNoData.image(width: 96, height: 96, fit: BoxFit.cover),
        const SizedBox(height: 12),
        Text(
          LocaleKeys.oops.tr,
          style: context.themeExtensions.heading1.copyWith(color: context.themeExtensions.black),
        ),
        const SizedBox(height: 8),
        Text(
          LocaleKeys.noDataMessage.tr,
          style:
              context.themeExtensions.heading3.copyWith(color: context.themeExtensions.textGrey),
        ),
      ],
    );
  }

  Widget buildErrorLayout(BuildContext context) {
    return InkWell(
      onTap: () => controller.fetchData(isRefresh: true),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: AutoSizeText(
          LocaleKeys.loadDataErrorMessage.tr,
          style: context.themeExtensions.paragraphSemiBold
              .copyWith(color: context.themeExtensions.textGrey),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget buildErrorItemWhileLoadMore() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(LocaleKeys.loadDataErrorMessage.tr),
    );
  }

  Widget buildItemViews(BuildContext context, {dynamic item, int? index});

  EdgeInsets _evaluateTopPadding(BuildContext context) {
    if (appBarIsHidden == true) return const EdgeInsets.only(top: 0);
    if (Navigator.canPop(context)) return const EdgeInsets.only(top: 96);
    return const EdgeInsets.only(top: 96);
  }

  EdgeInsets _evaluateNoDataPadding(BuildContext context) {
    if (appBarIsHidden == true) return const EdgeInsets.only(top: 0, bottom: 0);
    if (Navigator.canPop(context)) return const EdgeInsets.only(top: 96, bottom: 96);
    return const EdgeInsets.only(top: 96, bottom: 96);
  }
}
