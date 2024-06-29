import 'package:fimber/fimber.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_request.dart';
import 'package:ftu_lms/app/modules/chat/models/all_room_response.dart';
import 'package:ftu_lms/app/modules/chat/repository/chat_repository.dart';
import 'package:get/get.dart';

import '../../../../data/bean/chat_user_response_object/chat_user_response_object.dart';
import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../../generated/locales.g.dart';
import '../../../../utils/debouncer.dart';
import '../../../routes/app_pages.dart';
import '../../base/base_controller.dart';

class ChatController extends BaseController {
  String textSearch = "";
  final _debouncer = Debouncer(milliseconds: 300);

  var listRoom = List<AllRoomResponse?>.empty(growable: true).obs;
  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    loadListRoom();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void searchData(String string) {
    if (textSearch == string) return;
    _debouncer.run(() {
      textSearch = string;

    });
  }

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  void loadListRoom() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    ChatRepository repository = Get.find();
    var response = await repository.getAllRoom(
      AllRoomRequest(iduser: userObject.value?.iduser, startindex: 0, length: 100,),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listRoom.value = data.result?.toList() ?? [];
          print("-------$listRoom");
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

  void navigateToChatMessage() {
    Fimber.d("navigateToChatMessage()");
    Get.toNamed(Routes.CHAT_MESSAGE);
  }
}
