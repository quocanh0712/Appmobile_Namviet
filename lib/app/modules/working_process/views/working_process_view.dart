// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

import '../controllers/working_process_controller.dart';

class WorkingProcessView extends BaseAppBarView<WorkingProcessController> {
  WorkingProcessView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: controller.listWorkingProcess.mapList((item) => _itemView(context, item)),
        ),
      ),
    );
  }

  Widget _itemView(BuildContext context, String item) {
    return Column(
      children: [
        InkWell(
          onTap: () => controller.navigateItem(item),
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
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item,
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.textColor),
                    textAlign: TextAlign.left,
                  ),
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
    );
  }

  @override
  String? get titleAppBar => LocaleKeys.workingProcess.tr;
}
