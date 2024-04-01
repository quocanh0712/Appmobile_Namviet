// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_appbar_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/stu_checkin_controller.dart';

class StuCheckinView extends BaseAppBarView<StuCheckinController> {
  StuCheckinView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: Column(
        children: [
          item(LocaleKeys.stuCheckin.tr, () => controller.navigateStuCheckIn()),
          const SizedBox(
            height: 20,
          ),
          item(LocaleKeys.stuNoCheckin.tr,
              () => controller.navigateStuNoCheckIn()),
          const SizedBox(
            height: 20,
          ),
          item(LocaleKeys.stuWorkManager.tr,
              () => controller.navigateStuWorkManager()),
          const SizedBox(
            height: 20,
          ),
          item(LocaleKeys.stuOutSiteManager.tr,
              () => controller.navigateStuOutSiteManager()),
          const SizedBox(
            height: 20,
          ),
          item(LocaleKeys.stuCrossManager.tr,
              () => controller.navigateStuCrossManager()),
          const SizedBox(
            height: 20,
          ),
          item(LocaleKeys.stuCertificateManager.tr,
              () => controller.navigateStuCertificateManager()),
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
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                title,
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(color: Get.context?.themeExtensions.textColor, fontWeight: FontWeight.bold),
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
  String? get titleAppBar =>
      LocaleKeys.studentManager.tr + ' lớp ' + LocaleKeys.fakeClass.tr;
}
