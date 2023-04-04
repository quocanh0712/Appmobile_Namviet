// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/extensions/string_ext.dart';
import 'package:get/get.dart';

class ProfileEditionController extends BaseController {
  final userRepo = Get.find<UserRepository>();
  final Rx<UserObject?> userObject = UserObject().obs;
  final userNameError = ''.obs;
  final currentFullnameInputText = ''.obs;
  final birthdayError = ''.obs;
  final currentBirthdayInputText = ''.obs;
  final phoneNumberError = ''.obs;
  final currentPhoneNumberInputText = ''.obs;
  final emailError = ''.obs;
  final currentEmailInputText = ''.obs;
  final ccidError = ''.obs;
  final currentCCIDInputText = ''.obs;
  InputField currentInputField = InputField.none;

  @override
  onReady() async {
    super.onReady();
    Fimber.d('onReady()');
    userObject.value = Get.arguments as UserObject?;
    currentFullnameInputText.value = userObject.value?.fullname ?? '';
    currentBirthdayInputText.value = userObject.value?.birthday ?? '';
    currentPhoneNumberInputText.value = userObject.value?.phone ?? '';
    currentEmailInputText.value = userObject.value?.email ?? '';
    currentCCIDInputText.value = userObject.value?.ccid ?? '';
  }

  save() async {
    Fimber.d('save()');
    isLoading.value = true;
    final response = await userRepo.update(userObject.value);
    response.when(
      success: (data) {
        if (data.isSuccess()) {
          userRepo.saveUserInfo(userObject.value);
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

  validatePhoneNumber(String? phoneNumber) {
    userObject.value = userObject.value?.copyWith(phone: phoneNumber);
    if (phoneNumber?.isValidPhoneNumber() == true) {
      phoneNumberError.value = '';
    } else {
      phoneNumberError.value = LocaleKeys.phoneNumberErrorMessage.tr;
    }
  }

  validateUserName(String? userName) {
    userObject.value = userObject.value?.copyWith(fullname: userName);
    if (userName == null || userName.isBlank == true) {
      userNameError.value = LocaleKeys.userNameErrorMessage.tr;
    } else {
      userNameError.value = '';
    }
  }

  validateBirthday(String? birthday) {
    userObject.value = userObject.value?.copyWith(birthday: birthday);
    if (birthday?.isBirthDayFormat() == true) {
      birthdayError.value = '';
    } else {
      birthdayError.value = LocaleKeys.birthdayErrorMessage.tr;
    }
  }

  validateEmail(String? email) {
    userObject.value = userObject.value?.copyWith(email: email);
    if (email?.isValidEmail() == true) {
      emailError.value = '';
    } else {
      emailError.value = LocaleKeys.emailErrorMessage.tr;
    }
  }

  validateCCID(String? ccid) {
    userObject.value = userObject.value?.copyWith(ccid: ccid);
    if (ccid == null || ccid.isBlank == true) {
      ccidError.value = LocaleKeys.ccidErrorMessage.tr;
    } else {
      ccidError.value = '';
    }
  }

  onFucusChanged({bool? isFocus = false}) {
    Fimber.d('onFucusChanged({bool? isFocus = $isFocus})');
    switch (currentInputField) {
      case InputField.userName:
        validateUserName(currentFullnameInputText.value);
        break;
      case InputField.birthday:
        validateBirthday(currentBirthdayInputText.value);
        break;
      case InputField.phoneNumber:
        validatePhoneNumber(currentPhoneNumberInputText.value);
        break;
      case InputField.email:
        validateEmail(currentEmailInputText.value);
        break;
      case InputField.ccid:
        validateCCID(currentCCIDInputText.value);
        break;
      default:
        break;
    }
  }
}

enum InputField { none, userName, birthday, phoneNumber, email, ccid }
