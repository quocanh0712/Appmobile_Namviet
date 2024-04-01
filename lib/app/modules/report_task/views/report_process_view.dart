// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/locales.g.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../../../../widgets/search_advance_view.dart';

abstract class ReportProcessView<T extends BaseListController>
    extends BaseListView<T> {
  ReportProcessView({Key? key}) : super(key: key);

  Color hearderTableColor = Color(0xFFF5F7F9);
  Color borderHearderTableColor = Color(0xFFD2D9DE);

  @override
  EdgeInsetsGeometry? paddingParent() => const EdgeInsets.all(0);

  @override
  Widget headerExpand() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: hearderTableColor,
        border: Border.all(color: borderHearderTableColor, width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.only(left: 3.0),
              width: 95.w,
              height: 40.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  header1(),
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                      color: Get.context?.themeExtensions.black,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600),
                ),
              )),
          Container(
            padding: const EdgeInsets.only(left: 3.0),
            width: 150.w,
            height: 40.h,
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(color: borderHearderTableColor, width: 1.5),
              left: BorderSide(color: borderHearderTableColor, width: 1.5),
            )),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                header2(),
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                    color: Get.context?.themeExtensions.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              header3(),
              textAlign: TextAlign.start,
              style: GoogleFonts.openSans(
                  color: Get.context?.themeExtensions.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  String header1() => Constants.EMPTY;

  String header2() => Constants.EMPTY;

  String header3() => Constants.EMPTY;

  String? content1(int index) => Constants.EMPTY;

  String? content2(int index) => Constants.EMPTY;

  String? content3(int index) => Constants.EMPTY;

  //void onCreatedNewItem();

  void onActionEdit(int index);

  // onActionRemove(int index);

  @override
  Widget itemView(BuildContext context, int index) {
    return Column(
      children: [
        Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              Expanded(
                  child: InkWell(
                onTap: () => onActionEdit(index),
                child: Assets.images.icEdit2.svg(
                    width: 24,
                    height: 24,
                    color: context.themeExtensions.textColor),
              )),
              const Expanded(
                  child: InkWell(
                child: Text("Theo dõi"),
              )),
            ],
          ),
          child: Container(
            color: Get.context?.themeExtensions.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 65.h),
                  child: Container(
                      width: 96.w,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          content1(index) ?? Constants.EMPTY,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.openSans(
                              color: Get.context?.themeExtensions.textColor, fontWeight: FontWeight.w600, fontSize: 12.sp),
                        ),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 2.0, right: 1),
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      border: Border(
                    right:
                        BorderSide(color: borderHearderTableColor, width: 1.5),
                    left:
                        BorderSide(color: borderHearderTableColor, width: 1.5),
                  )),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      content2(index) ?? Constants.EMPTY,

                      style: GoogleFonts.openSans(
                          color: Get.context?.themeExtensions.textColor, fontWeight: FontWeight.w400, fontSize: 12.sp, letterSpacing: 1.4),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 65.h, left: 17.w),
                  child: Container(
                    padding: const EdgeInsets.only(left: 3.0),
                    width: 85.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                        color: content3(index) == 'Đang xử lý' ? Colors.orange :
                        content3(index) == 'Hoàn thành' ? Colors.green :
                        Colors.white,
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        content3(index) ?? Constants.EMPTY,
                        style: GoogleFonts.openSans(
                            color: Get.context?.themeExtensions.white, fontWeight: FontWeight.bold, fontSize: 11.sp),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        Divider(height: 1, color: borderHearderTableColor),
      ],
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) => [
        IconButton(
          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              headerTitle: LocaleKeys.filterDataTitle.tr,
              buttonTitle: LocaleKeys.filterDataButton.tr,
              contentView: SearchAdvanceView(
                isSessionSupported: false,
                onModelChanged: (SearchAdvanceResponse? model) {},
              ),
            );
          },
          icon: Assets.images.icFilterSearch.image(
              width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];
}
