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

abstract class BaseProcessView<T extends BaseListController> extends BaseListView<T> {
  BaseProcessView({Key? key}) : super(key: key);

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
            headerLeft(),
            textAlign: TextAlign.start,
            style: Get.context?.themeExtensions.subTexMedium
                .copyWith(color: Get.context?.themeExtensions.white),
          )),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              headerRight(),
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

  String headerLeft() => Constants.EMPTY;

  String? contentLeft(int index) => Constants.EMPTY;

  String headerRight() => Constants.EMPTY;

  String? contentRight(int index) => Constants.EMPTY;

  void onCreatedNewItem();

  void onActionEdit(int index);

  void onActionRemove(int index);

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
                child: Assets.images.icEdit2
                    .svg(width: 24, height: 24, color: context.themeExtensions.textColor),
              )),
              Expanded(
                  child: InkWell(
                onTap: () => onActionRemove(index),
                child: Assets.images.icTrash
                    .svg(width: 24, height: 24, color: context.themeExtensions.textColor),
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
                  contentLeft(index) ?? Constants.EMPTY,
                  textAlign: TextAlign.start,
                  style: Get.context?.themeExtensions.paragraph
                      .copyWith(color: Get.context?.themeExtensions.textColor),
                )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    contentRight(index) ?? Constants.EMPTY,
                    textAlign: TextAlign.start,
                    style: Get.context?.themeExtensions.paragraph
                        .copyWith(color: Get.context?.themeExtensions.textColor),
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
        )
      ],
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) => [
        IconButton(
          onPressed: () => onCreatedNewItem(),
          icon: Assets.images.icAdd.svg(width: 24, height: 24),
        ),
      ];
}
