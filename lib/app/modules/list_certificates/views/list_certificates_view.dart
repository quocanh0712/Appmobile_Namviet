// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

import '../controllers/list_certificates_controller.dart';

class ListCertificatesView extends BaseListView<ListCertificatesController> {
  ListCertificatesView({Key? key}) : super(key: key);

  @override
  Widget itemView(BuildContext context, int index) {
    return Column(
      children: [
        InkWell(
          onTap: () => controller.openItemCertificate(index),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      controller.getItem(index)?.certificateName ?? Constants.EMPTY,
                      style: context.themeExtensions.paragraphSemiBold
                          .copyWith(color: context.themeExtensions.textColor),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      controller.getDescription(index),
                      style: context.themeExtensions.smallTex
                          .copyWith(color: context.themeExtensions.textGrey),
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
        ),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) {
    return [
      IconButton(
        onPressed: () => controller.navigateCreateCertificate(),
        icon: Assets.images.icAdd.svg(width: 24, height: 24),
      ),
    ];
  }

  @override
  String? get titleAppBar => LocaleKeys.certificatesTitle.tr;
}
