// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';

import '../controllers/elearning_controller.dart';

class ElearningView extends BaseListView<ElearningController> {
  ElearningView({Key? key}) : super(key: key);

  @override
  Widget itemView(BuildContext context, int index) {
    ELearningResponse? response = controller.getItem(index);
    if (response == null) return Container();
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        InkWell(
          onTap: () => controller.openHrefLink(response.link),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(response.imageUrl ?? Constants.EMPTY,
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, loadingProgress) =>
                            Assets.images.ftuLogo.image(width: 70, height: 70, fit: BoxFit.cover),
                        errorBuilder: (context, error, stackTrace) =>
                            Assets.images.ftuLogo.image(width: 70, height: 70, fit: BoxFit.cover),
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
                        response.title ?? Constants.EMPTY,
                        style: context.themeExtensions.paragraph
                            .copyWith(color: context.themeExtensions.textColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    infoView(context, Assets.images.icClock, response.time),
                    const SizedBox(height: 5),
                    infoView(context, Assets.images.icTeacherSvg, response.teacher),
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

  Widget infoView(BuildContext context, SvgGenImage image, String? title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        image.svg(
            fit: BoxFit.cover, width: 16, height: 16, color: context.themeExtensions.textColor),
        const SizedBox(
          width: 3,
        ),
        Expanded(
            child: Text(
          title ?? Constants.EMPTY,
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textColor),
        ))
      ],
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) {
    return [
      IconButton(
        onPressed: () async {
          DatePicker.showDatePicker(context,
              showTitleActions: true,
              minTime: DateTime(DateTime.now().year - 2),
              maxTime: DateTime(DateTime.now().year + 2), onChanged: (date) {
            print('change $date');
          }, onConfirm: (date) {
            controller.queryELearningList(date);
          }, currentTime: controller.dateTimeRequest, locale: LocaleType.vi);
        },
        icon: Assets.images.icCalendar
            .svg(width: 24, height: 24, color: context.themeExtensions.textColor),
      ),
    ];
  }

  @override
  String? get titleAppBar => controller.getTitle();
}
