


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/controllers/list_lesson_controller.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../../../generated/locales.g.dart';
import '../../../../../../utils/constants.dart';
import '../../../../base/base_list_view.dart';

class ListLessonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListLessonController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              LocaleKeys.listLesson.tr,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          body: Obx(() => _buildClassList(controller)),
        );
      },
    );
  }

  Widget _buildClassList(ListLessonController controller) {
    var listItem = controller.listLesson.toList() ?? [];

    return Padding(
      padding:  EdgeInsets.only(top:20.0),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        physics: ScrollPhysics(),
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          var classListLesson = listItem[index];
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    InkWell(
                       onTap: () => controller.navigateListStudentAttendance(index),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        height: 160.h,
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
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        classListLesson?.tenMon?.toString() ?? '',
                                        style: GoogleFonts.openSans(color: context.themeExtensions.mainGreen, fontWeight: FontWeight.bold, fontSize: 12.sp),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Lớp : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 200.w,
                                            height: 25.h,
                                            child: AutoSizeText(
                                              classListLesson?.tenLop?.toString() ?? '',
                                              style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                              textAlign: TextAlign.left,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "ID môn học : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListLesson?.idMon?.toString() ?? '',
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Phòng học : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListLesson?.diaDiem?.toString() ?? '',
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Thời gian : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            formatTime("${classListLesson?.ngayChiTiet}") ?? '',
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Ca học : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListLesson?.caHoc?.toString() ?? '',
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Thời gian học : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListLesson?.thoiGianHoc?.toString() ?? '',
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            LocaleKeys.bull.tr,
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 8.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Giảng viên : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListLesson?.hoTen?.toString() ?? '',
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
                ),
              ),
              SizedBox(height: 20,),
            ],
          );
        },
      ),
    );
  }

  String formatTime(String dateTimeString) {
    // Chuyển đổi chuỗi thành đối tượng DateTime
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Lấy các phần từ ngày, tháng, năm từ đối tượng DateTime
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;

    // Tạo chuỗi mới theo định dạng "dd-MM-yyyy"
    String formattedDate = '$day-${_twoDigit(month)}-$year';

    return formattedDate;
  }

// Hàm phụ để đảm bảo rằng số tháng có hai chữ số
  String _twoDigit(int n) {
    if (n >= 10) {
      return '$n';
    }
    return '0$n';
  }
}


