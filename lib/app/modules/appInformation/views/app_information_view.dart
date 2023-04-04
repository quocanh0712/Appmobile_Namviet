// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/appInformation/bindings/app_information_binding.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/custom_appbar.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/app_information_controller.dart';

class AppInformationView
    extends BaseBindingCreatorView<AppInformationBinding, AppInformationController> {
  AppInformationView({super.key, required super.bindingCreator});

  @override
  Widget? onCreateViews(BuildContext context) {
    return Container(
        color: Colors.white,
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Stack(
            children: [
              Assets.images.profileHeaderBg.image(width: double.infinity, fit: BoxFit.cover),
              Scaffold(
                backgroundColor: context.themeExtensions.transparent,
                appBar: CustomAppBar(
                  context: context,
                  title: LocaleKeys.applicationInformations.tr,
                  backGroundColor: context.themeExtensions.transparent,
                ),
                body: SafeArea(
                  top: true,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                _buildInfoItem(context,
                                    title: LocaleKeys.version.tr, value: "1.0 b23", isFirst: true),
                                _buildInfoItem(
                                  context,
                                  title: LocaleKeys.hotline.tr,
                                  value: Constants.SUPPORT_PHONE_NUMBER,
                                  onTap: () => _makePhoneCall(Constants.SUPPORT_PHONE_NUMBER),
                                ),
                                _buildInfoItem(
                                  context,
                                  title: LocaleKeys.supportCenter.tr,
                                  isLast: true,
                                  rightArrow: true,
                                  onTap: () => launchUrl(
                                      Uri(
                                          scheme: Constants.HTTPS_SCHEME,
                                          host: Constants.FTU_HOST),
                                      mode: LaunchMode.externalApplication),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildInfoItem(BuildContext context,
      {String? title,
      String? value,
      bool? isFirst = false,
      bool? isLast = false,
      bool? rightArrow = false,
      GestureTapCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          isFirst != true ? const SizedBox(height: 16) : const SizedBox.shrink(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: AutoSizeText(title ?? '',
                    style: context.themeExtensions.paragraph
                        .copyWith(color: context.themeExtensions.textGrey)),
              ),
              const SizedBox(height: 16),
              rightArrow != true
                  ? Expanded(
                      flex: 1,
                      child: AutoSizeText(value ?? '',
                          style: context.themeExtensions.paragraph
                              .copyWith(color: context.themeExtensions.black),
                          textAlign: TextAlign.end),
                    )
                  : const SizedBox.shrink(),
              rightArrow == true
                  ? Assets.images.arrowRight.svg(
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color: context.themeExtensions.textGrey)
                  : const SizedBox.shrink()
            ],
          ),
          isLast != true ? const SizedBox(height: 16) : const SizedBox.shrink(),
          isLast != true
              ? Container(
                  width: double.infinity,
                  height: 1,
                  color: context.themeExtensions.black.withOpacity(0.05))
              : const SizedBox.shrink()
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
