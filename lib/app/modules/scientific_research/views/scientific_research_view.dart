// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/scientific_research_controller.dart';

class ScientificResearchView extends BaseListView<ScientificResearchController> {
  ScientificResearchView({Key? key}) : super(key: key);

  @override
  Widget itemView(BuildContext context, int index) {
    return Column(
      children: [
        InkWell(
          onTap: () => controller.navigateItemScientificResearch(index),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: context.themeExtensions.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: context.themeExtensions.lightSilver),
                boxShadow: [
                  BoxShadow(
                    color: context.themeExtensions.textLightGrey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    controller.getItem(index).type ?? Constants.EMPTY,
                    style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 12.sp),
                    textAlign: TextAlign.left,
                  ),
                )),
                const SizedBox(
                  width: 6,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Assets.images.arrowRight.svg(
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color: context.themeExtensions.textGrey),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }

  @override
  String? get titleAppBar => LocaleKeys.scienceStudy.tr;
}
