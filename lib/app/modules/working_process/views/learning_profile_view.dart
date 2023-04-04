// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/view_drop_down.dart';
import 'package:get/get.dart';

import '../controllers/learning_profile_controller.dart';

class LearningProfileView extends BaseAppBarView<LearningProfileController> {
  LearningProfileView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
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
                  AutoSizeText(
                    LocaleKeys.titleStudy.tr,
                    style: context.themeExtensions.paragraphSemiBold
                        .copyWith(color: context.themeExtensions.textColor),
                  ),
                  const SizedBox(height: 12),
                  _buildTextInputField(context,
                      controller: controller.fullNameController,
                      title: LocaleKeys.fullName.tr,
                      onTextChanged: (text) => controller.updateName(text)),
                  getSelectFormWidget(context,
                      title: LocaleKeys.academicRank.tr,
                      initIndex: controller.academicIndex.value,
                      listDataSelect:
                          controller.listAcademicConfig.value.mapList((e) => e?.value ?? ""),
                      onDataChanged: (index) => controller.updateAcademicRank(index)),
                  _buildTextInputField(context,
                      title: LocaleKeys.yearConferred.tr,
                      controller: controller.yearController,
                      keyboardType: TextInputType.number,
                      onTextChanged: (text) => controller.updateYearConferred(text)),
                  getSelectFormWidget(context,
                      title: LocaleKeys.degreeTitle.tr,
                      initIndex: controller.degreeIndex.value,
                      listDataSelect:
                          controller.listDegreeConfig.value.mapList((e) => e?.value ?? ""),
                      onDataChanged: (index) => controller.updateDegree(index)),
                  getSelectFormWidget(context,
                      title: LocaleKeys.research.tr,
                      initIndex: controller.titleIndex.value,
                      listDataSelect:
                          controller.listTitleConfig.value.mapList((e) => e?.value ?? ""),
                      onDataChanged: (index) => controller.updateTitle(index)),
                  getSelectFormWidget(context,
                      title: LocaleKeys.currentPosition.tr,
                      initIndex: controller.positionIndex.value,
                      listDataSelect:
                          controller.listPositionConfig.value.mapList((e) => e?.value ?? ""),
                      onDataChanged: (index) => controller.updatePosition(index)),
                  AutoSizeText(
                    LocaleKeys.personalInfo.tr,
                    style: context.themeExtensions.paragraphSemiBold
                        .copyWith(color: context.themeExtensions.textColor),
                  ),
                  const SizedBox(height: 12),
                  _buildTextInputField(context,
                      title: LocaleKeys.birthday.tr,
                      controller: controller.birthdayController,
                      keyboardType: TextInputType.datetime,
                      onTextChanged: (text) => controller.updateDateOfBirth(text)),
                  _buildTextInputField(context,
                      title: LocaleKeys.placeBorn.tr,
                      controller: controller.placeController,
                      onTextChanged: (text) => controller.updatePlaceOfBirth(text)),
                  _buildTextInputField(context,
                      title: LocaleKeys.phoneNumber.tr,
                      controller: controller.phoneNumberController,
                      keyboardType: TextInputType.phone,
                      onTextChanged: (text) => controller.updatePhoneNumber(text)),
                  _buildTextInputField(context,
                      title: LocaleKeys.email.tr,
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      onTextChanged: (text) => controller.updateEmail(text)),
                  _buildTextInputField(context,
                      title: LocaleKeys.companyName.tr,
                      controller: controller.companyController,
                      onTextChanged: (text) => controller.updateCompanyName(text)),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => controller.sendUpdateLearningProfile(),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.butGradientBg.path), fit: BoxFit.cover)),
              child: Align(
                  alignment: FractionalOffset.center,
                  child: AutoSizeText(
                    LocaleKeys.updateInfo.tr,
                    style: Get.context?.themeExtensions.paragraph
                        .copyWith(color: Get.context?.themeExtensions.white),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextInputField(BuildContext context,
      {TextEditingController? controller,
      String? title,
      String? initValue,
      Widget? suffixIcon,
      TextInputType? keyboardType,
      bool? obscureText = false,
      Function(String)? onTextChanged,
      bool? isLast = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title ?? '',
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller ?? TextEditingController(text: initValue),
          textAlignVertical: TextAlignVertical.center,
          textInputAction: isLast == true ? TextInputAction.done : TextInputAction.next,
          keyboardType: keyboardType ?? TextInputType.text,
          style:
              context.themeExtensions.paragraph.copyWith(color: context.themeExtensions.textColor),
          obscureText: obscureText ?? true,
          onChanged: onTextChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 6),
            isDense: true,
            suffixIconConstraints:
                const BoxConstraints(maxHeight: 24, maxWidth: 24, minHeight: 24, minWidth: 24),
            suffixIcon: suffixIcon,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: context.themeExtensions.textLightGrey)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: context.themeExtensions.mainGreen)),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget getSelectFormWidget(BuildContext context,
      {String? title,
      int? initIndex,
      Function(int)? onDataChanged,
      List<String>? listDataSelect}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title ?? '',
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
        ),
        const SizedBox(height: 8),
        DropDownView(
          defaultData: listDataSelect?[initIndex == -1 || initIndex == null ? 0 : initIndex],
          dataList: listDataSelect,
          onChanged: (text) {
            if (text == null) return;
            onDataChanged?.call(listDataSelect?.indexOf(text) ?? 0);
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  String? get titleAppBar => LocaleKeys.learningProfile.tr;
}
