// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

import '../controllers/detail_conversation_controller.dart';

class DetailConversationView extends BaseListView<DetailConversationController> {
  DetailConversationView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  controller.conversationResponse.content ?? Constants.EMPTY,
                  style: context.themeExtensions.paragraph
                      .copyWith(color: context.themeExtensions.textColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        controller.getTimeUpdate(),
                        style: context.themeExtensions.subTex
                            .copyWith(color: context.themeExtensions.textGrey),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Obx(() => controller.isEditConversation.value == true
                        ? InkWell(
                            onTap: () => controller.updateConversation(),
                            child: Row(
                              children: [
                                Assets.images.icMessageEdit
                                    .svg(width: 18, height: 18, fit: BoxFit.cover),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  LocaleKeys.update.tr,
                                  style: context.themeExtensions.subTex
                                      .copyWith(color: context.themeExtensions.mainGreen),
                                )
                              ],
                            ),
                          )
                        : Container()),
                  ],
                ),
                Obx(() => Column(
                      children: widgetComment(context),
                    )),
              ],
            ),
          )),
          const SizedBox(
            height: 8,
          ),
          Divider(
            height: 1,
            color: context.themeExtensions.bgGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: context.themeExtensions.bgGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.textFieldController,
                    maxLines: 1,
                    textInputAction: TextInputAction.send,
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.textColor),
                    onSubmitted: (String text) => controller.sendComment(),
                    decoration: InputDecoration.collapsed(
                      hintText: LocaleKeys.hintConversation.tr,
                    ),
                    onChanged: (text) {
                      controller.updateMessageConversation(text);
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Obx(() => controller.message.value.isNotEmpty
                    ? InkWell(
                        onTap: () => controller.sendComment(),
                        child: Assets.images.icSendActive.svg(width: 24, height: 24))
                    : Assets.images.icSendInactive.svg(width: 24, height: 24)),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> widgetComment(BuildContext context) {
    return controller.listData.value.mapList((e) {
      String time = "";
      if (e?.updateAt != null) {
        var timeConvert = DateTimeUtils.formatDateTime(e!.updateAt!, timeAndDate);
        time = "${LocaleKeys.update.tr} $timeConvert";
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Divider(
            height: 1,
            color: context.themeExtensions.bgGrey,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            e?.content ?? Constants.EMPTY,
            style: context.themeExtensions.paragraph
                .copyWith(color: context.themeExtensions.textColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            time,
            style:
                context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 32,
                height: 32,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(e?.image ?? Constants.EMPTY,
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, loadingProgress) =>
                            Assets.images.ftuLogo.image(width: 32, height: 32, fit: BoxFit.cover),
                        errorBuilder: (context, error, stackTrace) =>
                            Assets.images.ftuLogo.image(width: 32, height: 32, fit: BoxFit.cover),
                        width: 32,
                        height: 32)),
              ),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (e?.teacher?.isNotEmpty == true) ...{
                    Text(
                      e!.teacher!,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.textColor),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  },
                  if (e?.employeePosition?.isNotEmpty == true) ...{
                    Text(
                      e!.employeePosition!,
                      style: context.themeExtensions.smallTex
                          .copyWith(color: context.themeExtensions.darkGreen),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  },
                ],
              )),
            ],
          ),
        ],
      );
    });
  }

  @override
  String? get titleAppBar => controller.getTitle();

  @override
  Widget itemView(BuildContext context, int index) {
    // TODO: implement itemView
    throw UnimplementedError();
  }
}
