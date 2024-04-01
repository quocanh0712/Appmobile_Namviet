// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/login/controllers/login_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends BaseView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (loginController) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  Stack(children: [
                    Assets.images.universityBuilding
                        .image(width: double.infinity, fit: BoxFit.cover, height: 380),
                    Container(
                      width: double.infinity,
                      height: Get.width * 1.1,
                      decoration: BoxDecoration(
                          gradient: GradientExtension(context).headerGradient),
                      child: SafeArea(
                        top: true,
                        bottom: true,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: Get.width * 0.1),
                            Assets.images.uflLogo.image(
                                width: Get.width * 0.26,
                                height: Get.width * 0.26,
                                fit: BoxFit.cover),
                            SizedBox(height: Get.width * 0.03),
                            AutoSizeText(LocaleKeys.learningManagementSystem.tr,
                                style: context.themeExtensions.heading2
                                    .copyWith(
                                        color: context.themeExtensions.white)),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: Get.width * 0.68),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: context.themeExtensions.white,
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Obx(() => loginController.sessionTimeout.value
                                    ? const SizedBox.shrink()
                                    : Stack(
                                        children: [
                                          Container(
                                              height: 46,
                                              width: 100,
                                              alignment:
                                                  AlignmentDirectional.center),
                                          Text(
                                            // "---Mời chọn đơn vị---"),
                                              "Trường Đại học Ngoại Ngữ Đà Nẵng", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18)),
                                          // DropdownButton(
                                          //   // Initial Value
                                          //   isExpanded: true,
                                          //   hint: const
                                          //   value: 1,
                                          //   // Down Arrow Icon
                                          //   icon: const Icon(
                                          //       Icons.keyboard_arrow_down),
                                          //   items: loginController.list,
                                          //   onChanged: (value) {
                                          //     loginController.list.first =
                                          //         loginController.list
                                          //             .firstWhere((e) =>
                                          //                 e.value == value);
                                          //     loginController
                                          //         .getValueDropDown(value);
                                          //   },
                                          // ),
                                        ],
                                      )),
                                //-----------------------
                                Obx(() => loginController.sessionTimeout.value
                                    ? const SizedBox.shrink()
                                    : const SizedBox(height: 5)),
                                Obx(() => loginController.sessionTimeout.value
                                    ? const SizedBox.shrink()
                                    : Stack(
                                        children: [
                                          Container(
                                              height: 46,
                                              decoration: loginController
                                                      .userNameIsFocus.value
                                                  ? BoxDecoration(
                                                      border: Border.all(
                                                          color: context
                                                              .themeExtensions
                                                              .mainGreen),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: context
                                                          .themeExtensions
                                                          .cultured)
                                                  : BoxDecoration(
                                                      color: context
                                                          .themeExtensions
                                                          .cultured,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                          TextFormField(
                                            focusNode: loginController
                                                .userNameFocusNode,
                                            textInputAction:
                                                TextInputAction.next,
                                            onChanged: (value) =>
                                                loginController
                                                    .userNameTextChanged(value),
                                            controller: loginController
                                                .userNameTextEditingController,
                                            decoration: InputDecoration(
                                                hintText:
                                                    LocaleKeys.userName.tr,
                                                border: InputBorder.none,
                                                filled: true,
                                                fillColor: context
                                                    .themeExtensions
                                                    .transparent,
                                                prefixIcon: IconTheme(
                                                  data: IconThemeData(
                                                      color: context
                                                          .themeExtensions
                                                          .mainGreen),
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            14),
                                                    child: Assets
                                                        .images.icPerson
                                                        .svg(
                                                            width: 7,
                                                            height: 7,
                                                            fit: BoxFit.cover),
                                                  ),
                                                ),
                                                suffixIcon: Obx(() => InkWell(
                                                    onTap: () => loginController
                                                        .clearUserName(),
                                                    child: loginController
                                                                .showUserNameClearIcon
                                                                .value ==
                                                            true
                                                        ? IconTheme(
                                                            data: IconThemeData(
                                                                color: context
                                                                    .themeExtensions
                                                                    .mainGreen),
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(14),
                                                              child: Assets
                                                                  .images
                                                                  .icClear
                                                                  .svg(
                                                                      width: 7,
                                                                      height: 7,
                                                                      fit: BoxFit
                                                                          .cover),
                                                            ),
                                                          )
                                                        : const SizedBox
                                                            .shrink()))),
                                            onFieldSubmitted: (v) {
                                              FocusScope.of(context)
                                                  .requestFocus(loginController
                                                      .passwordFocusNode);
                                            },
                                          )
                                        ],
                                      )),
                                Obx(() => loginController.sessionTimeout.value
                                    ? const SizedBox.shrink()
                                    : const SizedBox(height: 16)),
                                Obx(() => Stack(
                                      children: [
                                        Container(
                                            height: 46,
                                            decoration: loginController
                                                    .passwordIsFocus.value
                                                ? BoxDecoration(
                                                    border: Border.all(
                                                        color: context
                                                            .themeExtensions
                                                            .mainGreen),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: context
                                                        .themeExtensions
                                                        .cultured)
                                                : BoxDecoration(
                                                    color: context
                                                        .themeExtensions
                                                        .cultured,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Obx(() => TextFormField(
                                                    focusNode: loginController
                                                        .passwordFocusNode,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    onChanged: (value) =>
                                                        loginController
                                                            .passwordTextChanged(
                                                                value),
                                                    controller: loginController
                                                        .passwordTextEditingController,
                                                    keyboardType: TextInputType
                                                        .visiblePassword,
                                                    obscureText: loginController
                                                        .obscurePassword.value,
                                                    decoration: InputDecoration(
                                                        hintText: LocaleKeys
                                                            .password.tr,
                                                        border:
                                                            InputBorder.none,
                                                        filled: true,
                                                        fillColor: context
                                                            .themeExtensions
                                                            .transparent,
                                                        prefixIcon: IconTheme(
                                                          data: IconThemeData(
                                                              color: context
                                                                  .themeExtensions
                                                                  .mainGreen),
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(14),
                                                            child: Assets
                                                                .images.icLock
                                                                .svg(
                                                                    width: 7,
                                                                    height: 7,
                                                                    fit: BoxFit
                                                                        .cover),
                                                          ),
                                                        ),
                                                        suffixIcon: loginController
                                                                    .showPasswordClearIcon
                                                                    .value ==
                                                                true
                                                            ? InkWell(
                                                                onTap: () => loginController
                                                                        .obscurePassword
                                                                        .value =
                                                                    !loginController
                                                                        .obscurePassword
                                                                        .value,
                                                                child:
                                                                    IconTheme(
                                                                  data: IconThemeData(
                                                                      color: context
                                                                          .themeExtensions
                                                                          .mainGreen),
                                                                  child: loginController
                                                                              .obscurePassword
                                                                              .value ==
                                                                          true
                                                                      ? const Icon(
                                                                          Icons
                                                                              .visibility_outlined)
                                                                      : const Icon(
                                                                          Icons
                                                                              .visibility_off_outlined),
                                                                ))
                                                            : const SizedBox.shrink()),
                                                  )),
                                            ),
                                            InkWell(
                                                onTap: () => loginController
                                                    .clearPassword(),
                                                child: loginController
                                                            .showPasswordClearIcon
                                                            .value ==
                                                        true
                                                    ? IconTheme(
                                                        data: IconThemeData(
                                                            color: context
                                                                .themeExtensions
                                                                .mainGreen),
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 13),
                                                          child: Assets
                                                              .images.icClear
                                                              .svg(
                                                                  width: 22,
                                                                  height: 22,
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      )
                                                    : const SizedBox.shrink())
                                          ],
                                        )
                                      ],
                                    )),
                                const SizedBox(height: 16),
                                Obx(() => loginController
                                        .isError.value.isNotBlank
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          AutoSizeText(
                                            loginController.isError.value ?? '',
                                            maxLines: 2,
                                            style: context.themeExtensions
                                                .paragraphSemiBold
                                                .copyWith(
                                                    color: context
                                                        .themeExtensions.red),
                                          ),
                                          const SizedBox(
                                              width: double.infinity,
                                              height: 16),
                                        ],
                                      )
                                    : const SizedBox.shrink()),
                                Obx(() => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: AssetImage(Assets
                                                        .images
                                                        .butGradientBg
                                                        .path),
                                                    fit: BoxFit.cover)),
                                            child: InkWell(
                                              onTap: () {
                                                loginController.performLogin();
                                              },
                                              child: Align(
                                                  alignment:
                                                      FractionalOffset.center,
                                                  child: AutoSizeText(
                                                    LocaleKeys.login.tr,
                                                    style: context
                                                        .themeExtensions
                                                        .paragraphSemiBold
                                                        .copyWith(
                                                            color: context
                                                                .themeExtensions
                                                                .white),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        loginController
                                                .biometricLoginIsEnable.value
                                            ? InkWell(
                                                onTap: () => loginController
                                                    .handleBiometricLogin(),
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Assets
                                                        .images.icFingerScan
                                                        .svg(
                                                            width: 32,
                                                            height: 32,
                                                            fit: BoxFit.cover,
                                                            color: context
                                                                .themeExtensions
                                                                .mainGreen)),
                                              )
                                            : const SizedBox.shrink()
                                      ],
                                    )),
                                const SizedBox(height: 25),
                                InkWell(
                                  onTap: () =>
                                      loginController.navigateToFogotPassword(),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: AutoSizeText(
                                          LocaleKeys.forgotPassword.tr,
                                          style: context
                                              .themeExtensions.paragraph
                                              .copyWith(
                                                  color: context.themeExtensions
                                                      .mainGreen),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
                  Obx(() => Visibility(
                        visible: loginController.showBiometricLogin.value,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          width: double.infinity,
                          height: double.infinity,
                          color: context.themeExtensions.black.withOpacity(0.6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                LocaleKeys.bimometricTitle.tr,
                                style: context.themeExtensions.heading2
                                    .copyWith(
                                        color: context.themeExtensions.white),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              AutoSizeText(
                                LocaleKeys.bimometricDescription.tr,
                                style: context.themeExtensions.paragraph
                                    .copyWith(
                                        color: context.themeExtensions.white),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 55),
                              Assets.images.icFingerScan.svg(
                                  width: 76, height: 76, fit: BoxFit.cover),
                              const SizedBox(height: 40)
                            ],
                          ),
                        ),
                      )),
                  Obx(() {
                    if (loginController.isLoading.value == true) {
                      WidgetsBinding.instance.addPostFrameCallback((duration) {
                        EasyLoading.show();
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
          );
        });
  }
}
