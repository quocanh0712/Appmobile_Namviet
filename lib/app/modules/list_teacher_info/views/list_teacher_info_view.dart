// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/search_text_field.dart';
import 'package:get/get.dart';

import '../controllers/list_teacher_info_controller.dart';

class ListTeacherInfoView extends BaseListView<ListTeacherInfoController> {
  ListTeacherInfoView({Key? key}) : super(key: key);

  var focusNode = FocusNode();

  @override
  Widget itemView(BuildContext context, int index) {
    TeacherInfoResponse? response = controller.getItem(index);
    if (response == null) return Container();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(response.image ?? Constants.EMPTY,
                      fit: BoxFit.fill,
                      loadingBuilder: (context, child, loadingProgress) =>
                          Assets.images.ftuLogo.image(width: 70, height: 70, fit: BoxFit.cover),
                      errorBuilder: (context, error, stackTrace) =>
                          Assets.images.ftuLogo.image(width: 70, height: 70, fit: BoxFit.cover),
                      width: 40,
                      height: 40)),
            ),
            const SizedBox(
              width: 18,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (response.teacherName?.isNotEmpty == true) ...{
                  Text(
                    response.teacherName!,
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.textColor),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                },
                if (response.employeePosition?.isNotEmpty == true) ...{
                  Text(
                    response.employeePosition!,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.secondGreen),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                },
                if (response.employeeCode?.isNotEmpty == true) ...{
                  Text(
                    response.employeeCode!,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.textGrey),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                },
                if (response.branch?.isNotEmpty == true) ...{
                  Text(
                    response.branch!,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.textGrey),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                },
                if (response.email?.isNotEmpty == true) ...{
                  Text(
                    response.email!,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.textGrey),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                },
              ],
            )),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                controller.callTelephone(response.employeeCode);
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Assets.images.icCall.svg(width: 24, height: 24, fit: BoxFit.cover),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          color: context.themeExtensions.smokyWhite,
          height: 1,
        ),
      ],
    );
  }

  @override
  String? get titleAppBar => LocaleKeys.listTeacherTitle.tr;

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
