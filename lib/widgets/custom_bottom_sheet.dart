// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../../../generated/assets.gen.dart';

class CustomBottomSheet {
  //common
  static showBottomSheet({
    String headerTitle = "",
    String buttonTitle = "",
    bool isAcceptButtonShow = true,
    required final Widget contentView,
    VoidCallback? acceptBtPress,
  }) {
    Get.bottomSheet(
      SafeArea(
        bottom: true,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12, top: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        headerTitle,
                        style: Get.context?.themeExtensions.heading2
                            .copyWith(color: Get.context?.themeExtensions.textColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Assets.images.icClose
                        .svg(width: 24, height: 24, color: Get.context?.themeExtensions.textColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Builder(
                  builder: (BuildContext context) => Container(
                    constraints:
                        BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.8),
                    child: SingleChildScrollView(child: contentView),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              isAcceptButtonShow
                  ? InkWell(
                      onTap: () {
                        acceptBtPress?.call();
                        Get.back();
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(Assets.images.butGradientBg.path),
                                fit: BoxFit.cover)),
                        child: Align(
                            alignment: FractionalOffset.center,
                            child: AutoSizeText(
                              buttonTitle,
                              style: Get.context?.themeExtensions.paragraph
                                  .copyWith(color: Get.context?.themeExtensions.white),
                            )),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
      backgroundColor: Get.context?.themeExtensions.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
    ).whenComplete(() => {
          Fimber.d('whenComplete() - CUSTOM_BOTTOM_SHEET_IS_DISMISSED'),
        });
  }
}
