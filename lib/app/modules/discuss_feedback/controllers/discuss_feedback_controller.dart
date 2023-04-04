// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_request.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/model/conversation_response.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

class DiscussFeedbackController extends BaseListController<ConversationResponse> {
  @override
  void onInit() {
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

  @override
  Future<Result<BaseResponseObject<List<ConversationResponse?>?>, Exception>> callToHost() {
    ConversationRepository repository = Get.find();
    return repository
        .getListConversation(ConversationRequest(length: maxLengthResult, startindex: pageIndex));
  }

  navigateCreateNewConversation() async {
    var resultCreate = await Get.toNamed(Routes.CREATE_NEW_CONVERSATION,
        arguments: [true, const ConversationResponse()]);
    if (resultCreate is bool && resultCreate) {
      refreshData();
    }
  }

  openDetailConversation(ConversationResponse response) {
    Get.toNamed(Routes.DETAIL_CONVERSATION, arguments: response);
  }
}
