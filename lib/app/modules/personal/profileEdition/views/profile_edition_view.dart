// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/base/custom_appbar.dart';
import 'package:ftu_lms/app/modules/personal/profileEdition/controllers/profile_edition_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class ProfileEditionView extends BaseView<ProfileEditionController> {
  ProfileEditionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.onFucusChanged(isFocus: false);
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Stack(
        children: [
          Assets.images.profileHeaderBg.image(width: double.infinity, fit: BoxFit.cover),
          Scaffold(
            backgroundColor: context.themeExtensions.transparent,
            appBar: CustomAppBar(
              context: context,
              title: LocaleKeys.profileEdition.tr,
              backGroundColor: context.themeExtensions.transparent,
              handleBackPress: () {
                Fimber.d("handleBackPress()");
                Get.back(result: controller.userObject.value?.copyWith());
              },
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: context.themeExtensions.black.withOpacity(0.05),
                                      offset: const Offset(0, 4),
                                      blurRadius: 10)
                                ],
                                color: context.themeExtensions.white,
                                border: Border.all(
                                    color: context.themeExtensions.black.withOpacity(0.05),
                                    width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Obx(() => _buildTextInputField(
                                        context,
                                        title: LocaleKeys.fullName.tr,
                                        initValue: controller.userObject.value?.fullname,
                                        error: controller.userNameError.value,
                                        onChanged: (value) {
                                          controller.currentInputField = InputField.userName;
                                          controller.currentFullnameInputText.value = value;
                                        },
                                        onFieldSubmitted: (value) =>
                                            controller.validateUserName(value),
                                      )),
                                  Obx(() => _buildTextInputField(
                                        context,
                                        title: LocaleKeys.birthday.tr,
                                        initValue: controller.userObject.value?.birthday,
                                        hintText: DateTimeUtils.yMd,
                                        error: controller.birthdayError.value,
                                        suffixIcon: Container(
                                          padding: const EdgeInsets.all(4),
                                          child: Focus(
                                            canRequestFocus: false,
                                            descendantsAreFocusable: false,
                                            child: InkWell(
                                              onTap: () {
                                                _showDatePicker(context);
                                              },
                                              child: Assets.images.icCalendar
                                                  .svg(width: 16, height: 16, fit: BoxFit.contain),
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.datetime,
                                        onFieldSubmitted: (value) =>
                                            controller.validateBirthday(value),
                                        onChanged: (value) {
                                          controller.currentInputField = InputField.birthday;
                                          controller.currentBirthdayInputText.value = value;
                                        },
                                      )),
                                  Obx(
                                    () => _buildTextInputField(
                                      context,
                                      title: LocaleKeys.phoneNumber.tr,
                                      initValue: controller.userObject.value?.phone,
                                      error: controller.phoneNumberError.value,
                                      onFieldSubmitted: (value) =>
                                          controller.validatePhoneNumber(value),
                                      onChanged: (value) {
                                        controller.currentInputField = InputField.phoneNumber;
                                        controller.currentPhoneNumberInputText.value = value;
                                      },
                                    ),
                                  ),
                                  Obx(
                                    () => _buildTextInputField(context,
                                        title: LocaleKeys.email.tr,
                                        initValue: controller.userObject.value?.email,
                                        error: controller.emailError.value,
                                        onFieldSubmitted: (value) =>
                                            controller.validateEmail(value),
                                        onChanged: (value) {
                                          controller.currentInputField = InputField.email;
                                          controller.currentEmailInputText.value = value;
                                        },
                                        keyboardType: TextInputType.emailAddress),
                                  ),
                                  Obx(
                                    () => _buildTextInputField(
                                      context,
                                      title: LocaleKeys.ccidNumberAsterisk.tr,
                                      initValue: controller.userObject.value?.ccid,
                                      isLast: true,
                                      onFieldSubmitted: (value) => controller.validateCCID(value),
                                      onChanged: (value) {
                                        controller.currentInputField = InputField.ccid;
                                        controller.currentCCIDInputText.value = value;
                                      },
                                      error: controller.ccidError.value,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 156),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Focus(
                    canRequestFocus: false,
                    descendantsAreFocusable: false,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(Assets.images.butGradientBg.path),
                              fit: BoxFit.cover)),
                      child: InkWell(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          controller.onFucusChanged(isFocus: false);
                          controller.save();
                        },
                        child: Align(
                            alignment: FractionalOffset.center,
                            child: AutoSizeText(
                              LocaleKeys.save.tr,
                              style: context.themeExtensions.paragraphSemiBold
                                  .copyWith(color: context.themeExtensions.white),
                            )),
                      ),
                    ).paddingOnly(left: 20, right: 20, bottom: 13),
                  ),
                  Obx(() {
                    if (controller.isError.value?.isNotBlank() == true) {
                      controller.isError.value = "";
                      WidgetsBinding.instance.addPostFrameCallback((duration) {
                        showErrorDialog(context, messageError: controller.isError.value);
                      });
                    }
                    return const SizedBox.shrink();
                  }),
                  Obx(() {
                    if (controller.showMessage.value?.isNotBlank() == true) {
                      WidgetsBinding.instance.addPostFrameCallback((duration) {
                        showAlertDialog(context,
                            title: LocaleKeys.notification.tr,
                            message: controller.showMessage.value,
                            onAction: () => controller.showMessage.value = '');
                      });
                      controller.showMessage.value = "";
                    }
                    return const SizedBox.shrink();
                  }),
                  Obx(() {
                    if (controller.isLoading.value == true) {
                      WidgetsBinding.instance.addPostFrameCallback((duration) {
                        EasyLoading.show(dismissOnTap: false);
                      });
                    } else {
                      WidgetsBinding.instance.addPostFrameCallback((duration) {
                        EasyLoading.dismiss();
                      });
                    }
                    return const SizedBox.shrink();
                  }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextInputField(
    BuildContext context, {
    String? title,
    String? initValue,
    String? error,
    Widget? suffixIcon,
    bool? isLast = false,
    String? hintText,
    bool? enabled,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onFieldSubmitted,
    TextInputType? keyboardType,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title ?? '',
          style: context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
        ),
        TextFormField(
          key: UniqueKey(),
          enabled: enabled,
          initialValue: initValue,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: keyboardType,
          textInputAction: isLast == true ? TextInputAction.done : TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 6),
            isDense: true,
            suffixIconConstraints:
                const BoxConstraints(maxHeight: 24, maxWidth: 24, minHeight: 24, minWidth: 24),
            suffixIcon: suffixIcon,
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: context.themeExtensions.textGrey)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: context.themeExtensions.mainGreen)),
          ),
        ),
        const SizedBox(height: 8),
        error?.isNotEmpty == true ? const SizedBox(height: 7) : const SizedBox.shrink(),
        error?.isNotEmpty == true
            ? AutoSizeText(
                error ?? '',
                maxLines: 2,
                style: context.themeExtensions.paragraphSemiBold
                    .copyWith(color: context.themeExtensions.red),
              )
            : const SizedBox.shrink(),
        const SizedBox(height: 16),
      ],
    );
  }

  void _showDatePicker(BuildContext context) {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: Jiffy().subtract(years: 150).dateTime,
        maxTime: Jiffy().dateTime, onChanged: (date) {
      Fimber.d('change $date');
    }, onConfirm: (date) {
      Fimber.d(date.toString());
      controller.userObject.value =
          controller.userObject.value?.copyWith(birthday: Jiffy(date).yMd);
    },
        currentTime: DateFormat(DateTimeUtils.yMd)
            .parse(controller.userObject.value?.birthday ?? Jiffy().yMd),
        locale: LocaleType.vi);
  }
}
