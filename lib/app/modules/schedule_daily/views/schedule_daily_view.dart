// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../controllers/schedule_daily_controller.dart';

class ScheduleDailyView extends BaseAppBarView<ScheduleDailyController> {
  ScheduleDailyView({Key? key}) : super(key: key);

  final double marginItem = 60;



  @override
  Widget child(BuildContext context) {

    RxString selectedDate = RxString('');
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
                // gradient: const LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Color.fromRGBO(9, 116, 66, 1),
                //     Color.fromRGBO(98, 179, 69, 1),
                //   ],
                // ),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () async {
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(DateTime.now().year - 2),
                        maxTime: DateTime(DateTime.now().year + 2),
                        onChanged: (date) {
                      print('change $date');
                    }, onConfirm: (date) {
                      // Cập nhật selectedDate với giá trị đã chọn từ date picker
                      selectedDate.value = DateFormat('dd/MM/yyyy')
                          .format(date); // Định dạng ngày tháng năm
                      controller.timeDaily = date;
                      controller.loadScheduleDaily();
                    },
                        currentTime: controller.timeDaily,
                        locale: LocaleType.vi);
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Obx(() => Text(
                                selectedDate.value.isEmpty
                                    ? DateFormat('dd/MM/yyyy')
                                        .format(DateTime.now())
                                    : selectedDate.value,
                                style: GoogleFonts.notoSansKhojki(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        const Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.black,
                          size: 45,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Thời gian',
                        style: GoogleFonts.notoSansKhojki(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Công việc',
                        style: GoogleFonts.notoSansKhojki(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   alignment: Alignment.topCenter,
                //   child: Obx(() => timeView()),
                // ),
                // const SizedBox(
                //   width: 16,
                // ),
                Expanded(
                    child: SizedBox(
                  width: double.maxFinite,
                  child: Obx(() => scheduleDaily( )),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget scheduleDaily() {


    List<Color> tramColors = [
      // Màu Xanh Đậm

      Colors.indigo,
      Colors.teal,

      Colors.blueGrey,
      // Màu Nâu
      Colors.brown,

      // Màu Xám
      Colors.grey[500]!,


      // Màu Ghi
      Colors.blueGrey[400]!,
      Colors.blueGrey[700]!,

      // Màu Kem
      Colors.orange[100]!,
      Colors.orange[200]!,

      // Màu Vàng

      Colors.amber[800]!,

      // Màu Hồng

      Colors.deepOrange,
    ];

    if (controller.listScheduleDaily.isEmpty) {
      return Container();
    }

    var listItem = controller.listScheduleDaily.toList();
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
          shrinkWrap: true,
            itemCount: listItem?.length,
            itemBuilder: (context, index){
          return ScreenUtilInit(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,

                      decoration: BoxDecoration(
                        color: tramColors[index],
                        borderRadius: BorderRadius.circular(20),
                          boxShadow:  [
                            BoxShadow(
                              color: tramColors[index],
                              spreadRadius: 1,
                              blurRadius: 6,
                              offset: Offset(0, 0), // changes position of shadow
                            ),
                          ]
                      ),
                    ),
                    SizedBox(width: 20,),
                    //${formatTime(listItem[0]?.timestart)} - ${formatTime(listItem[0]?.timeend)}
                    Text("${formatTime(listItem[index]?.timestart)} - ${formatTime(listItem[index]?.timeend)}", style: GoogleFonts.openSans(fontSize: 19.sp, color: Colors.grey.shade600, fontWeight: FontWeight.w600),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 2,
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 125.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: tramColors[index],
                          borderRadius: BorderRadius.circular(10),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8,),
                              Text("${listItem[index]?.coursename}", style: GoogleFonts.openSans(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700), maxLines: 2,),
                              Text("${listItem[index]?.roomname}", style: GoogleFonts.openSans(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ],
    );

  }



  String formatTime(String? timeString) {
    if (timeString == null) return '';
    List<String> parts = timeString.split(' ');
    if (parts.length >= 3) {
      String hour = parts[0];
      String minute = parts[2];
      return '$hour:$minute';
    }
    return '';
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
                        style: Get.context?.themeExtensions.subTex.copyWith(
                            color: Get.context?.themeExtensions.textGrey),
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
                        style: Get.context?.themeExtensions.subTex.copyWith(
                            color: Get.context?.themeExtensions.textGrey),
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
  // List<Widget>? actionAppBar(BuildContext context) => [
  //       IconButton(
  //         onPressed: () async {
  //           DatePicker.showDatePicker(context,
  //               showTitleActions: true,
  //               minTime: DateTime(DateTime.now().year - 2),
  //               maxTime: DateTime(DateTime.now().year + 2), onChanged: (date) {
  //             print('change $date');
  //           }, onConfirm: (date) {
  //             controller.timeDaily = date;
  //             controller.loadScheduleDaily();
  //           }, currentTime: controller.timeDaily, locale: LocaleType.vi);
  //         },
  //         icon: Assets.images.icDate.svg(
  //             width: 24, height: 24, color: context.themeExtensions.textColor),
  //       ),
  //     ];

  @override
  String? get titleAppBar => controller.getTitle();
}
