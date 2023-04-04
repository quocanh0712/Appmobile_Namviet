// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_appbar_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/date_input_form.dart';

import 'package:get/get.dart';

import '../../controllers/create/create_learning_process_controller.dart';

class CreateLearningProcessView extends BaseAppBarView<CreateLearningProcessController> {
  CreateLearningProcessView({Key? key}) : super(key: key);
  @override
  Widget child(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _dateFieldWidget(context,
                      title: LocaleKeys.dateRangeStartLabel.tr,
                      dateInit: controller.startDate,
                      onDataChange: (date) => controller.updateStartDate(date)),
                  const SizedBox(
                    height: 10,
                  ),
                  _dateFieldWidget(context,
                      title: LocaleKeys.dateRangeEndLabel.tr,
                      dateInit: controller.endDate,
                      onDataChange: (date) => controller.updateEndDate(date)),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputField(
                    context,
                    title: LocaleKeys.faculty.tr,
                    controller: controller.majorController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputField(
                    context,
                    title: LocaleKeys.placeLearning.tr,
                    controller: controller.locationController,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => controller.sendFormRequest(),
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
                    controller.isCreated ? LocaleKeys.requestTitleButton.tr : LocaleKeys.update.tr,
                    style: Get.context?.themeExtensions.paragraph
                        .copyWith(color: Get.context?.themeExtensions.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dateFieldWidget(BuildContext context,
      {String? title, DateTime? dateInit, Function(DateTime? value)? onDataChange}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title ?? '',
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
        ),
        const SizedBox(
          height: 8,
        ),
        DateInputForm(initDate: dateInit, onDataChange: (date) => onDataChange?.call(date)),
      ],
    );
  }

  Widget _buildTextInputField(BuildContext context,
      {TextEditingController? controller,
      String? title,
      String? initValue,
      Widget? suffixIcon,
      TextInputType? keyboardType,
      int? maxLines = 1,
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
          maxLines: maxLines,
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

  @override
  String? get titleAppBar => controller.isCreated
      ? LocaleKeys.createNewLearningProcess.tr
      : LocaleKeys.editLearningProcess.tr;
}
