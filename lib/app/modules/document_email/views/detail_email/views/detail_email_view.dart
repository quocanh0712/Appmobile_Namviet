


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/views/widgets/custom_chip.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_email_controller.dart';




// class DetailEmailView extends StatefulWidget {
//   const DetailEmailView({super.key});
//
//   @override
//   State<DetailEmailView> createState() => _DetailEmailViewState();
// }
//
// class _DetailEmailViewState extends State<DetailEmailView> {
//   final DetailEmailController controller = Get.find<DetailEmailController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Obx(() => Text(
//           controller.email.value?.tieuDe?.toString() ?? "No Title",
//           style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
//         )),
//       ),
//       body: Obx(() {
//         if (controller.email.value == null) {
//           return Center(
//             child: Text(
//               "No email data available",
//               style: GoogleFonts.openSans(
//                   fontWeight: FontWeight.w600, fontSize: 13.sp),
//             ),
//           );
//         }
//
//         final email = controller.email.value!;
//         final fullName = controller.getFullName(email.listNguoiGui);
//         final listNguoiNhan = controller.getNguoiNhanList(email.listNguoiNhan);
//
//         return Column(
//           children: [
//             Container(
//
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border(
//                   top: BorderSide(width: 1.0, color: Colors.grey.shade200),
//                   bottom: BorderSide(width: 1.0, color: Colors.grey.shade200),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20.w),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 8.h,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               height: 30.h,
//                               width: 35.w,
//                               decoration: BoxDecoration(
//                                 color: Colors.red,
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   email.emailType == 'Thư đến'
//                                       ? controller.getFirstLetter(email.listNguoiGui)
//                                       : 'T',
//                                   style: GoogleFonts.openSans(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18.sp,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 15.w),
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   fullName,
//                                   style: GoogleFonts.openSans(
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 13.sp,
//                                   ),
//                                 ),
//                                 SizedBox(height: 3.h),
//                                 CustomChip(
//                                   label: email.listNguoiGui ?? '',
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Text(
//                           formatDateTime(email.createdDate ?? ''),
//                           style: GoogleFonts.openSans(
//                             color: Colors.grey.shade700,
//                             fontWeight: FontWeight.w500,
//                             fontSize: 12.sp,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 10.h),
//                     Padding(
//                       padding:  EdgeInsets.only(left: 5.w),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Đến :",
//                             style: GoogleFonts.openSans(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 12.sp,
//                             ),
//                             textAlign: TextAlign.left,
//                           ),
//                           SizedBox(width: 15.w),
//                           Expanded(
//                             child: Wrap(
//                               crossAxisAlignment: WrapCrossAlignment.center,
//                               spacing: 8.0,
//                               children: [
//                                 ...listNguoiNhan.map(
//                                       (receiver) => CustomChip(
//                                     label: receiver,
//
//                                   ),
//                                 ).toList(),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 color: Color(0xFFF9F9FC),
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     top: 10.h,
//                     left: 10.w,
//                     right: 10.w,
//                     bottom: 20.h,
//                   ),
//                   child: Text(
//                     email.noiDung?.toString() ?? "No Content",
//                     style: GoogleFonts.openSans(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       }),
//     );
//   }
//
//   String formatDateTime(String input) {
//     if (input.contains(':')) {
//       final timeParts = input.split(':');
//       return 'Hôm nay , ${timeParts[0]}:${timeParts[1]}';
//     }
//
//     if (input.contains('/')) {
//       final dateParts = input.split('/');
//       return '${dateParts[1]} tháng ${dateParts[0]}';
//     }
//     return input;
//   }
// }

class DetailEmailView extends StatefulWidget {
  const DetailEmailView({super.key});

  @override
  State<DetailEmailView> createState() => _DetailEmailViewState();
}

class _DetailEmailViewState extends State<DetailEmailView> {
  final DetailEmailController controller = Get.find<DetailEmailController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Obx(() => Text(
          controller.email.value?.tieuDe?.toString() ?? "No Title",
          style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
        )),
      ),
      body: Stack(
        children: [
          Obx(() {
            if (controller.email.value == null) {
              return Center(
                child: Text(
                  "No email data available",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600, fontSize: 13.sp),
                ),
              );
            }

            final email = controller.email.value!;
            final fullName = controller.getFullName(email.listNguoiGui);
            final listNguoiNhan = controller.getNguoiNhanList(email.listNguoiNhan);

            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey.shade200),
                      bottom: BorderSide(width: 1.0, color: Colors.grey.shade200),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      email.emailType == 'Thư đến'
                                          ? controller.getFirstLetter(email.listNguoiGui)
                                          : 'T',
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fullName,
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                    SizedBox(height: 3.h),
                                    CustomChip(
                                      label: email.listNguoiGui ?? '',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              formatDateTime(email.createdDate ?? ''),
                              style: GoogleFonts.openSans(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Row(
                            children: [
                              Text(
                                "Đến :",
                                style: GoogleFonts.openSans(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 8.0,
                                  children: [
                                    ...listNguoiNhan.map(
                                          (receiver) => CustomChip(
                                        label: receiver,
                                      ),
                                    ).toList(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFF9F9FC),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 10.h,
                        left: 10.w,
                        right: 10.w,
                        bottom: 20.h,
                      ),
                      child: Text(
                        email.noiDung?.toString() ?? "No Content",
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        controller.email.value?.listFile != null ?      DraggableScrollableSheet(
            initialChildSize: 0.08,
            minChildSize: 0.08,
            maxChildSize: 0.4,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 5.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left:5.0),
                              child: Text(
                                "Đính kèm :",
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  constraints: BoxConstraints(maxWidth: 300.w, minWidth: 50.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 0.5,
                                        blurRadius: 0.5,
                                        offset: const Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                                    child: Row(

                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          child: Image.asset(
                                            'assets/Icon/84.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 5.w,),
                                        Expanded(
                                          child: AutoSizeText(
                                            controller.email.value!.listFile.toString(),
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp,
                                            ),
                                            maxLines: 1,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ) : SizedBox.shrink(),
        ],
      ),
    );
  }

  String formatDateTime(String input) {
    if (input.contains(':')) {
      final timeParts = input.split(':');
      return 'Hôm nay , ${timeParts[0]}:${timeParts[1]}';
    }

    if (input.contains('/')) {
      final dateParts = input.split('/');
      return '${dateParts[1]} tháng ${dateParts[0]}';
    }
    return input;
  }
}

class AttachmentCard extends StatelessWidget {
  final String title;
  final String fileType;
  final String fileSize;
  final Color color;

  const AttachmentCard({
    Key? key,
    required this.title,
    required this.fileType,
    required this.fileSize,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 8),
        Text(title),
        Text(fileType),
        Text(fileSize),
      ],
    );
  }
}


