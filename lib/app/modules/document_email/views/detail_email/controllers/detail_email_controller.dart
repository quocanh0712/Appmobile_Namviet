


import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../model/all_email_response.dart';
import '../../create_email/models/all_user_request.dart';
import '../../create_email/models/all_user_response.dart';
import '../../create_email/repository/create_email_repository.dart';



class DetailEmailController extends BaseController {
  var email = Rx<AllEmailResponse?>(null);
  var listUser = <AllUserResponse?>[].obs;
  var isLoading = false.obs;
  var isErrored = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadUserList();
    var args = Get.arguments;
    if (args != null && args is AllEmailResponse) {
      email.value = args;
    } else {
      email.value = null; // Fallback to null
    }

  }

  void loadUserList() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    EasyLoading.show(status: ''); // Show loading indicator
    CreateEmailRepository repository = Get.find();
    var response = await repository.getAllUser(
      AllUserRequest(
        noiDung: "", startindex: 0, length: 300,
      ),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        EasyLoading.dismiss();
        if (data.isSuccess()) {
          listUser.value = data.result?.toList() ?? [];
          print("-------$listUser");
        } else {
          isErrored.value = data.message ?? 'Unknown error';
        }
      },
      failure: (e) {
        isLoading.value = false;
        EasyLoading.dismiss();
        isErrored.value = e.toString();
      },
    );
  }


  String getFullName(String? userName) {
    var user = listUser.firstWhere(
          (user) => user?.username == userName,
      orElse: () => null,
    );
    return user?.fullName ?? "Tôi";
  }

  List<String> getNguoiNhanList(dynamic listNguoiNhan) {
    if (listNguoiNhan == null) {
      return [];
    }
    if (listNguoiNhan is String) {
      return listNguoiNhan.split(',').map((e) => e.trim()).toList();
    } else if (listNguoiNhan is List) {
      return listNguoiNhan.cast<String>();
    }
    return [];
  }

  String getFirstLetter(String? value) {
    if (value != null && value.isNotEmpty) {
      return value[0].toUpperCase();
    }
    return '';
  }




}