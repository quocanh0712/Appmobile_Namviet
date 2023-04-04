// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:get/get.dart';

import '../controllers/create_new_certificate_controller.dart';

class CreateNewCertificateView extends BaseAppBarView<CreateNewCertificateController> {
  CreateNewCertificateView({Key? key}) : super(key: key);

  @override
  String? get titleAppBar => LocaleKeys.addCertificatesTitle.tr;

  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextInputField(
                    context,
                    title: LocaleKeys.nameCertificateTitle.tr,
                    onTextChanged: controller.setNameCerChange,
                  ),
                  _buildTextInputField(context,
                      title: LocaleKeys.graduationYearTitle.tr,
                      onTextChanged: controller.setGraduationYearCerChange,
                      keyboardType: TextInputType.datetime),
                  _buildTextInputField(
                    context,
                    title: LocaleKeys.degreeTitle.tr,
                    onTextChanged: controller.setDegreeChange,
                  ),
                  _buildTextInputField(
                    context,
                    title: LocaleKeys.placeTitle.tr,
                    onTextChanged: controller.setPlaceChange,
                  ),
                  _buildUploadFile(context, title: LocaleKeys.uploadCerTitle.tr),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.sendNewCertificate(),
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
                    LocaleKeys.addNewTitle.tr,
                    style: Get.context?.themeExtensions.paragraph
                        .copyWith(color: Get.context?.themeExtensions.white),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUploadFile(BuildContext context, {String? title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title ?? '',
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () => controller.selectPicture(),
          child: Obx(() => controller.base64Image.value.isNotEmpty == true
              ? SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Utils.imageFromBase64String(controller.base64Image.value)),
                )
              : Container(
                  height: 80,
                  width: 80,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: context.themeExtensions.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: context.themeExtensions.textLightGrey),
                  ),
                  child: Assets.images.icSelectPicture.svg(
                    width: 30,
                    height: 30,
                  ),
                )),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildTextInputField(BuildContext context,
      {String? title,
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
          initialValue: initValue,
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
}
