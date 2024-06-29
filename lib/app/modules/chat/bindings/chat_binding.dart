import 'package:ftu_lms/app/modules/chat/repository/chat_repository.dart';
import 'package:ftu_lms/app/modules/chat/repository/impl/chat_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(
      () => ChatController(), fenix: true,
    );
    Get.lazyPut<ChatRepository>(
          () => ChatRepositoryImpl(), fenix: true,
    );
  }
}
