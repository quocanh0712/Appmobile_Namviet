// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'dart:io';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/create_new_certificate/model/certificate_insert_request.dart';
import 'package:ftu_lms/app/modules/create_new_certificate/repository/create_new_certificate_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:get/get.dart';

class CreateNewCertificateController extends BaseController {
  CertificateInsertRequest cerRequest = const CertificateInsertRequest();

  Rx<String> base64Image = "".obs;




  sendNewCertificate() async {
    if (base64Image.value.isNotEmpty &&
        cerRequest.certificateName?.isNotEmpty == true &&
        cerRequest.graduationYear != null &&
        cerRequest.degree?.isNotEmpty == true &&
        cerRequest.studyPlace?.isNotEmpty == true) {
      isLoading.value = true;
      CreateNewCertificateRepository repo = Get.find();
      var response = await repo.insertNewCertificate(cerRequest.copyWith(
        fileName: base64Image.value,
      ));
      response.when(success: (data) {
        isLoading.value = false;
        if (data.isSuccess()) {
          showAlertDialog(LocaleKeys.titleDialog.tr, LocaleKeys.sendRequestSuccess.tr, () {
            Get.back(result: true);
          });
        } else {
          isError.value = data.message;
        }
      }, failure: (e) {
        isLoading.value = false;
        isError.value = e.localizedErrorMessage;
      });
    } else {
      isError.value = LocaleKeys.errorInputMissing.tr;
    }
  }

  setNameCerChange(String name) {
    cerRequest = cerRequest.copyWith(
      certificateName: name,
    );
  }

  setGraduationYearCerChange(String year) {
    cerRequest = cerRequest.copyWith(
      graduationYear: year.toIntOrNull(),
    );
  }

  setDegreeChange(String degree) {
    cerRequest = cerRequest.copyWith(
      degree: degree,
    );
  }

  setPlaceChange(String place) {
    cerRequest = cerRequest.copyWith(
      studyPlace: place,
    );
  }

  selectPicture() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      if (result.files.single.path?.isNotEmpty == true) {
        File file = File(result.files.single.path!);
        String base64 = Utils.convertIntoBase64(file);
        base64Image.value = base64;
      } else {
        EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
            duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
      }
    }
  }
}
