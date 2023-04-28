// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:get/get.dart';

import '../controllers/schedule_daily_controller.dart';

class ScheduleDailyView extends BaseAppBarView<ScheduleDailyController> {
  ScheduleDailyView({Key? key}) : super(key: key);

  final double marginItem = 60;

  @override
  Widget child(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Obx(() => timeView()),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: SizedBox(
              width: double.maxFinite,
              child: Obx(() => scheduleDaily()),
            ))
          ],
        ),
      ),
    );
  }

  Widget scheduleDaily() {
    var listItemSchedule = controller.listScheduleDaily.map((element) {
      if (element == null) return Container();
      double marginStart = calculateMarginStartTop(element.timestart) + 10;
      double marginEnd = calculateMarginEndTop(element.timeend) + 10;
      if (marginStart >= marginEnd) return Container();
      return Column(
        children: [
          SizedBox(height: marginStart),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Utils.randomColor(),
            ),
            height: marginEnd - marginStart,
            padding: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: SingleChildScrollView(
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    element.coursename ?? Constants.EMPTY,
                    textAlign: TextAlign.start,
                    style: Get.context?.themeExtensions.paragraphSemiBold
                        .copyWith(color: Get.context?.themeExtensions.white),
                  ),
                ),
                const SizedBox(height: 2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Utils.getNotEmptyValue([
                      element.lesson,
                      element.timestart != null && element.timeend != null
                          ? "${hourMinute.format(element.timestart!)} - ${hourMinute.format(element.timeend!)}"
                          : null
                    ]),
                    textAlign: TextAlign.start,
                    style: Get.context?.themeExtensions.subTex
                        .copyWith(color: Get.context?.themeExtensions.white),
                  ),
                ),
                const SizedBox(height: 2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    element.roomname ?? Constants.EMPTY,
                    textAlign: TextAlign.start,
                    style: Get.context?.themeExtensions.subTex
                        .copyWith(color: Get.context?.themeExtensions.white),
                  ),
                ),
              ]),
            ),
          ),
        ],
      );
    }).toList();
    return Stack(
      children: listItemSchedule,
    );
  }

  double calculateMarginStartTop(DateTime? dateTime) {
    double marginHour = calculateMarginWithHour(dateTime?.hour);
    double marginMinute = calculateMarginStartWithMinute(dateTime?.minute);
    return marginHour + marginMinute;
  }

  double calculateMarginEndTop(DateTime? dateTime) {
    double marginHour = calculateMarginWithHour(dateTime?.hour);
    double marginMinute = calculateMarginEndWithMinute(dateTime?.minute);
    return marginHour + marginMinute;
  }

  double calculateMarginWithHour(int? hour) {
    if (hour == null || hour >= 24 || hour < 6) return 0;
    return marginItem * (hour - 6);
  }

  double calculateMarginStartWithMinute(int? minute) {
    if (minute == null || minute < 30) return 0;
    return marginItem / 2;
  }

  double calculateMarginEndWithMinute(int? minute) {
    if (minute == null || minute < 30) return marginItem / 2;
    return marginItem;
  }

  Widget timeView() {
    var listTimeWidget = controller.listTimeObs
        .map((time) => Container(
              alignment: Alignment.topRight,
              height: marginItem,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        time,
                        textAlign: TextAlign.right,
                        style: Get.context?.themeExtensions.subTex
                            .copyWith(color: Get.context?.themeExtensions.textGrey),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "-",
                        textAlign: TextAlign.center,
                        style: Get.context?.themeExtensions.subTex
                            .copyWith(color: Get.context?.themeExtensions.textGrey),
                      ),
                    ),
                  ),
                ],
              ),
            ))
        .toList();
    return Column(
      children: listTimeWidget,
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) => [
        IconButton(
          onPressed: () async {
            DatePicker.showDatePicker(context,
                showTitleActions: true,
                minTime: DateTime(DateTime.now().year - 2),
                maxTime: DateTime(DateTime.now().year + 2), onChanged: (date) {
              print('change $date');
            }, onConfirm: (date) {
              controller.timeDaily = date;
              controller.loadScheduleDaily();
            }, currentTime: controller.timeDaily, locale: LocaleType.vi);
          },
          icon: Assets.images.icDate
              .svg(width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];

  @override
  String? get titleAppBar => controller.getTitle();
}