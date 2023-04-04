// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/search_text_field.dart';
import 'package:get/get.dart';

import '../controllers/document_form_controller.dart';

class DocumentFormView extends BaseListView<DocumentFormController> {
  DocumentFormView({Key? key}) : super(key: key);

  var focusNode = FocusNode();

  @override
  Widget itemView(BuildContext context, int index) {
    DocumentFormResponse? item = controller.getItem(index);
    if (item == null) return Container();
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () => controller.openItemDocument(index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.formname ?? Constants.EMPTY,
                  maxLines: 2,
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.textColor),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  item.filename ?? Constants.EMPTY,
                  maxLines: 2,
                  style: context.themeExtensions.smallTex
                      .copyWith(color: context.themeExtensions.dartmouthGreen),
                ),
              ],
            ),
          )),
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () => controller.downloadFile(item.linkDownload),
            child: Assets.images.icDocumentDownload.image(
              width: 24,
              height: 24,
            ),
          )
        ],
      ),
    );
  }

  @override
  String? get titleAppBar => controller.getTitle();

  @override
  Widget? expandAppBarWidget(BuildContext context) {
    return SearchTextField(
      onTextChanged: (text) {
        controller.searchData(text);
      },
      focusNode: focusNode,
      initText: controller.textSearch,
      initHintText: LocaleKeys.searchHint.tr,
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) {
    return [
      IconButton(
        onPressed: () async {
          focusNode.requestFocus();
        },
        icon: Assets.images.icSearchNormal
            .svg(width: 24, height: 24, color: context.themeExtensions.textColor),
      ),
    ];
  }
}
