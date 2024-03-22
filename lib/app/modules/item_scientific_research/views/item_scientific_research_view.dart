// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base_list_view.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/model/item_scientific_research_response.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/search_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/item_scientific_research_controller.dart';

class ItemScientificResearchView extends BaseListView<ItemScientificResearchController> {
  ItemScientificResearchView({Key? key}) : super(key: key);
  Color hearderTableColor = Color(0xFFF5F7F9);

  @override
  Widget itemView(BuildContext context, int index) {
    ItemScientificResearchResponse? response = controller.getItem(index);

    String postAt = response!.postAt.toString(); // Lấy giá trị của trường "postAt" từ dữ liệu
    String formattedDate = postAt.substring(0, 10);
    return Column(
      children: [
         SizedBox(
          height: 12.h,
        ),
        InkWell(
          onTap: () => controller.openHrefLink(response.href),
          child: Container(
            height: 90.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: context.themeExtensions.lightSilver),
                boxShadow: [
                  BoxShadow(
                    color: context.themeExtensions.textLightGrey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              response.title ?? Constants.EMPTY,
                              style: GoogleFonts.cabin(color: context.themeExtensions.textColor, fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            if (response.postOn?.isNotEmpty == true) ...{
                              Expanded(
                                  child: Text(
                                response.postOn ?? Constants.EMPTY,
                                style: GoogleFonts.cabin(color: context.themeExtensions.secondGreen, fontWeight: FontWeight.w600),
                                maxLines: 2,
                              )),
                              const SizedBox(
                                width: 10,
                              )
                            },
                            if (response.postAt?.isNotEmpty == true) ...{
                              Align(
                                alignment: Alignment.center,
                                child: Assets.images.icDot
                                    .svg(fit: BoxFit.cover, color: context.themeExtensions.textLightGrey),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  formattedDate ?? Constants.EMPTY,
                                  textAlign: TextAlign.left,
                                  style: context.themeExtensions.smallTex
                                      .copyWith(color: context.themeExtensions.textGrey),
                                  maxLines: 2,
                                ),
                              )),
                            }
                          ],
                        )
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
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
                            width: 70,
                            height: 70)),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),

      ],
    );
  }

  @override
  List<Widget>? actionAppBar(BuildContext context) {
    return [
      // IconButton(
      //   onPressed: () => controller.navigateAddItemScientificResearch(),
      //   icon: Assets.images.icAdd
      //       .svg(width: 24, height: 24, color: context.themeExtensions.mainGreen),
      // ),
    ];
  }

  @override
  String? get titleAppBar => controller.getTitle();

  @override
  Widget? expandAppBarWidget(BuildContext context) {
    return SearchTextField(
      onTextChanged: (text) {
        controller.searchData(text);
      },
      initText: controller.textSearch,
      initHintText: LocaleKeys.hintScientificResearch.tr,
    );
  }
}
