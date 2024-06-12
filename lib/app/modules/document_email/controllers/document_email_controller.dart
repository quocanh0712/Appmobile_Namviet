


import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../routes/app_pages.dart';

class DocumentEmailController extends BaseController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  RxString userName = "".obs;


  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    userObject.value = await userRepo.retrieveUserInfo();
    userName.value = userObject.value?.username ?? "UserName";
    print("---------${userName}");

  }

  @override
  void onClose()  {
    tabController.dispose();
    super.onClose();
  }

  @override
  void onReady() async {
    super.onReady();

  }

  navigateToCreateEmail() {
    Fimber.d("navigateToCreateEmail()");
    Get.toNamed(Routes.CREATE_EMAIL );

  }


}