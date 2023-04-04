// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

import '../controllers/discuss_feedback_controller.dart';

class DiscussFeedbackView extends BaseListView<DiscussFeedbackController> {
  DiscussFeedbackView({Key? key}) : super(key: key);

  @override
  Widget itemView(BuildContext context, int index) {
    ConversationResponse? response = controller.getItem(index);
    if (response == null) return Container();
    String time = "";
    if (response.updateAt != null) {
      time = DateTimeUtils.formatDateTime(response.updateAt!, timeAndDate);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        InkWell(
          onTap: () => controller.openDetailConversation(response),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                response.conversationname ?? Constants.EMPTY,
                style: context.themeExtensions.paragraph
                    .copyWith(color: context.themeExtensions.textColor),
                maxLines: 2,
              ),
              const SizedBox(
                height: 3,
              ),
              if (time.isNotEmpty)
                Text(
                  "${LocaleKeys.update.tr} $time",
                  style: context.themeExtensions.smallTex
                      .copyWith(color: context.themeExtensions.textColor),
                  maxLines: 2,
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

  @override
  String? get titleAppBar => LocaleKeys.conversationTitle.tr;

  @override
  List<Widget>? actionAppBar(BuildContext context) {
    return [
      IconButton(
        onPressed: () => controller.navigateCreateNewConversation(),
        icon: Assets.images.icAdd.svg(width: 24, height: 24),
      ),
    ];
  }
}
