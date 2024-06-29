



import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_message_response.dart';
import 'package:ftu_lms/app/modules/chat/models/send_message_request.dart';

import 'package:get/get.dart';

import '../../../../../../data/bean/user_object/user_object.dart';
import '../../../../../../data/repositories/user_repository.dart';
import '../../../../../../main.dart';
import '../../../repository/chat_repository.dart';

// class ChatMessageController extends BaseController{
//
//   var listMessage = List<AllMessageResponse?>.empty(growable: true).obs;
//
//   final userRepo = Get.find<UserRepository>();
//   Rx<UserObject?> userObject = UserObject().obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     loadListMessage();
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   void showLoadingIndicator() {
//     EasyLoading.show(status: 'Đang tải...');
//   }
//
//   void dismissLoadingIndicator() {
//     EasyLoading.dismiss();
//   }
//
//   void loadListMessage() async {
//     if (isLoading.value == true) return;
//     isLoading.value = true;
//     showLoadingIndicator();
//     ChatRepository repository = Get.find();
//     var response = await repository.getAllMessageInRoom(
//       AllMessageRequest(iduser: userObject.value?.iduser, startindex: 0, length: 100, idRoom: 1),
//     );
//     response.when(
//       success: (data) {
//         isLoading.value = false;
//         dismissLoadingIndicator();
//         if (data.isSuccess()) {
//           listMessage.value = data.result?.toList() ?? [];
//           print("-------$listMessage");
//         } else {
//           isError.value = data.message;
//           print("-------Dang loi");
//         }
//       },
//       failure: (e) {
//         isLoading.value = false;
//         dismissLoadingIndicator();
//         isError.value = e.toString();
//       },
//     );
//   }
//
//   void sendMessage() async {
//     if (isLoading.value == true) return;
//     isLoading.value = true;
//     showLoadingIndicator();
//     ChatRepository repository = Get.find();
//     var response = await repository.sendMessage(
//       SendMessageRequest(iduser: userObject.value?.iduser, message: "truongquocanh123", idRoom: 1 ),
//     );
//     response.when(
//       success: (data) {
//         isLoading.value = false;
//         dismissLoadingIndicator();
//         if (data.isSuccess()) {
//           print("GỬI TIN NHẮN THÀNH CÔNG ");
//         } else {
//           isError.value = data.message;
//           print("-------Dang loi");
//         }
//       },
//       failure: (e) {
//         isLoading.value = false;
//         dismissLoadingIndicator();
//         isError.value = e.toString();
//       },
//     );
//   }
// }

class ChatMessageController extends BaseController {
  var listMessage = List<AllMessageResponse?>.empty(growable: true).obs;
  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;
  final SignalRService signalRService = SignalRService();

  @override
  void onInit() {
    super.onInit();
    loadListMessage();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  void loadListMessage() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    ChatRepository repository = Get.find();
    var response = await repository.getAllMessageInRoom(
      AllMessageRequest(iduser: userObject.value?.iduser, startindex: 0, length: 100, idRoom: 1),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listMessage.value = data.result?.toList() ?? [];
          print("-------$listMessage");
        } else {
          isError.value = data.message;
          print("-------Dang loi");
        }
      },
      failure: (e) {
        isLoading.value = false;
        dismissLoadingIndicator();
        isError.value = e.toString();
      },
    );
  }

  void sendMessage(String message) async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    await signalRService.sendMessage(userObject.value?.iduser ?? "", message);
    isLoading.value = false;
    dismissLoadingIndicator();
  }

  // void sendMessage() async {
  //   if (isLoading.value == true) return;
  //   isLoading.value = true;
  //   showLoadingIndicator();
  //   ChatRepository repository = Get.find();
  //   var response = await repository.sendMessage(
  //     SendMessageRequest(iduser: userObject.value?.iduser, message: "truongquocanh123", idRoom: 1 ),
  //   );
  //   response.when(
  //     success: (data) {
  //       isLoading.value = false;
  //       dismissLoadingIndicator();
  //       if (data.isSuccess()) {
  //         print("GỬI TIN NHẮN THÀNH CÔNG ");
  //       } else {
  //         isError.value = data.message;
  //         print("-------Dang loi");
  //       }
  //     },
  //     failure: (e) {
  //       isLoading.value = false;
  //       dismissLoadingIndicator();
  //       isError.value = e.toString();
  //     },
  //   );
  // }


}