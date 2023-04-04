// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';

class PasswordEditionController extends BaseController {
  final userRepo = Get.find<UserRepository>();
  final Rx<UserObject?> userObject = UserObject().obs;
  final obscureOldPassword = true.obs;
  final currentOldPassInputText = ''.obs;
  final oldPassError = ''.obs;
  final submittedOldPass = ''.obs;
  final obscureNewPassword = true.obs;
  final currentNewPassInputText = ''.obs;
  final newPassError = ''.obs;
  final submittedNewPass = ''.obs;
  final obscureReEnterredNewPassword = true.obs;
  final currentRenewPassInputText = ''.obs;
  final renewPassError = ''.obs;
  final submittedRenewPass = ''.obs;
  PassChangeInputField currentInputField = PassChangeInputField.none;

  @override
  onReady() async {
    Fimber.d('onReady()');
    userObject.value = await userRepo.retrieveUserInfo();
  }

  save() async {
    Fimber.d("save()");
    isLoading.value = true;
    final response = await userRepo.changePass(submittedOldPass.value, submittedNewPass.value);
    response.when(
      success: (data) {
        if (data.isSuccess()) {
          showMessage.value = LocaleKeys.updateUserInfoSuccessfully.tr;
        } else {
          isError.value = data.message;
        }
      },
      failure: (error) {
        Fimber.d(error.localizedErrorMessage ?? '');
      },
    );
    isLoading.value = false;
  }

  validateOldPassword(String? oldPass) {
    Fimber.d('validateOldPassword(String? $oldPass)');
    submittedOldPass.value = currentOldPassInputText.value;
    if (oldPass == userObject.value?.password) {
      oldPassError.value = '';
    } else {
      oldPassError.value = LocaleKeys.oldPassIsWrong.tr;
    }
  }

  validateNewPassword(String? newPass) {
    Fimber.d('validateOldPassword(String? $newPass)');
    submittedNewPass.value = currentNewPassInputText.value;
    if (newPass?.isValidPassword() == true) {
      newPassError.value = '';
    } else {
      newPassError.value = LocaleKeys.passFormatIsWrong.tr;
      return;
    }
    if (newPass == userObject.value?.password) {
      newPassError.value = LocaleKeys.newPassAndOldPasIsSameError.tr;
      return;
    }
    if (currentRenewPassInputText.value.isNotBlank()) {
      if (newPass != currentRenewPassInputText.value) {
        newPassError.value = LocaleKeys.newPassIsNotSame.tr;
      }
    }
  }

  validateReNewPassword(String? renewPass) {
    Fimber.d('validateOldPassword(String? $renewPass)');
    submittedRenewPass.value = currentRenewPassInputText.value;
    if (renewPass?.isValidPassword() == true) {
      renewPassError.value = '';
    } else {
      renewPassError.value = LocaleKeys.passFormatIsWrong.tr;
      return;
    }
    if (renewPass == userObject.value?.password) {
      renewPassError.value = LocaleKeys.newPassAndOldPasIsSameError.tr;
      return;
    }
    if (currentNewPassInputText.value.isNotBlank()) {
      if (renewPass != currentNewPassInputText.value) {
        renewPassError.value = LocaleKeys.newPassIsNotSame.tr;
      }
    }
  }

  onFucusChanged({bool? isFocus = false}) {
    Fimber.d('onFucusChanged({bool? isFocus = $isFocus})');
    switch (currentInputField) {
      case PassChangeInputField.oldPass:
        validateOldPassword(currentOldPassInputText.value);
        break;
      case PassChangeInputField.newPass:
        validateNewPassword(currentNewPassInputText.value);
        break;
      case PassChangeInputField.renewPass:
        validateReNewPassword(currentNewPassInputText.value);
        break;
      default:
        break;
    }
  }
}

enum PassChangeInputField { none, oldPass, newPass, renewPass }
