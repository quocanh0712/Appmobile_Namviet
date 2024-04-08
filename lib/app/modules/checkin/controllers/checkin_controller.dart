// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/repositories/inventory_repository.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
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

  // checkin(String? barcode) async {
  //   isLoading.value = true;
  //   final response = await inventoryRepo?.checkin(barcode);
  //   response?.when(
  //     success: (data) {
  //       if (data.isSuccess()) {
  //         Fimber.d(data.toString());
  //         showMessage.value = data.result;
  //       } else {
  //         isError.value = data.message;
  //       }
  //     },
  //     failure: (error) {
  //       Fimber.d(error.localizedErrorMessage ?? "");
  //       isError.value = error.localizedErrorMessage;
  //     },
  //   );
  //   isLoading.value = false;
  // }


  scaninfo(String? barcode) async {
    //barcode = "872927233;namviet;Ngo Minh Duc";
    //isLoading.value = true;
    //print('${result!.code}');
    // final response = await inventoryRepo?.scaninfo(barcode);
    // Fimber.d("response: ${response.toString()}");
    // response?.when(
    //   success: (data) {
    //     if (data.isSuccess()) {
    //       //Show info device here
    //       String result = "";
    //       result += "-Mã tài sản: ${data.result?.ma_ts ?? ""} \n";
    //       result += "-Tên tài sản: ${data.result?.ten_ts ?? ""} \n";
    //       result += "-Năm sản xuất: ${data.result?.nam_sx ?? ""} \n";
    //       result += "-Hãng sản xuất: ${data.result?.hang_sx ?? ""} \n";
    //       result += "-Nước sản xuất: ${data.result?.nuoc_ts ?? ""} \n";
    //       result += "-Thông số kỹ thuật: ${data.result?.thong_so_kt ?? ""} \n";
    //       result += "-Tên bộ phận sử dụng: ${data.result?.ten_bp ?? ""} \n";
    //       result +=
    //           "-Ngày bắt đầu sử dụng: ${data.result?.str_ngay_bdsd ?? ""} \n";
    //       result += "-Sô CT: ${data.result?.so_ct ?? ""} \n";
    //       result += "-Ngày CT: ${data.result?.str_ngay_ct ?? ""} \n";
    //       result += "-Số lượng: ${data.result?.so_luong ?? 0} \n";
    //       result += "-Ghi chú: ${data.result?.ghi_chu ?? ""} \n";
    //       showMessage.value = result;
    //     } else {
    //       isError.value = data.message;
    //     }
    //   },
    //   failure: (error) {
    //     Fimber.d(error.localizedErrorMessage ?? "");
    //     isError.value = error.localizedErrorMessage;
    //   },
    // );
    // isLoading.value = false;
  }

  @override
  void onClose() {
    qrController?.dispose();
    super.onClose();
  }
}
