// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../../../../widgets/search_advance_view.dart';
import '../../base/base_appbar_view.dart';
import '../controllers/list_stu_checkin_controller.dart';
import '../controllers/stu_outside_manager_controller.dart';

class StuOutsideManagerView
    extends BaseAppBarView<StuOutsideManagerController> {
  StuOutsideManagerView({Key? key}) : super(key: key);
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
                            Assets.images.icBookPng.image(
                                width: 70, height: 70, fit: BoxFit.cover),
                        errorBuilder: (context, error, stackTrace) => Assets
                            .images.ic74
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
                        LocaleKeys.fakeStu3.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    infoView(context, Assets.images.arrowRight,
                        'Đ/c: Tổ 8 - Phan Đình Phùng - Thái Nguyên - TN'),
                    const SizedBox(height: 5),
                    const SizedBox(height: 5),
                  ],
                ),
              )),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
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
                            Assets.images.icBookPng.image(
                                width: 70, height: 70, fit: BoxFit.cover),
                        errorBuilder: (context, error, stackTrace) => Assets
                            .images.ic74
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
                        LocaleKeys.fakeStu9.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    infoView(context, Assets.images.arrowRight,
                        'Đ/c: Tổ 22 - P Hoàng Văn Thụ - TP Thái Nguyên - TN'),
                    const SizedBox(height: 5),
                    const SizedBox(height: 5),
                  ],
                ),
              )),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
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
                            Assets.images.icBookPng.image(
                                width: 70, height: 70, fit: BoxFit.cover),
                        errorBuilder: (context, error, stackTrace) => Assets
                            .images.ic74
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
                        LocaleKeys.fakeStu10.tr,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    infoView(context, Assets.images.arrowRight,
                        'Đ/c: Lương Sơn - Tp Thái Nguyên - Thái Nguyên'),
                    const SizedBox(height: 5),
                    const SizedBox(height: 5),
                  ],
                ),
              )),
              const SizedBox(
                width: 10,
              ),
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
  List<Widget>? actionAppBar(BuildContext context) => [
        IconButton(
          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              headerTitle: LocaleKeys.filterDataTitle.tr,
              buttonTitle: LocaleKeys.filterDataButton.tr,
              contentView: SearchAdvanceView(
                isSessionSupported: false,
                //dataYearSelected: controller.getRequestData().year,
                //dataSemesterSelected: controller.getRequestData().semester,
                onModelChanged: (SearchAdvanceResponse? model) {
                  //controller.setSearchAdvanceResponse(model);
                },
              ),
              //acceptBtPress: () => controller.filterRequestData(),
            );
          },
          icon: Assets.images.icFilterSearch.image(
              width: 24, height: 24, color: context.themeExtensions.textColor),
        ),
      ];
  @override
  String? get titleAppBar =>
      controller.getTitle() + ' lớp ' + LocaleKeys.fakeClass.tr;
}
