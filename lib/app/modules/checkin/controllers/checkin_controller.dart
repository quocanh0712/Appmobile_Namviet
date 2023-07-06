// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/repositories/inventory_repository.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CheckinController extends BaseController {
  Barcode? result;
  QRViewController? qrController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool? cameraIsPause = true;
  final flashIsOn = false.obs;
  final inventoryRepo = Get.find<InventoryRepository?>();

  void pauseQRScannerCamera() {
    Fimber.d("pauseQRScannerCamera()");
    if (cameraIsPause == false) {
      qrController?.pauseCamera();
      if (flashIsOn.value) toggleFlash();
    }
    cameraIsPause = true;
  }

  void resumeQRScannerCamera() {
    Fimber.d("resumeQRScannerCamera()");
    if (cameraIsPause == true) qrController?.resumeCamera();
    cameraIsPause = false;
  }

  void toggleFlash() {
    Fimber.d("toggleFlash()");
    qrController?.toggleFlash();
    flashIsOn.value = !flashIsOn.value;
  }

  retry() async {
    Fimber.d("retry()");
    resumeQRScannerCamera();
  }

  checkin(String? barcode) async {
    Fimber.d("checkin(String? $barcode)");
    isLoading.value = true;
    final response = await inventoryRepo?.checkin(barcode);
    response?.when(
      success: (data) {
        if (data.isSuccess()) {
          Fimber.d(data.toString());
          showMessage.value = data.result;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.d(error.localizedErrorMessage ?? "");
        isError.value = error.localizedErrorMessage;
      },
    );
    isLoading.value = false;
  }

  scaninfo(String? barcode) async {
    isLoading.value = true;
    final response = await inventoryRepo?.scaninfo(barcode);
    Fimber.d("response: ${response.toString()}");
    response?.when(
      success: (data) {
        if (data.isSuccess()) {
          Fimber.d("data.isSuccess(): ${data.result?.ma_ts.toString()}");
          showMessage.value = data.result?.toString();
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.d(error.localizedErrorMessage ?? "");
        isError.value = error.localizedErrorMessage;
      },
    );
    isLoading.value = false;
  }

  @override
  void onClose() {
    qrController?.dispose();
    super.onClose();
  }
}
