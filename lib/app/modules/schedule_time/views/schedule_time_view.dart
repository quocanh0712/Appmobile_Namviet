// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

class ScheduleTimeView extends StatelessWidget {
  final ScheduleTimeController controller = Get.find();

  List<Color> tramColors = [
    Colors.indigo,
    Colors.teal,
    Colors.blueGrey,
    Colors.brown,
    Colors.grey[500]!,
    Colors.blueGrey[400]!,
    Colors.blueGrey[700]!,
    Colors.orange[100]!,
    Colors.orange[200]!,
    Colors.amber[800]!,
    Colors.deepOrange,
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text(controller.getTitle(), style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 23),),
        actions: [
          IconButton(
            onPressed: () {
              // Open filter bottom sheet
              CustomBottomSheet.showBottomSheet(
                headerTitle: LocaleKeys.filterDataTitle.tr,
                buttonTitle: LocaleKeys.filterDataButton.tr,
                contentView: SearchAdvanceView(
                  isSessionSupported: true,
                  dataYearSelected: controller.getScheduleTimeRequest()?.year,
                  dataSemesterSelected:
                      controller.getScheduleTimeRequest()?.semester,
                  dataSessionSelected:
                      controller.getScheduleTimeRequest()?.session,
                  onModelChanged: (SearchAdvanceResponse? model) {
                    controller.setScheduleTimeRequest(model);
                  },
                ),
                acceptBtPress: () => controller.filterScheduleData(),
              );
            },
            icon: Assets.images.icFilterSearch.image(
                width: 24,
                height: 24,
                color: context.themeExtensions.textColor),
          ),
        ],
      ),
      body: ScreenUtilInit(
        child: Column(
          children: [
            const SizedBox(
              height: 6,
            ),

            const SizedBox(
              height: 6,
            ),
            // Divider(
            //   color: context.themeExtensions.black,
            //   height: 2,
            // ),
            Expanded(
              child:
              Obx(() {
                return ListView.builder(
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: controller.listScheduleTime.value.length,
                  itemBuilder: (context, index) {
                    ScheduleTimeResponse? scheduleTime =
                    controller.listScheduleTime.value[index];
                    List<CourseItem>? courseItems = scheduleTime?.listcourse;

                    return courseItems!.isEmpty ? _buildNoTasksOverviewThisWeek(context)
                        : Column(
                      children: [
                        Container(
                          height: 50.h,
                          width: 300.w,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(9, 116, 66, 1),
                                Color.fromRGBO(98, 179, 69, 1),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(

                              '${scheduleTime?.weeksOfYear}',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                        Column(
                          children: courseItems?.map((courseItem) {
                            return Padding(
                              padding:  EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 10.w
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Thứ ${courseItem?.dayofweeks}",
                                            style: GoogleFonts.openSans(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                                fontSize: 13.sp),
                                          ),
                                          Container(
                                              width: 35.w,
                                              height: 35.h,
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  shape: BoxShape.circle),
                                              child: Center(
                                                  child: Text(
                                                    "${_formatTime(scheduleTime?.date.toString())}",
                                                    style: GoogleFonts.openSans(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 18.sp),
                                                  ))),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: 280.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 13.0.w, top: 3.h, bottom: 3.h),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${courseItem?.coursename}",
                                            style: GoogleFonts.openSans(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 13.sp),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                  width: 50.w,
                                                  height: 17.h,

                                                  decoration: BoxDecoration(
                                                      color: Colors.black12,
                                                      borderRadius: BorderRadius.circular(5)
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "${courseItem?.roomname}",
                                                      style: GoogleFonts.openSans(
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          color: Colors.white,
                                                          fontSize: 12.sp),
                                                    ),
                                                  )),
                                              SizedBox(width: 20.w,),
                                              Row(

                                                children: [
                                                  Icon(Icons.access_time_outlined, color: Colors.white,size: 14.sp,),
                                                  Text('${courseItem?.timestart ?? ''} - ${courseItem?.timeend ?? ''}',style: GoogleFonts.openSans(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      color: Colors.white,
                                                      fontSize: 12.sp),),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }).toList() ??
                              [],
                        ),
                      ],
                    );
                  },
                );
              }) ,
            ),
          ],
        ),
      ),
    );
  }
