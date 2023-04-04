// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/create_new_conversation_controller.dart';

class CreateNewConversationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConversationRepository>(
      () => ConversationRepositoryImpl(),
    );
    Get.lazyPut<CreateNewConversationController>(
      () => CreateNewConversationController(),
    );
  }
}
