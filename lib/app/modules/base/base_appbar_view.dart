// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// ignore_for_file: depend_on_referenced_packages

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../../../generated/assets.gen.dart';
import 'base_controller.dart';

abstract class BaseAppBarView<C extends BaseController> extends BaseView<C> {
  BaseAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // call this method here to hide soft keyboard
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: Container(
            color: context.themeExtensions.background,
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                isAppBarSupported
                    ? Container(
                        color: context.themeExtensions.background,
                        child: Row(
                          children: [
                            isBackButtonShown
                                ? IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Assets.images.icArrowLeft.svg(
                                        width: 24,
                                        height: 24,
                                        color: context.themeExtensions.textColor),
                                  )
                                : const SizedBox(width: 24, height: 24),
                            const SizedBox(
                              width: 3,
                            ),
                            Expanded(child: expandAppBarWidget(context) ?? Container()),
                            const SizedBox(
                              width: 3,
                            ),
                            if (actionAppBar(context)?.isNotEmpty == true) ...{
                              Row(
                                children: actionAppBar(context) ?? [],
                              ),
                            } else ...{
                              const SizedBox(
                                width: 30,
                              )
                            }
                          ],
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 4,
                ),
                titleAppBar?.isNotEmpty == true
                    ? Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              titleAppBar!,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: context.themeExtensions.headline
                                  .copyWith(color: context.themeExtensions.textColor),
                            )),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 12,
                ),
                Expanded(child: child(context)),
                Obx(() {
                  if (controller.isError.value?.isNotBlank == true) {
                    String message = controller.isError.value.toString();
                    WidgetsBinding.instance.addPostFrameCallback((duration) {
                      showErrorDialog(context, messageError: message);
                    });
                    controller.isError.value = "";
                  }
                  return const SizedBox.shrink();
                }),
                Obx(() {
                  if (controller.isLoading.value == true) {
                    WidgetsBinding.instance.addPostFrameCallback((duration) {
                      EasyLoading.show(dismissOnTap: false);
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
          ),
        ));
  }

  Widget? expandAppBarWidget(BuildContext context) => null;

  bool get isAppBarSupported => true;

  bool get isBackButtonShown => true;

  Widget child(BuildContext context) => const SizedBox.shrink();

  List<Widget>? actionAppBar(BuildContext context) => null;

  String? get titleAppBar => null;
}
