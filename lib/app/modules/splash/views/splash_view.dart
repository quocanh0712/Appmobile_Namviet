// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ftu_lms/app/modules/splash/controllers/splash_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/colors.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';

class SplashView extends HookWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: LMSColors.honeydew,
          body: Stack(
            children: [
              Align(
                alignment: FractionalOffset.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 150),
                    Assets.images.ftuLogo.image(fit: BoxFit.cover),
                    const SizedBox(
                      height: 34,
                    ),
                    AutoSizeText(
                      LocaleKeys.welcomeMessage.tr,
                      style: context.themeExtensions.heading1
                          .copyWith(color: context.themeExtensions.black),
                    )
                  ],
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Flexible(child: Assets.images.splashBotContent.image(fit: BoxFit.cover)),
              )
            ],
          ),
        );
      },
    );
  }
}
