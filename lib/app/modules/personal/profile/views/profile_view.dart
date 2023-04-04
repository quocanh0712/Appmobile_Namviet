// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// ignore_for_file: must_be_immutable

import 'dart:async';
import 'dart:ui' as ui;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/app/modules/base/base_view.dart';
import 'package:ftu_lms/app/modules/personal/profile/controllers/profile_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/colors.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/widgets/sliver_fab.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProfileView extends BaseView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeExtensions.white,
      body: Builder(
        builder: (context) {
          return SliverFab(
            floatingWidget: Row(children: [
              const Expanded(flex: 1, child: SizedBox.shrink()),
              Card(
                color: Colors.white,
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(18),
                  child: Obx(() => Stack(
                        children: [
                          qrFutureBuilder(controller.userObject.value?.iduser),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: CachedNetworkImage(
                                  imageUrl: controller.userObject.value?.avatar ?? '',
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              const Expanded(flex: 1, child: SizedBox.shrink()),
            ]),
            floatingPosition: const FloatingPosition(top: -156),
            expandedHeight: 260,
            notifyFabToTopOffsetMoreThan70: (value) =>
                controller.topOffsetMoreThan75.value = value,
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                pinned: true,
                centerTitle: true,
                title: Text(LocaleKeys.profile.tr, textAlign: TextAlign.center),
                leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: Assets.images.icArrowLeft
                      .svg(width: 24, height: 24, color: context.themeExtensions.white),
                ),
                actions: [
                  InkWell(
                    onTap: () => controller.navigateToProfileEdition(),
                    child: Padding(
                        padding: const EdgeInsets.all(18),
                        child:
                            Assets.images.icEdit2.svg(width: 24, height: 24, fit: BoxFit.cover)),
                  )
                ],
                flexibleSpace: Stack(
                  children: [
                    Obx(() => Container(
                          width: double.infinity,
                          color: controller.topOffsetMoreThan75.value
                              ? LMSColors.white
                              : LMSColors.mainGreen,
                        )),
                    FlexibleSpaceBar(
                      background: Assets.images.profileHeaderBg.image(fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Container(height: 96, color: Colors.white),
                  Obx(() => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),
                          AutoSizeText(
                            controller.userObject.value?.fullname ?? '',
                            style: context.themeExtensions.heading1
                                .copyWith(color: context.themeExtensions.black),
                          ),
                          AutoSizeText(
                            'ID: ${controller.userObject.value?.username}',
                            style: context.themeExtensions.subTex
                                .copyWith(color: context.themeExtensions.black),
                          ),
                          const SizedBox(height: 25),
                          // Figma Flutter Generator Rectangle27Widget - RECTANGLE
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                color: context.themeExtensions.cultured,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.fullName.tr,
                                        value: controller.userObject.value?.fullname,
                                        isFirst: true),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.birthday.tr,
                                        value: controller.userObject.value?.birthday),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.gender.tr,
                                        value: controller.userObject.value?.sex),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.phoneNumber.tr,
                                        value: controller.userObject.value?.phone),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.email.tr,
                                        value: controller.userObject.value?.email),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.ccidNumber.tr,
                                        value: controller.userObject.value?.ccid),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.trainingSystem.tr,
                                        value: controller.userObject.value?.hedaotao),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.department.tr,
                                        value: controller.userObject.value?.khoa),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.branch.tr,
                                        value: controller.userObject.value?.nganh),
                                    _buildUserInfoLine(
                                        context: context,
                                        title: LocaleKeys.schoolYear.tr,
                                        value: controller.userObject.value?.nienkhoa,
                                        isLast: true)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 250)
                        ],
                      ))
                ]),
              ),
            ],
          );
        },
      ),
    );
  }

  FutureBuilder<ui.Image> qrFutureBuilder(String? value) {
    return FutureBuilder<ui.Image>(
      future: _loadOverlayImage(),
      builder: (ctx, snapshot) {
        const size = 188.0;
        if (!snapshot.hasData) {
          return const SizedBox(width: size, height: size);
        }
        return CustomPaint(
          size: const Size.square(size),
          painter: QrPainter(
            data: value ?? Constants.UNIVERSITY_WEBSITE,
            version: QrVersions.auto,
            eyeStyle: const QrEyeStyle(
              eyeShape: QrEyeShape.square,
              color: Color(0xff128760),
            ),
            dataModuleStyle: const QrDataModuleStyle(
              dataModuleShape: QrDataModuleShape.circle,
              color: Color(0xff1a5441),
            ),
            embeddedImage: snapshot.data,
            embeddedImageStyle:
                QrEmbeddedImageStyle(size: const Size.square(46), color: Colors.white),
          ),
        );
      },
    );
  }

  Future<ui.Image> _loadOverlayImage() async {
    final completer = Completer<ui.Image>();
    final byteData = await rootBundle.load(Assets.images.ftuLogo.path);
    ui.decodeImageFromList(byteData.buffer.asUint8List(), completer.complete);
    return completer.future;
  }

  Widget _buildUserInfoLine(
      {required BuildContext context,
      String? title,
      String? value,
      bool? isFirst = false,
      bool? isLast = false}) {
    return Container(
      padding: EdgeInsets.only(top: isFirst == true ? 0 : 7, bottom: isLast == true ? 0 : 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: AutoSizeText(
              title ?? '',
              style: context.themeExtensions.paragraph
                  .copyWith(color: context.themeExtensions.textGrey),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 5,
            child: AutoSizeText(
              value ?? '',
              style:
                  context.themeExtensions.paragraph.copyWith(color: context.themeExtensions.black),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
