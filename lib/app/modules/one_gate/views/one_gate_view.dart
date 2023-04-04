// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_appbar_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../controllers/one_gate_controller.dart';

class OneGateView extends BaseAppBarView<OneGateController> {
  OneGateView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: Column(
        children: [
          item(LocaleKeys.yourServiceForm.tr, () => controller.navigateYourServiceRequest()),
          const SizedBox(
            height: 20,
          ),
          item(LocaleKeys.sampleServiceForm.tr, () => controller.navigateSampleServiceRequest()),
        ],
      ),
    );
  }

  Widget item(String title, GestureTapCallback onTap) {
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: Get.context?.themeExtensions.bgGrey,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                title,
                textAlign: TextAlign.start,
                style: Get.context?.themeExtensions.paragraph
                    .copyWith(color: Get.context?.themeExtensions.textColor),
              )),
              const SizedBox(
                width: 8,
              ),
              Assets.images.arrowRight.svg(
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                  color: Get.context?.themeExtensions.textColor)
            ],
          ),
        ));
  }

  @override
  String? get titleAppBar => LocaleKeys.oneGateTitle.tr;
}
