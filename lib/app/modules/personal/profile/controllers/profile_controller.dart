// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';

class ProfileController extends BaseController {
  final ScrollController scrollController = ScrollController();
  PanelController? panelController = PanelController();
  final topOffsetMoreThan75 = true.obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;
  Rx<String> username = "1952220001".obs;
  Rx<String> name = "Phạm Thị Vân Anh".obs;
  //Rx<String> username = "admin".obs;
  //Rx<String> name = "Quản trị hệ thống".obs;
  @override
  onReady() async {
    super.onReady();
    Fimber.d("onReady()");
    userObject.value = await userRepo.retrieveUserInfo();
  }

  navigateToProfileEdition() async {
    Fimber.d("navigateToProfileEdition()");
    var edittedUserInfo =
        await Get.toNamed(Routes.PROFILE_EDITION, arguments: userObject.value);
    if (edittedUserInfo is UserObject) {
      userObject.value = edittedUserInfo;
    }
  }
}
