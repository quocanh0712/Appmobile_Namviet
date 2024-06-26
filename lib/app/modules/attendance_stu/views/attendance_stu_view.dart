import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/attendance_stu/bindings/attendance_stu_binding.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../../../utils/constants.dart';
import '../../base/base_list_view.dart';
import '../../base/base_view.dart';
import '../controllers/attendance_stu_controller.dart';

class AttendanceStuView extends BaseBindingCreatorView<
AttendanceStuBinding, AttendanceStuController
> {
  AttendanceStuView({super.key, required super.bindingCreator});



  @override
  Widget? onCreateViews(BuildContext context) {
    return GetBuilder<AttendanceStuController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              LocaleKeys.attendance_stu.tr,
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

  Widget _buildClassList(AttendanceStuController controller) {
    var listItem = controller.listClass.toList() ?? [];

    return Padding(
      padding:  EdgeInsets.only(top:20.0),
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        physics: ScrollPhysics(),
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          var classListAttendance = listItem[index];
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => controller.navigateListLesson(index),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        height: 120.h,
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
                                          classListAttendance?.tenLopHp?.toString() ?? '',
                                        style: GoogleFonts.openSans(color: context.themeExtensions.mainGreen, fontWeight: FontWeight.bold, fontSize: 12.sp),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
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
                                            "Môn học : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListAttendance?.tenMon?.toString() ?? '',
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
                                            "ID môn : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListAttendance?.idMon?.toString() ?? '',
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
                                            "Số tín chỉ : ",
                                            style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            classListAttendance?.soTinChi?.toString() ?? '',
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
                                            classListAttendance?.hoTen?.toString() ?? '',
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
    List<String> parts = dateTimeString.split('T');
    return parts[0];
  }


}


// class AttendanceStuView extends BaseListView<AttendanceStuController> {
//   AttendanceStuView({Key? key}) : super(key: key);
//
//   @override
//   Widget itemView(BuildContext context, int index) {
//     return Column(
//       children: [
//         InkWell(
//           // onTap: () => controller.navigateItemScientificResearch(index),
//           child: Container(
//             padding: const EdgeInsets.all(14),
//             decoration: BoxDecoration(
//                 color: context.themeExtensions.white,
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: context.themeExtensions.lightSilver),
//                 boxShadow: [
//                   BoxShadow(
//                     color: context.themeExtensions.textLightGrey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 2,
//                     offset: const Offset(0, 3), // changes position of shadow
//                   ),
//                 ]),
//             child: Row(
//               children: [
//                 Expanded(
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         controller.getItem(index).type ?? Constants.EMPTY,
//                         style: GoogleFonts.openSans(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold, fontSize: 12.sp),
//                         textAlign: TextAlign.left,
//                       ),
//                     )),
//                 const SizedBox(
//                   width: 6,
//                 ),
//                 // Align(
//                 //   alignment: Alignment.centerRight,
//                 //   child: Assets.images.arrowRight.svg(
//                 //       width: 24,
//                 //       height: 24,
//                 //       fit: BoxFit.cover,
//                 //       color: context.themeExtensions.textGrey),
//                 // )
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 8,
//         )
//       ],
//     );
//   }
//
//   @override
//   String? get titleAppBar => LocaleKeys.scienceStudy.tr;
// }

