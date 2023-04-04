// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/base/custom_appbar.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';

import '../controllers/password_edition_controller.dart';

class PasswordEditionView extends BaseView<PasswordEditionController> {
  PasswordEditionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: GestureDetector(
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
                ),
                body: SafeArea(
                  top: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
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
                                  child: Obx(
                                    () => Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        _buildTextInputField(
                                          context,
                                          title: LocaleKeys.oldPassword.tr,
                                          initValue: controller.submittedOldPass.value,
                                          suffixIcon: Focus(
                                            canRequestFocus: false,
                                            descendantsAreFocusable: false,
                                            child: InkWell(
                                                onTap: () => controller.obscureOldPassword.value =
                                                    !controller.obscureOldPassword.value,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: context.themeExtensions.mainGreen),
                                                  child: controller.obscureOldPassword.value ==
                                                          true
                                                      ? const Icon(Icons.visibility_outlined)
                                                      : const Icon(Icons.visibility_off_outlined),
                                                )),
                                          ),
                                          obscureText: controller.obscureOldPassword.value,
                                          error: controller.oldPassError.value,
                                          onChanged: (value) {
                                            controller.currentInputField =
                                                PassChangeInputField.oldPass;
                                            controller.currentOldPassInputText.value = value;
                                          },
                                          onFieldSubmitted: (value) =>
                                              controller.validateOldPassword(value),
                                        ),
                                        _buildTextInputField(
                                          context,
                                          title: LocaleKeys.newPassword.tr,
                                          initValue: controller.submittedNewPass.value,
                                          suffixIcon: Focus(
                                            canRequestFocus: false,
                                            descendantsAreFocusable: false,
                                            child: InkWell(
                                                onTap: () => controller.obscureNewPassword.value =
                                                    !controller.obscureNewPassword.value,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: context.themeExtensions.mainGreen),
                                                  child: controller.obscureNewPassword.value ==
                                                          true
                                                      ? const Icon(Icons.visibility_outlined)
                                                      : const Icon(Icons.visibility_off_outlined),
                                                )),
                                          ),
                                          obscureText: controller.obscureNewPassword.value,
                                          error: controller.newPassError.value,
                                          onChanged: (value) {
                                            controller.currentInputField =
                                                PassChangeInputField.newPass;
                                            controller.currentNewPassInputText.value = value;
                                          },
                                          onFieldSubmitted: (value) =>
                                              controller.validateNewPassword(value),
                                        ),
                                        _buildTextInputField(
                                          context,
                                          title: LocaleKeys.reEnterNewPassword.tr,
                                          initValue: controller.submittedRenewPass.value,
                                          suffixIcon: Focus(
                                            canRequestFocus: false,
                                            descendantsAreFocusable: false,
                                            child: InkWell(
                                                onTap: () => controller
                                                        .obscureReEnterredNewPassword.value =
                                                    !controller.obscureReEnterredNewPassword.value,
                                                child: IconTheme(
                                                  data: IconThemeData(
                                                      color: context.themeExtensions.mainGreen),
                                                  child: controller.obscureReEnterredNewPassword
                                                              .value ==
                                                          true
                                                      ? const Icon(Icons.visibility_outlined)
                                                      : const Icon(Icons.visibility_off_outlined),
                                                )),
                                          ),
                                          obscureText:
                                              controller.obscureReEnterredNewPassword.value,
                                          error: controller.renewPassError.value,
                                          onChanged: (value) {
                                            controller.currentInputField =
                                                PassChangeInputField.renewPass;
                                            controller.currentRenewPassInputText.value = value;
                                          },
                                          onFieldSubmitted: (value) =>
                                              controller.validateReNewPassword(value),
                                          isLast: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 356),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(Assets.images.butGradientBg.path),
                                fit: BoxFit.cover)),
                        child: InkWell(
                          onTap: () {
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
        ));
  }

  Widget _buildTextInputField(BuildContext context,
      {String? title,
      String? initValue,
      String? error,
      Widget? suffixIcon,
      bool? obscureText = false,
      String? hintText,
      bool? enabled,
      ValueChanged<String>? onChanged,
      ValueChanged<String>? onFieldSubmitted,
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
          key: UniqueKey(),
          enabled: enabled,
          initialValue: initValue,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          textAlignVertical: TextAlignVertical.center,
          textInputAction: isLast == true ? TextInputAction.done : TextInputAction.next,
          keyboardType: TextInputType.visiblePassword,
          obscureText: obscureText ?? true,
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
            ? Focus(
                canRequestFocus: false,
                descendantsAreFocusable: false,
                child: AutoSizeText(
                  error ?? '',
                  maxLines: 2,
                  style: context.themeExtensions.paragraphSemiBold
                      .copyWith(color: context.themeExtensions.red),
                ),
              )
            : const SizedBox.shrink(),
        const SizedBox(height: 16),
      ],
    );
  }
}
