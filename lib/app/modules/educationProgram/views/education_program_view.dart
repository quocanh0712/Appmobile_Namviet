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

class EducationProgramView extends BaseListView<EducationProgramController> {
  EducationProgramView({Key? key}) : super(key: key);

  @override
  EdgeInsetsGeometry? paddingParent() => const EdgeInsets.all(0);

  @override
  Widget headerExpand() {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      color: Get.context?.themeExtensions.darkGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 40,
            child: Text(
              LocaleKeys.index.tr,
              textAlign: TextAlign.start,
              style: Get.context?.themeExtensions.subTexMedium
                  .copyWith(color: Get.context?.themeExtensions.white),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: Text(
            LocaleKeys.nameSubject.tr,
            textAlign: TextAlign.start,
            style: Get.context?.themeExtensions.subTexMedium
                .copyWith(color: Get.context?.themeExtensions.white),
          )),
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 70,
            child: Text(
              LocaleKeys.numberCredit.tr,
              textAlign: TextAlign.start,
              style: Get.context?.themeExtensions.subTexMedium
                  .copyWith(color: Get.context?.themeExtensions.white),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 65,
            child: Text(
              LocaleKeys.numberLesson.tr,
              textAlign: TextAlign.start,
              style: Get.context?.themeExtensions.subTexMedium
                  .copyWith(color: Get.context?.themeExtensions.white),
            ),
          ),
        ],
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
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          color: Get.context?.themeExtensions.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Text(
                  "${index + 1}",
                  textAlign: TextAlign.start,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Text(
                response.coursename ?? Constants.EMPTY,
                textAlign: TextAlign.start,
                style: Get.context?.themeExtensions.paragraph
                    .copyWith(color: Get.context?.themeExtensions.textColor),
              )),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 70,
                child: Text(
                  response.numbercredits?.toString() ?? Constants.EMPTY,
                  textAlign: TextAlign.center,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 65,
                child: Text(
                  response.numberlession?.toString() ?? Constants.EMPTY,
                  textAlign: TextAlign.center,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          color: Get.context?.themeExtensions.textGrey,
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
                dataSemesterSelected: controller.getEducationProgramRequest().semester,
                onModelChanged: (SearchAdvanceResponse? model) {
                  controller.setSearchAdvanceResponse(model);
                },
              ),
              acceptBtPress: () => controller.filterEducationProgramRequest(),
            );
          },
          icon: Assets.images.icFilterSearch
              .image(width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];
}
