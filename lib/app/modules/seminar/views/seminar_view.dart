


import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/app/modules/seminar/controllers/seminar_controller.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/seminar_response.dart';




//

class SeminarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SeminarController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              LocaleKeys.seminar.tr,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          body: Obx(() => seminarList(controller)),
        );
      },
    );
  }

  Widget seminarList(SeminarController controller) {
    var listItem = controller.listSeminar.toList() ?? [];

    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        physics: ScrollPhysics(),
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          var seminar = listItem[index];
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: controller.isExpanded(index) ? 450.h : 160.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: context.themeExtensions.bgGrey,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Your existing code for content inside ExpansionTile...

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h, bottom: 3.h),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/Icon/78.jpeg',
                            width: MediaQuery.of(context).size.width,
                            height: 100.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      ExpansionTile(
                        title: Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text(
                            seminar?.tenHoiThao?.toString() ?? '',
                            style: GoogleFonts.openSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        trailing: Icon(
                          controller.isExpanded(index) ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Nội dung :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Expanded(
                                        child: Text(
                                          seminar?.noiDung?.toString() ?? '',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: context.themeExtensions.black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Số quyết định :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Expanded(
                                        child: Text(
                                          seminar?.soQuyetDinh?.toString() ?? '',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: context.themeExtensions.black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Mục đích :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Expanded(
                                        child: Text(
                                          seminar?.mucDich?.toString() ?? '',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: context.themeExtensions.black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Tên loại hội thảo :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Expanded(
                                        child: Text(
                                          seminar?.tenLoaiHoiThao?.toString() ?? '',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: context.themeExtensions.black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Năm học :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        seminar?.namHoc?.toString() ?? '',
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.black
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Địa điểm tổ chức :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Expanded(
                                        child: Text(
                                          seminar?.diaDiemToChuc?.toString() ?? '',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: context.themeExtensions.black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Ngôn ngữ :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        seminar?.ngonNgu?.toString() ?? '',
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.black
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Ngày tổ chức :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        formatTime(seminar?.ngayToChuc?.toString() ?? ''),
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.black
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      AutoSizeText(
                                        LocaleKeys.bull.tr,
                                        style: context.themeExtensions.subTexMedium.copyWith(
                                            color: context.themeExtensions.lightSilver),
                                      ),
                                      SizedBox(width: 5.w), // Add spacing between widgets
                                      Text(
                                        "Ngày kết thúc :",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.textGrey
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        formatTime(seminar?.ngayKetThuc?.toString() ?? ''),
                                        style: GoogleFonts.openSans(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: context.themeExtensions.black
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                        onExpansionChanged: (bool expanded) {
                          controller.setExpanded(index, expanded);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }

  String formatTime(String dateTimeString) {
    List<String> parts = dateTimeString.split('T');
    return parts[0];
  }
}






