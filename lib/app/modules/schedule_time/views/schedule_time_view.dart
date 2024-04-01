// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/schedule_time/model/schedule_time_response.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../controllers/schedule_time_controller.dart';

class ScheduleTimeView extends BaseListView<ScheduleTimeController> {
  ScheduleTimeView({super.key});

  @override
  Widget itemView(BuildContext context, int index) {
    ScheduleTimeResponse? scheduleTimeResponse = controller.getItem(index);
    if (scheduleTimeResponse == null) {
      return Container();
    }
    return Container(
      child: _itemSchedule(context, scheduleTimeResponse),
    );
  }

  Widget _itemSchedule(BuildContext context, ScheduleTimeResponse? scheduleItem) {
    if (scheduleItem == null) return Container();
    DateTime now = DateTime.now();
    bool isSameDay = now.isSameDate(scheduleItem.date);
    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 65,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        dayOfWeek.format(scheduleItem.date!),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                            color: isSameDay
                                ? context.themeExtensions.secondGreen
                                : context.themeExtensions.textGrey, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${dateOnly.format(scheduleItem.date!)}/",
                            textAlign: TextAlign.center,
                            style: context.themeExtensions.heading2.copyWith(
                                color: isSameDay
                                    ? context.themeExtensions.darkGreen
                                    : context.themeExtensions.textColor),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              monthOnly.format(scheduleItem.date!),
                              textAlign: TextAlign.start,
                              style: context.themeExtensions.paragraphSemiBold.copyWith(
                                  color: isSameDay
                                      ? context.themeExtensions.darkGreen
                                      : context.themeExtensions.textColor),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: scheduleItem.listcourse?.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    CourseItem? item = scheduleItem.listcourse?[index];
                    if (item == null) return Container();
                    int currentMillisecondNow = now.millisecond;
                    int currentMillisecondStart = item.timestart?.millisecond ?? 0;
                    int currentMillisecondEnd = item.timeend?.millisecond ?? 0;
                    bool isJoinNow = currentMillisecondStart <= currentMillisecondNow &&
                        currentMillisecondNow <= currentMillisecondEnd;
                    return Container(
                      decoration: BoxDecoration(
                        color: Utils.randomColor(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(top: 3, bottom: 3),
                      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              item.coursename ?? Constants.EMPTY,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.openSans(color: context.themeExtensions.white, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: context.themeExtensions.smokyWhite,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding:
                                    const EdgeInsets.only(top: 2, bottom: 2, right: 4, left: 4),
                                child: Text(
                                  item.roomname ?? Constants.EMPTY,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(color: context.themeExtensions.white, fontWeight: FontWeight.w600,fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Assets.images.icClock.svg(width: 14, height: 14, fit: BoxFit.cover),
                              const SizedBox(
                                width: 6,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: item.timestart != null && item.timeend != null
                                      ? Text(
                                          "${hourMinute.format(item.timestart!)} - ${hourMinute.format(item.timeend!)}",
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.openSans(color: context.themeExtensions.white, fontSize: 13),
                                        )
                                      : Container(),
                                ),
                              ),
                              isJoinNow == true
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: context.themeExtensions.red,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      padding: const EdgeInsets.all(4),
                                      child: Text(
                                        LocaleKeys.joinNow.tr,
                                        textAlign: TextAlign.center,
                                        style: context.themeExtensions.smallTex
                                            .copyWith(color: context.themeExtensions.white),
                                      ),
                                    )
                                  : Container(),

                            ],
                          )
                        ],
                      ),
                    );
                  }),
              // child: Container(color: Utils.randomColor(),),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Divider(
          color: context.themeExtensions.smokyWhite,
          height: 2,
        ),
      ],
    );
  }

  @override
  String? get titleAppBar => controller.getTitle();

  @override
  List<Widget>? actionAppBar(BuildContext context) => [
        IconButton(
          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              headerTitle: LocaleKeys.filterDataTitle.tr,
              buttonTitle: LocaleKeys.filterDataButton.tr,
              contentView: SearchAdvanceView(
                isSessionSupported: true,
                dataYearSelected: controller.getScheduleTimeRequest()?.year,
                dataSemesterSelected: controller.getScheduleTimeRequest()?.semester,
                dataSessionSelected: controller.getScheduleTimeRequest()?.session,
                onModelChanged: (SearchAdvanceResponse? model) {
                  controller.setScheduleTimeRequest(model);
                },
              ),
              acceptBtPress: () => controller.filterScheduleData(),
            );
          },
          icon: Assets.images.icFilterSearch
              .image(width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];
}
