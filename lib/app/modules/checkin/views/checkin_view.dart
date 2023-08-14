// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ftu_lms/app/modules/checkin/controllers/checkin_controller.dart';
import 'package:ftu_lms/app/modules/utils/state_ext.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CheckinView extends StatefulHookWidget {
  const CheckinView({super.key});

  @override
  State<CheckinView> createState() => CheckinViewState();
}

class CheckinViewState extends State<CheckinView> {
  final CheckinController controller =
      Get.put(CheckinController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        _buildQrView(context),
        Obx(() {
          if (controller.isError.value?.isNotBlank() == true) {
            WidgetsBinding.instance.addPostFrameCallback((duration) {
              showErrorDialog(context,
                  messageError: controller.isError.value,
                  rightActionTitle: LocaleKeys.retry.tr,
                  rightAction: () => controller.retry(),
                  leftActionTitle: LocaleKeys.close.tr,
                  leftAction: () => resumeQRScannerCamera());
              //controller.isError.value = "";
            });
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
        Obx(() {
          if (controller.showMessage.value?.isNotBlank() == true) {
            WidgetsBinding.instance.addPostFrameCallback((duration) {
              showAlertDialog(context,
                  title: LocaleKeys.notification.tr,
                  message: controller.showMessage.value,
                  rightActionTitle: LocaleKeys.close.tr,
                  rightAction: () => resumeQRScannerCamera());
            });
          }
          return const SizedBox.shrink();
        }),
      ]),
    );
  }

  resumeQRScannerCamera() {
    Fimber.d("resumeQRScannerCamera()");
    controller.showMessage.value = '';
    controller.isError.value = '';
    controller.resumeQRScannerCamera();
  }

  pauseQRScannerCamera() {
    Fimber.d("pauseQRScannerCamera()");
    controller.pauseQRScannerCamera();
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = Get.width * 0.68;
    return Stack(
      children: [
        QRView(
          key: controller.qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
              borderColor: context.themeExtensions.mainGreen,
              borderRadius: 16,
              borderLength: 32,
              borderWidth: 8,
              cutOutSize: scanArea),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        ),
        SafeArea(
          top: true,
          left: true,
          right: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () => controller.toggleFlash(),
                child: Obx(() => Container(
                      width: 68,
                      height: 68,
                      alignment: Alignment.center,
                      child: controller.flashIsOn.value == true
                          ? Assets.images.icFlashOff
                              .image(width: 32, height: 32, fit: BoxFit.cover)
                          : Assets.images.icFlashOn
                              .image(width: 32, height: 32, fit: BoxFit.cover),
                    )),
              ),
              InkWell(
                onTap: () => controller.resumeQRScannerCamera(),
                child: Container(
                  width: 68,
                  height: 68,
                  alignment: Alignment.center,
                  child: Assets.images.icReload
                      .svg(width: 32, height: 32, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController qrController) {
    controller.qrController = qrController;
    qrController.scannedDataStream.listen((scanData) {
      controller.result = scanData;
      controller.pauseQRScannerCamera();
      controller.scaninfo(controller.result?.code);
    });
    controller.resumeQRScannerCamera();
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    Fimber.d('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ứng dụng chưa được cấp quyền')),
      );
    }
  }
}
