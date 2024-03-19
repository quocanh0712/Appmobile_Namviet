// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/educationProgram/controllers/education_program_controller.dart';
import 'package:ftu_lms/app/modules/educationProgram/model/education_program_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/custom_bottom_sheet.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationProgramView extends BaseListView<EducationProgramController> {
  EducationProgramView({Key? key}) : super(key: key);



  Color hearderTableColor = Color(0xFFF5F7F9);
  Color borderHearderTableColor = Color(0xFFD2D9DE);

  @override
  EdgeInsetsGeometry? paddingParent() => const EdgeInsets.all(0);

  @override
  Widget headerExpand() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Container(
        //padding: const EdgeInsets.only(top: 8, bottom: 8),
        height: 50,
        decoration: BoxDecoration(
          color: hearderTableColor,
          border: Border.all(color: borderHearderTableColor, width: 1.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 40,
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(color: borderHearderTableColor, width: 1.5),
              )),
              child: Center(
                child: Text(
                  LocaleKeys.index.tr,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                      color: Get.context?.themeExtensions.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                child: Text(
              LocaleKeys.nameSubject.tr,
              textAlign: TextAlign.start,
              style: GoogleFonts.openSans(
                  color: Get.context?.themeExtensions.black,
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 85,
              height: 40,
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(color: borderHearderTableColor, width: 1.5),
                left: BorderSide(color: borderHearderTableColor, width: 1.5),
              )),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  LocaleKeys.numberCredit.tr,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                      color: Get.context?.themeExtensions.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // const SizedBox(
            //   width: 10,
            // ),
            SizedBox(
              width: 65,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  LocaleKeys.numberLesson.tr,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                      color: Get.context?.themeExtensions.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget itemView(BuildContext context, int index) {
    EducationProgramResponse? response = controller.getItem(index);
    if (response == null) return Container();
    return Column(
      children: [
        Container(
         // padding: const EdgeInsets.only(top: 6, bottom: 4),
          color: Get.context?.themeExtensions.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 60,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "${index + 1}",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.openSans(
                        color: Get.context?.themeExtensions.textColor,fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              Container(
                width: 230,
                height: 70,
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(color: borderHearderTableColor, width: 1.5),
                  left: BorderSide(color: borderHearderTableColor, width: 1.5),
                )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      response.coursename ?? Constants.EMPTY,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.openSans(
                          color: Get.context?.themeExtensions.darkGreen, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 82,
                child: Text(
                  response.numbercredits?.toString() ?? Constants.EMPTY,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                      color: Get.context?.themeExtensions.textColor, fontWeight: FontWeight.w500),
                ),
              ),

              Container(
                width: 65,
                height: 70,
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: borderHearderTableColor, width: 1.5),
                    )),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    response.numberlession?.toString() ?? Constants.EMPTY,

                    style: GoogleFonts.openSans(
                        color: Get.context?.themeExtensions.textColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 6,
          color: borderHearderTableColor,
        ),
      ],
    );
  }

  @override
  String? get titleAppBar => LocaleKeys.teachingProgram.tr;

  @override
  List<Widget>? actionAppBar(BuildContext context) => [
        IconButton(
          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              headerTitle: LocaleKeys.filterDataTitle.tr,
              buttonTitle: LocaleKeys.filterDataButton.tr,
              contentView: SearchAdvanceView(
                isSessionSupported: false,
                dataYearSelected: controller.getEducationProgramRequest().year,
                dataSemesterSelected:
                    controller.getEducationProgramRequest().semester,
                onModelChanged: (SearchAdvanceResponse? model) {
                  controller.setSearchAdvanceResponse(model);
                },
              ),
              acceptBtPress: () => controller.filterEducationProgramRequest(),
            );
          },
          icon: Assets.images.icFilterSearch.image(
              width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];
}
