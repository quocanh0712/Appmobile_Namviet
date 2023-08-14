// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/schedule_checkin/views/request_checkin_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import '../../../../generated/colors.gen.dart';
import '../../base/keep_alive_widget.dart';
import '../controllers/schedule_checkin_controller.dart';

class ScheduleCheckinView extends BaseListView<ScheduleCheckinController> {
  ScheduleCheckinView({Key? key}) : super(key: key);

  final GlobalKey<RequestCheckInViewState> checkinGlobalKey = GlobalKey();

  @override
  Widget itemView(BuildContext context, int index) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RequestCheckInView(
                      key: checkinGlobalKey,
                      ScheduleCode: "${controller.getItem(index)?.ma_khkk}"))),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: context.themeExtensions.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: context.themeExtensions.lightSilver),
                boxShadow: [
                  BoxShadow(
                    color:
                        context.themeExtensions.textLightGrey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Mã kế hoạch: ${controller.getItem(index)?.ma_khkk}",
                      style: context.themeExtensions.paragraphSemiBold.copyWith(
                          color: context.themeExtensions.textLightGrey),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${controller.getItem(index)?.ten_khkk}",
                      style: context.themeExtensions.smallTex
                          .copyWith(color: context.themeExtensions.red),
                      textAlign: TextAlign.left,
                    ),
                  ],
                )),
                const SizedBox(
                  width: 6,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Assets.images.icFingerScan.svg(
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color: context.themeExtensions.darkGreen),
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
  String? get titleAppBar => LocaleKeys.listScheduleCheckin.tr;
}
