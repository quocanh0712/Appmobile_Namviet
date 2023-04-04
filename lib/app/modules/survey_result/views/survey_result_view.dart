// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/custom_bottom_sheet.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';

import '../controllers/survey_result_controller.dart';

class SurveyResultView extends BaseListView<SurveyResultController> {
  SurveyResultView({Key? key}) : super(key: key);

  @override
  Widget itemView(BuildContext context, int index) {
    SurveyResultResponse? item = controller.getItem(index);
    if (item == null) return Container();
    return Column(
      children: [
        InkWell(
          child: Container(
            padding: const EdgeInsets.all(14),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name ?? "",
                      style: context.themeExtensions.paragraphSemiBold
                          .copyWith(color: context.themeExtensions.textColor),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "${item.semester} - ${item.year}",
                      style: context.themeExtensions.smallTex
                          .copyWith(color: context.themeExtensions.textColor),
                      textAlign: TextAlign.left,
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
          onTap: () => controller.navigateItem(item),
        ),
        const SizedBox(
          height: 8,
        )
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
                dataYearSelected: controller.getRequestData().year,
                dataSemesterSelected: controller.getRequestData().semester,
                onModelChanged: (SearchAdvanceResponse? model) {
                  controller.setSearchAdvanceResponse(model);
                },
              ),
              acceptBtPress: () => controller.filterRequestData(),
            );
          },
          icon: Assets.images.icFilterSearch
              .image(width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];

  @override
  String? get titleAppBar => LocaleKeys.serveyResults.tr;
}
