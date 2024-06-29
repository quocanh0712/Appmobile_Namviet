



import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../../repository/chat_repository.dart';
import '../../../repository/impl/chat_repository_impl.dart';
import '../controllers/chat_message_controller.dart';


class ChatMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatMessageController>(
          () => ChatMessageController(), fenix: true,
    );

    Get.lazyPut<ChatRepository>(
          () => ChatRepositoryImpl(), fenix: true,
    );


  }
}