//Text('${courseItem?.timestart ?? ''} - ${courseItem?.timeend ?? ''}'),
// Text(courseItem?.coursename ?? ''),

  String _formatTime(String? dateTimeString) {
    if (dateTimeString == null) return '';

    // Chuyển đổi chuỗi thành đối tượng DateTime
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Lấy ngày từ đối tượng DateTime
    String day = dateTime.day.toString();

    return day;
  }

  Widget? _buildNoTasksOverviewThisWeek(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 32),
        Assets.images.icNoTasks.image(fit: BoxFit.cover),
        const SizedBox(width: 25),
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(LocaleKeys.restNow.tr,
                    style: context.themeExtensions.heading2
                        .copyWith(color: context.themeExtensions.textColor)),
                const SizedBox(height: 11),
                AutoSizeText(LocaleKeys.noTasksMessage.tr,
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.textGrey))
              ],
            )),
        const SizedBox(width: 25)
      ],
    );
  }
}

// class ScheduleTimeView extends BaseListView<ScheduleTimeController> {
//   ScheduleTimeView({super.key});
//
//   @override
//   Widget itemView(BuildContext context, int index) {
//     ScheduleTimeResponse? scheduleTimeResponse = controller.getItem(index);
//
//     if (scheduleTimeResponse == null) {
//       return Container(
//
//       );
//     }
//     return Container(
//       child: _itemSchedule(context, scheduleTimeResponse,),
//
//     );
//   }
//
//   Widget _itemSchedule(BuildContext context, ScheduleTimeResponse? scheduleItem, ) {
//      List<CourseItem>? courseItems = scheduleItem?.listcourse;
//     if (scheduleItem == null) return Container();
//
//     DateTime now = DateTime.now();
//     bool isSameDay = now.isSameDate(scheduleItem.date);
//     return Column(
//       children: [
//         const SizedBox(
//           height: 6,
//         ),
//         Container(
//           height: 50,
//           width: 50,
//           color: Colors.red,
//         ),
//         const SizedBox(
//           height: 6,
//         ),
//         Divider(
//           color: context.themeExtensions.black,
//           height: 2,
//         ),
//         Column(
//           children: [
//             Obx(() => ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               padding: EdgeInsets.zero,
//               shrinkWrap: true,
//               itemCount: courseItems?.length ?? 0,
//               itemBuilder: (context, index) {
//                 CourseItem? courseItem = courseItems?[index];
//                 if (courseItem == null) return SizedBox.shrink();
//
//                 return ListTile(
//                   title: Text(courseItem.coursename ?? ''),
//                   subtitle: Text('${courseItem.timestart} - ${courseItem.timeend}'),
//                   // You can add more details here as needed
//                 );
//               },
//             ))
//             // ListView.builder(
//             //     physics: NeverScrollableScrollPhysics(),
//             //     padding: EdgeInsets.zero,
//             //     shrinkWrap: true,
//             //     itemCount: courseItems?.length ?? 0,
//             //     itemBuilder: (context, index){
//             //     return Column(
//             //       children: [
//             //         SizedBox(height: 15.h,),
//             //         Stack(
//             //           children: [
//             //             Row(
//             //               children: [
//             //                 Container(
//             //                   height: 80.h,
//             //                   width: 20.w,
//             //                   decoration: BoxDecoration(
//             //                     color: Colors.green,
//             //                     borderRadius: BorderRadius.only(
//             //                       topLeft: Radius.circular(20.0), // Border radius góc trên cùng bên trái
//             //                       bottomLeft: Radius.circular(20.0), // Border radius góc dưới cùng bên trái
//             //                     ),
//             //                   ),
//             //                 ),
//             //                 Container(
//             //                   height: 80.h,
//             //                   width: 95.w,
//             //                   decoration: BoxDecoration(
//             //                       color: Colors.red
//             //                   ),
//             //                   child: Center(
//             //                     child: Column(
//             //                       crossAxisAlignment: CrossAxisAlignment.center,
//             //                       mainAxisAlignment: MainAxisAlignment.start,
//             //                       mainAxisSize: MainAxisSize.min,
//             //                       children: [
//             //
//             //                         Text(
//             //                           "7 giờ 00", style: GoogleFonts.openSans(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w700),
//             //                         ),
//             //                         SizedBox(height: 5.h,),
//             //                         Text(
//             //                           "7 giờ 00", style: GoogleFonts.openSans(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w700),
//             //                         ),
//             //
//             //                       ],
//             //                     ),
//             //                   ),
//             //
//             //                 ),
//             //                 Container(
//             //                   height: 80.h,
//             //                   width: 220.w,
//             //                   decoration: BoxDecoration(
//             //                     color: Colors.red,
//             //                     borderRadius: BorderRadius.only(
//             //                       topRight: Radius.circular(10.0), // Border radius góc trên cùng bên trái
//             //                       bottomRight: Radius.circular(10.0), // Border radius góc dưới cùng bên trái
//             //                     ),
//             //                   ),
//             //                 )
//             //               ],
//             //             ),
//             //             Positioned(
//             //               child: Container(
//             //                 height: 10.h,
//             //                 width: 2.w,
//             //                 color: Colors.blue,
//             //               ),
//             //               top: 0,
//             //               bottom: 0,
//             //               left: 113.w, // Khoảng cách từ Divider đến bên trái
//             //             ),
//             //
//             //           ],
//             //         ),
//             //         SizedBox(height: 10,)
//             //
//             //       ],
//             //     );
//             //     }),
//           ],
//         )
//       ],
//     );
//   }
//
//   String formatTime(String? timeString) {
//     if (timeString == null) return '';
//     List<String> parts = timeString.split(' ');
//     if (parts.length >= 3) {
//       String hour = parts[0];
//       String minute = parts[2];
//       return '$hour:$minute';
//     }
//     return '';
//   }
//
//   @override
//   String? get titleAppBar => controller.getTitle();
//
//   @override
//   List<Widget>? actionAppBar(BuildContext context) => [
//         IconButton(
//           onPressed: () {
//             CustomBottomSheet.showBottomSheet(
//               headerTitle: LocaleKeys.filterDataTitle.tr,
//               buttonTitle: LocaleKeys.filterDataButton.tr,
//               contentView: SearchAdvanceView(
//                 isSessionSupported: true,
//                 dataYearSelected: controller.getScheduleTimeRequest()?.year,
//                 dataSemesterSelected: controller.getScheduleTimeRequest()?.semester,
//                 dataSessionSelected: controller.getScheduleTimeRequest()?.session,
//                 onModelChanged: (SearchAdvanceResponse? model) {
//                   controller.setScheduleTimeRequest(model);
//                 },
//               ),
//               acceptBtPress: () => controller.filterScheduleData(),
//             );
//           },
//           icon: Assets.images.icFilterSearch
//               .image(width: 24, height: 24, color: context.themeExtensions.textColor),
//         ),
//       ];
// }

// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Align(
// alignment: Alignment.topCenter,
// child: SizedBox(
// width: 65,
// child: Column(
// children: [
// Align(
// alignment: Alignment.topCenter,
// child: Text(
// dayOfWeek.format(scheduleItem.date!),
// textAlign: TextAlign.center,
// style: GoogleFonts.openSans(
// color: isSameDay
// ? context.themeExtensions.secondGreen
//     : context.themeExtensions.textGrey, fontWeight: FontWeight.w600),
// ),
// ),
// const SizedBox(
// height: 10,
// ),
// Align(
// alignment: Alignment.topCenter,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisSize: MainAxisSize.max,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// "${dateOnly.format(scheduleItem.date!)}/",
// textAlign: TextAlign.center,
// style: context.themeExtensions.heading2.copyWith(
// color: isSameDay
// ? context.themeExtensions.darkGreen
//     : context.themeExtensions.textColor),
// ),
// Align(
// alignment: Alignment.bottomLeft,
// child: Text(
// monthOnly.format(scheduleItem.date!),
// textAlign: TextAlign.start,
// style: context.themeExtensions.paragraphSemiBold.copyWith(
// color: isSameDay
// ? context.themeExtensions.darkGreen
//     : context.themeExtensions.textColor),
// ),
// )
// ],
// ),
// )
// ],
// ),
// ),
// ),
// const SizedBox(
// width: 8,
// ),
// Expanded(
// child: ListView.builder(
// shrinkWrap: true,
// padding: EdgeInsets.zero,
// itemCount: scheduleItem.listcourse?.length,
// physics: const ScrollPhysics(),
// itemBuilder: (context, index) {
// CourseItem? item = scheduleItem.listcourse?[index];
// if (item == null) return Container();
// // int currentMillisecondNow = now.millisecond;
// // int currentMillisecondStart = item.timestart?.millisecond ?? 0;
// // int currentMillisecondEnd = item.timeend?.millisecond ?? 0;
// // bool isJoinNow = currentMillisecondStart <= currentMillisecondNow &&
// //     currentMillisecondNow <= currentMillisecondEnd;
// return Container(
// decoration: BoxDecoration(
// color: Utils.randomColor(),
// borderRadius: BorderRadius.circular(8),
// ),
// margin: const EdgeInsets.only(top: 3, bottom: 3),
// padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
// child: Column(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// item.coursename ?? Constants.EMPTY,
// textAlign: TextAlign.left,
// style: GoogleFonts.openSans(color: context.themeExtensions.white, fontWeight: FontWeight.w700),
// ),
// ),
// const SizedBox(
// height: 4,
// ),
// Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// decoration: BoxDecoration(
// color: context.themeExtensions.smokyWhite,
// borderRadius: BorderRadius.circular(4),
// ),
// padding:
// const EdgeInsets.only(top: 2, bottom: 2, right: 4, left: 4),
// child: Text(
// item.roomname ?? Constants.EMPTY,
// textAlign: TextAlign.center,
// style: GoogleFonts.openSans(color: context.themeExtensions.white, fontWeight: FontWeight.w600,fontSize: 14),
// ),
// ),
// const SizedBox(
// width: 6,
// ),
// Assets.images.icClock.svg(width: 14, height: 14, fit: BoxFit.cover),
// const SizedBox(
// width: 6,
// ),
// Expanded(
// child: Align(
// alignment: Alignment.centerLeft,
// child: item.timestart != null && item.timeend != null
// ? Text(
// "${formatTime(item.timestart)} - ${formatTime(item.timeend)}",
// textAlign: TextAlign.center,
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// style: GoogleFonts.openSans(color: context.themeExtensions.white, fontSize: 13),
// )
//     : Container(),
// ),
// ),
// // isJoinNow == true
// //     ? Container(
// //         decoration: BoxDecoration(
// //           color: context.themeExtensions.red,
// //           borderRadius: BorderRadius.circular(6),
// //         ),
// //         padding: const EdgeInsets.all(4),
// //         child: Text(
// //           LocaleKeys.joinNow.tr,
// //           textAlign: TextAlign.center,
// //           style: context.themeExtensions.smallTex
// //               .copyWith(color: context.themeExtensions.white),
// //         ),
// //       )
// //     : Container(),
//
// ],
// )
// ],
// ),
// );
// }),
// // child: Container(color: Utils.randomColor(),),
// ),
// ],
// ),
