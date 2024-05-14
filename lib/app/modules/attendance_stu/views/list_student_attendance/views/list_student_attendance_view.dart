import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/bindings/list_student_attendance_binding.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/controllers/list_student_attendance_controller.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../../../generated/locales.g.dart';
import '../../../../base/base_binding_creator_widget.dart';

class ListStudentAttendanceView extends BaseBindingCreatorView<ListStudentAttendanceBinding,ListStudentAttendanceController > {
  ListStudentAttendanceView({super.key, required super.bindingCreator});


  @override
  Widget? onCreateViews(BuildContext context) {
    // TODO: implement onCreateViews

    return GetBuilder<ListStudentAttendanceController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              LocaleKeys.listStuAttendance.tr,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          body: Obx(() => _buildListStuAttendance(controller, context)),
        );
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //
  // }

  Widget _buildListStuAttendance(
      ListStudentAttendanceController controller, BuildContext context) {
    var listItem = controller.listStuAttendance.toList() ?? [];
    int stt = 0;
    //var classListStu = listItem[index];
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //cot dau tien
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: context.themeExtensions.textLightGrey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(1, 1), // changes position of shadow
                      ),
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
      
                      children: [
                        Container(
                          height: 35.h,
                          width: 40.w,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "#",
                              style: GoogleFonts.openSans(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp),
                            ),
                          ),
                        ),
                        Container(
                          height: 35.h,
                          width: 160.w,
                          color: Colors.white,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Họ tên",
                              style: GoogleFonts.roboto(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: listItem.map((classListStu) {
                        stt++;
                        return Row(
                          children: [
                            Container(
                              height: 35.h,
                              width: 40.w,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "$stt",
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.sp),
                                ),
                              ),
                            ),
                            Container(
                              height: 35.h,
                              width: 160.w,
                              color: Colors.white,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '${classListStu?.hoTen}',
                                  style: GoogleFonts.roboto(
                                      color: context.themeExtensions.textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              //cot thu 2
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // cot chi tiet 1
                  SizedBox(width: 3,),
                      Column(
                        children: [
                          Container(
                            height: 35.h,
                            width: 100.w,
                            color: Colors.white,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Mã SV",
                                style: GoogleFonts.roboto(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                          Column(
                            children: listItem.map((classListStu) {
                              stt++;
                              return Row(
                                children: [
                                  Container(
                                    height: 35.h,
                                    width: 100.w,
                                    color: Colors.white,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${classListStu?.maSv}',
                                        style: GoogleFonts.roboto(
                                            color: context.themeExtensions.textGrey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  ),
      
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      // cot chi tiet 2
                      Column(
                        children: [
                          Container(
                            height: 35.h,
                            width: 100.w,
                            color: Colors.white,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Tên lớp",
                                style: GoogleFonts.roboto(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                          Column(
                            children: listItem.map((classListStu) {
                              stt++;
                              return Row(
                                children: [
                                  Container(
                                    height: 35.h,
                                    width: 100.w,
                                    color: Colors.white,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${classListStu?.tenLop}',
                                        style: GoogleFonts.roboto(
                                            color: context.themeExtensions.textGrey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  ),
      
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 35.h,
                            width: 100.w,
                            color: Colors.white,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Số tiết nghỉ",
                                style: GoogleFonts.roboto(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                          Column(
                            children: listItem.map((classListStu) {
                              stt++;
                              return Row(
                                children: [
                                  Container(
                                    height: 35.h,
                                    width: 100.w,
                                    color: Colors.white,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${classListStu?.tongSoTietNghi}',
                                        style: GoogleFonts.roboto(
                                            color: context.themeExtensions.mainGreen,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  ),
      
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }




}

// Padding(
// padding:  EdgeInsets.only(top:20.0),
// child: ListView.builder(
// padding: EdgeInsets.only(top: 10),
// physics: ScrollPhysics(),
// itemCount: listItem.length,
// itemBuilder: (context, index) {
// var classListStu = listItem[index];
// return Column(
// children: [
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 25.w),
// child: Column(
// children: [
// InkWell(
//
// child: Container(
// padding: const EdgeInsets.all(14),
// height: 160.h,
// decoration: BoxDecoration(
// color: context.themeExtensions.white,
// borderRadius: BorderRadius.circular(10),
// border: Border.all(color: context.themeExtensions.lightSilver),
// boxShadow: [
// BoxShadow(
// color: context.themeExtensions.textLightGrey.withOpacity(0.5),
// spreadRadius: 1,
// blurRadius: 2,
// offset: const Offset(0, 3), // changes position of shadow
// ),
// ]),
// child: Row(
// children: [
// Expanded(
// child: Column(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.mainGreen, fontWeight: FontWeight.bold, fontSize: 12.sp),
// textAlign: TextAlign.left,
// ),
// ),
// SizedBox(height: 10.h,),
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "Lớp : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Container(
// width: 200.w,
// height: 25.h,
// child: AutoSizeText(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// maxLines: 2,
// ),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "ID môn học : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// ],
// ),
// Row(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "Phòng học : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// ],
// ),
// Row(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "Thời gian : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// ],
// ),
// Row(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "Ca học : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// ],
// ),
// Row(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "Thời gian học : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// ],
// ),
// Row(
// children: [
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// LocaleKeys.bull.tr,
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// "Giảng viên : ",
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// classListStu?.hoTen?.toString() ?? '',
// style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
// textAlign: TextAlign.left,
// ),
// ),
// ],
// ),
// ],
// )),
// const SizedBox(
// width: 6,
// ),
// Align(
// alignment: Alignment.centerRight,
// child: Assets.images.arrowRight.svg(
// width: 24,
// height: 24,
// fit: BoxFit.cover,
// color: context.themeExtensions.textGrey),
// )
// ],
// ),
// ),
// ),
// const SizedBox(
// height: 8,
// )
// ],
// ),
// ),
// SizedBox(height: 20,),
// ],
// );
// },
// ),
// );
