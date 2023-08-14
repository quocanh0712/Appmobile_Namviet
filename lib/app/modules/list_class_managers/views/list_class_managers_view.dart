// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../base/base_appbar_view.dart';
import '../controllers/list_class_managers_controller.dart';

class ListClassManagersView
    extends BaseAppBarView<ListClassManagersController> {
  ListClassManagersView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        InkWell(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(Constants.EMPTY,
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, loadingProgress) =>
                            Assets.images.icNoData.image(
                                width: 70, height: 70, fit: BoxFit.cover),
                        errorBuilder: (context, error, stackTrace) => Assets
                            .images.icons8Classroom28
                            .image(width: 70, height: 70, fit: BoxFit.cover),
                        width: 60,
                        height: 60)),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        LocaleKeys.fakeClass.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    infoView(context, Assets.images.icPerson, '42'),
                    const SizedBox(height: 5),
                  ],
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Assets.images.icConversation
                      .image(width: 40, height: 40, fit: BoxFit.cover)
                  // Assets.images.icMessageEdit.svg(
                  //   fit: BoxFit.cover,
                  //   width: 40,
                  //   height: 40,
                  // )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Divider(
          color: context.themeExtensions.smokyWhite,
          height: 1,
        ),
      ],
    );
  }

  Widget infoView(BuildContext context, SvgGenImage image, String? title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        image.svg(
            fit: BoxFit.cover,
            width: 16,
            height: 16,
            color: context.themeExtensions.textColor),
        const SizedBox(
          width: 3,
        ),
        Expanded(
            child: Text(
          title ?? Constants.EMPTY,
          style: context.themeExtensions.subTex
              .copyWith(color: context.themeExtensions.textColor),
        ))
      ],
    );
  }

  @override
  String? get titleAppBar => controller.getTitle();
}
