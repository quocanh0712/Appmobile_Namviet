// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:ftu_lms/app/modules/base/base_appbar_view.dart';
import 'package:ftu_lms/app/modules/document_form_item/controllers/document_form_item_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

class DocumentFormItemView extends BaseAppBarView<DocumentFormItemController> {
  DocumentFormItemView({Key? key}) : super(key: key);

  @override
  String? get titleAppBar => controller.getTitle();

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      child: Column(
        children: [
          Expanded(
              child: const PDF(
            swipeHorizontal: true,
          ).cachedFromUrl(controller.getPathFile())),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              controller.createForm();
            },
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.butGradientBg.path), fit: BoxFit.cover)),
              child: Align(
                  alignment: FractionalOffset.center,
                  child: AutoSizeText(
                    LocaleKeys.createFormBtn.tr,
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.white),
                  )),
            ),
          )
        ],
      ),
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          controller.downloadFile();
        },
        icon: Assets.images.icDocumentDownload
            .image(width: 24, height: 24, color: context.themeExtensions.textColor),
      ),
    ];
  }
}
