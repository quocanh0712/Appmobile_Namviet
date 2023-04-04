// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/semester_bill_response_object/semester_bill_response_object.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:get/get.dart';

class BillPaymentController extends BaseController {
  final Rx<SemesterBillResponseObject?> bill = SemesterBillResponseObject().obs;

  @override
  void onReady() {
    super.onReady();
    bill.value = Get.arguments as SemesterBillResponseObject?;
  }

  void saveQRCode() {
    Fimber.d('saveQRCode()');
    isLoading.value = true;
    Utils.saveBase64ImageToGallery(bill.value?.qrCode ?? '').then((success) {
      if (success == true) {
        showAlertDialog(LocaleKeys.notification.tr, LocaleKeys.saveImageSuccessfully.tr, () {
          Get.close(2);
        });
      } else {
        isError.value = LocaleKeys.commonErrorMessage.tr;
      }
      isLoading.value = false;
    });
  }
}
