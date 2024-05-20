

import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../routes/app_pages.dart';

class SessionService extends GetxService {
  final UserRepository userRepo = Get.find();
  UserObject? userObject;
  Timer? _logoutTimer;

  void startLogoutTimer({int duration = 7200}) {
    _logoutTimer?.cancel();
    _logoutTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      duration -= 1;
      print('---------Remaining time: $duration seconds');
      if (duration <= 0) {
        timer.cancel();
        logout(); // Đăng xuất khi hết thời gian
        print("--------Logout timer triggered!");
      }
    });
  }

  void cancelLogoutTimer() {
    _logoutTimer?.cancel();
    _logoutTimer = null;
  }

  Future<void> logout() async {
    await userRepo.logout();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('isLoggedIn');
    EasyLoading.dismiss();
    print("--------User logged out successfully.");
    Get.offAllNamed(Routes.LOGIN);
  }
}
