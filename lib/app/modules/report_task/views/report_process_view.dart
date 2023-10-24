// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../../../../widgets/search_advance_view.dart';

abstract class ReportProcessView<T extends BaseListController>
    extends BaseListView<T> {
  ReportProcessView({Key? key}) : super(key: key);

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
            width: 10,
          ),
          Expanded(
              child: Text(
            header1(),
            textAlign: TextAlign.start,
            style: Get.context?.themeExtensions.subTexMedium
                .copyWith(color: Get.context?.themeExtensions.white),
          )),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              header2(),
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
              header3(),
              textAlign: TextAlign.start,
              style: Get.context?.themeExtensions.subTexMedium
                  .copyWith(color: Get.context?.themeExtensions.white),
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
              Expanded(
                  child: InkWell(
                child: Text("Theo dõi"),
              )),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            color: Get.context?.themeExtensions.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                  content1(index) ?? Constants.EMPTY,
                  textAlign: TextAlign.start,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    content2(index) ?? Constants.EMPTY,
                    textAlign: TextAlign.start,
                    style: Get.context?.themeExtensions.paragraph.copyWith(
                        color: Get.context?.themeExtensions.textColor),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    content3(index) ?? Constants.EMPTY,
                    textAlign: TextAlign.start,
                    style: Get.context?.themeExtensions.paragraph.copyWith(
                        color: Get.context?.themeExtensions.textColor),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),

        Divider(
          height: 1,
          color: Get.context?.themeExtensions.textGrey,
        ),
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
