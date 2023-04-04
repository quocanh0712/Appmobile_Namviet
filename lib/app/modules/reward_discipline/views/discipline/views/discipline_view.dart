// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/discipline/model/discipline_response.dart';
import 'package:ftu_lms/app/modules/serviceRequestList/views/base_service_request_list_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';

import '../controllers/discipline_controller.dart';

class DisciplineView extends BaseServiceRequestListView<DisciplineController> {
  DisciplineView({Key? key}) : super(key: key);

  @override
  Widget buildItemViews(BuildContext context, {item, int? index}) {
    item as DisciplineResponse;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: context.themeExtensions.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: context.themeExtensions.lightSilver),
          boxShadow: [
            BoxShadow(
              color: context.themeExtensions.textLightGrey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(-1, 1),
            ),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: item.icon ?? '',
            width: 64,
            height: 64,
            fit: BoxFit.cover,
            placeholder: (_, __) => Assets.images.icDiscipline.image(width: 64, height: 64),
            errorWidget: (_, __, ___) => Assets.images.icDiscipline.image(width: 64, height: 64),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.discipline ?? "",
                maxLines: 2,
                style: context.themeExtensions.paragraphSemiBold
                    .copyWith(color: context.themeExtensions.textColor),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                item.content ?? "",
                maxLines: 3,
                style: context.themeExtensions.paragraph
                    .copyWith(color: context.themeExtensions.textGrey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
