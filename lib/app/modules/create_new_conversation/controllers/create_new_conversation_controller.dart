// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class CreateNewConversationController extends BaseController {
  bool isCreated = true;
  ConversationResponse conversation = const ConversationResponse();

  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  @override
  void onInit() async {
    isCreated = Get.arguments[0];
    conversation = Get.arguments[1];
    titleController.text = conversation.conversationname ?? Constants.EMPTY;
    contentController.text = conversation.content ?? Constants.EMPTY;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  sendFormRequest() async {
    if (titleController.text.isNotEmpty != true || contentController.text.isNotEmpty != true) {
      EasyLoading.showToast(LocaleKeys.errorInputMissing.tr,
          duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
      return;
    }
    isLoading.value = true;
    ConversationRepository repo = Get.find();
    ConversationResponse requestModel = conversation.copyWith(
      conversationname: titleController.text,
      content: contentController.text,
    );
    var response = isCreated == true
        ? await repo.insertNewConversation(requestModel)
        : await repo.updateNewConversation(requestModel);
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
  }
}
