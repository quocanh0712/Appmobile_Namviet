// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_conversation.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_insert_request.dart';
import 'package:ftu_lms/app/modules/detail_conversation/model/comment_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

class DetailConversationController extends BaseListController<CommentConversation> {
  late ConversationResponse conversationResponse;

  Rx<String> message = "".obs;

  TextEditingController textFieldController = TextEditingController();

  Rx<bool> isEditConversation = false.obs;

  @override
  void onInit() {
    conversationResponse = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    final userRepo = Get.find<UserRepository>();
    userRepo.retrieveUserInfo().then((value) {
      isEditConversation.value = value?.iduser == conversationResponse.iDCb;
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String getTimeUpdate() {
    String time = "";
    if (conversationResponse.updateAt != null) {
      time = DateTimeUtils.formatDateTime(conversationResponse.updateAt!, timeAndDate);
    }
    return "${LocaleKeys.update.tr} $time";
  }

  String getTitle() {
    return conversationResponse.conversationname ?? Constants.EMPTY;
  }

  updateConversation() async {
    var resultCreate = await Get.toNamed(Routes.CREATE_NEW_CONVERSATION,
        arguments: [false, conversationResponse]);
    if (resultCreate is bool && resultCreate) {
      refreshData();
    }
  }

  sendComment() async {
    if (!message.isNotEmpty) return;

    isLoading.value = true;
    ConversationRepository conversationRepository = Get.find();
    var response = await conversationRepository.insertNewComment(
        CommentInsertRequest(id: conversationResponse.id, content: message.value));
    response.when(success: (data) async {
      isLoading.value = false;
      if (data.isSuccess()) {
        EasyLoading.showToast(LocaleKeys.sendConversationSuccess.tr,
            duration: ToastDuration.LENGTH_SHORT, toastPosition: EasyLoadingToastPosition.bottom);
        refreshData();
        message.value = "";
        textFieldController.text = "";
      } else {
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = e.localizedErrorMessage;
    });
  }

  void updateMessageConversation(String text) {
    message.value = text;
  }

  @override
  Future<Result<BaseResponseObject<List<CommentConversation?>?>, Exception>> callToHost() {
    ConversationRepository conversationRepository = Get.find();
    return conversationRepository.getListComment(CommentRequest(
      id: conversationResponse.id,
      length: maxLengthResult,
      startindex: pageIndex,
    ));
  }
}
