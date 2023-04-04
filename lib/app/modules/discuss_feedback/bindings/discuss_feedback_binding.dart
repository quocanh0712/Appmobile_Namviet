// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository.dart';
import 'package:ftu_lms/app/modules/discuss_feedback/repository/conversation_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/discuss_feedback_controller.dart';

class DiscussFeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConversationRepository>(
      () => ConversationRepositoryImpl(),
    );
    Get.lazyPut<DiscussFeedbackController>(
      () => DiscussFeedbackController(),
    );
  }
}
