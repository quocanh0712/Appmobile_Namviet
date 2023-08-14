// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/survey_result/views/survey_item/model/survey_item_response.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

import '../controllers/class_survey_item_controller.dart';

class SurveyItemView extends BaseListView<SurveyItemController> {
  SurveyItemView({Key? key}) : super(key: key);

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
          Expanded(
              child: Text(
            LocaleKeys.targetSurvey.tr,
            textAlign: TextAlign.start,
            style: Get.context?.themeExtensions.subTexMedium
                .copyWith(color: Get.context?.themeExtensions.white),
          )),
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 70,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                LocaleKeys.result.tr,
                textAlign: TextAlign.start,
                style: Get.context?.themeExtensions.subTexMedium
                    .copyWith(color: Get.context?.themeExtensions.white),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 70,
            child: Align(
              alignment: Alignment.centerRight,
              child: AutoSizeText(
                LocaleKeys.countRate.tr,
                textAlign: TextAlign.start,
                style: Get.context?.themeExtensions.subTexMedium
                    .copyWith(color: Get.context?.themeExtensions.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget itemView(BuildContext context, int index) {
    SurveyItemResponse? response = controller.getItem(index);
    if (response == null) return Container();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          color: Get.context?.themeExtensions.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Text(
                response.criteria ?? Constants.EMPTY,
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
                  response.result?.toString() ?? Constants.EMPTY,
                  textAlign: TextAlign.center,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 70,
                child: Text(
                  "${response.count?.toString() ?? Constants.EMPTY}/${response.total?.toString() ?? Constants.EMPTY}",
                  textAlign: TextAlign.right,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Get.context?.themeExtensions.textGrey,
        )
      ],
    );
  }

  @override
  String? get titleAppBar => controller.response.name ?? "";
}
