import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../base/custom_appbar.dart';
import '../controllers/document_searching_controller.dart';

// Assets.images.profileHeaderBg.image(
// width: double.infinity,
// fit: BoxFit.cover,
// ),

class DocumentSearchingView extends StatelessWidget {
  DocumentSearchingView({super.key});

  final DocumentSearchingController controller =
      Get.put(DocumentSearchingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Assets.images.profileHeaderBg.image(
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SafeArea(
                top: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomAppBar(
                      context: context,
                      backGroundColor: context.themeExtensions.transparent,
                      title: LocaleKeys.documentSearching.tr,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: GetBuilder<DocumentSearchingController>(
                        builder: (controller) {
                          return TextField(
                            cursorColor: Colors.white,
                            controller: controller.searchController,
                            focusNode: controller.focusNode,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                            decoration: InputDecoration(
                              hintText: 'Nhập tên văn bản cần tìm...',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: controller.focusNode.hasFocus
                                    ? Colors.white
                                    : Colors.white,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10.0),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: GetBuilder<DocumentSearchingController>(
                        builder: (controller) {
                          return TabBar(
                            dividerColor: Colors.transparent,
                            controller: controller.tabController,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Văn bản đến',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Văn bản đi',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            labelColor: Colors.green,
                            indicatorColor: Colors.yellow,
                            unselectedLabelColor: Colors.white,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.white,
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: GetBuilder<DocumentSearchingController>(
              builder: (controller) {
                return TabBarView(
                  controller: controller.tabController,
                  children: [
                    Obx(
                      () => _buildDocumentItem(context),
                    ),
                    Obx(
                      () => _buildDocumentItem(context),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentItem(BuildContext context) {
    var listItem = controller.filteredDocument.toList();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              ListView.builder(
                physics: ScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: listItem.length,
                itemBuilder: (context, index) {
                  var documentDetail = listItem[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                        child: Container(
                          height: 130.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                                  child: AutoSizeText(
                                    documentDetail!.trichYeu.toString(),
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                      color: context.themeExtensions.dartmouthGreen,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.bull.tr,
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Số ký hiệu : ",
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    AutoSizeText(
                                      documentDetail!.soKyHieu.toString(),
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.dartmouthGreen,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(width: 20.w),
                                    GestureDetector(
                                      onTap: () async {
                                        await controller.updateStatus(documentDetail.id!);
                                        controller.navigateToDocumentPdf(index);
                                      },
                                      child: Container(
                                        height: 18.h,
                                        width: 18.w,
                                        child: Image.asset(
                                          'assets/Icon/82.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.bull.tr,
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Ngày ban hành: ",
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      formatTime(documentDetail!.ngayBanHanh.toString()),
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.dartmouthGreen,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.bull.tr,
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Ngày nhận : ",
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      formatTime(documentDetail!.ngayNhanGui.toString()),
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.dartmouthGreen,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.bull.tr,
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Cơ quan ban hành : ",
                                      style: GoogleFonts.openSans(
                                        color: context.themeExtensions.textGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Expanded(
                                      child: AutoSizeText(
                                        documentDetail!.coQuanBanHanh.toString(),
                                        style: GoogleFonts.openSans(
                                          color: context.themeExtensions.dartmouthGreen,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                        ),
                                        textAlign: TextAlign.left,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 7.h,
                        child: documentDetail!.trangThaiPhanPhoi == null ? Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Chưa xem',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp
                            ),
                          ),
                        ) : Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Đã xem',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              documentDetail!.soDiDen.toString(),
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }







  String formatTime(String dateTimeString) {
    List<String> parts = dateTimeString.split('/');
    if (parts.length == 3) {
      String day = parts[1];
      String month = parts[0];
      String year = parts[2].split(' ')[0];
      return '$day/$month/$year';
    } else {
      return 'Invalid date format';
    }
  }
}
