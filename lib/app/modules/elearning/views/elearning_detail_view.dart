// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';

import '../../base/base_appbar_view.dart';
import '../controllers/elearning_detail_controller.dart';

class ElearningDeTailView extends BaseAppBarView<ElearningDetailController> {
  ElearningDeTailView({Key? key}) : super(key: key);

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
                            .images.icons8Youtube28
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
                        'Bài thực hành số 1',
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    //infoView(context, Assets.images.icClock, response.time),
                    //infoView(context, Assets.images.icClock, ''),
                    const SizedBox(height: 5),
                    //infoView(context, Assets.images.icTeacherSvg, 'admin'),
                    //context, Assets.images.icTeacherSvg, response.teacher),
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
                  Assets.images.icButtonPlay.svg(
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  )
                ],
              )
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
                            .images.icons8PdfFileFormat28
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
                        'Bài thực hành số 2',
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    //infoView(context, Assets.images.icClock, response.time),
                    //infoView(context, Assets.images.icClock, ''),
                    const SizedBox(height: 5),
                    //infoView(context, Assets.images.icTeacherSvg, 'admin'),
                    //context, Assets.images.icTeacherSvg, response.teacher),
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
                  Assets.images.icButtonPlay.svg(
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  )
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

  @override
  String? get titleAppBar => controller.getTitle();
}
