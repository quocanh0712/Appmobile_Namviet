


import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/document_email/model/all_email_response.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../document_searching/repository/document_searching_repository.dart';
import '../model/all_email_request.dart';
import '../repository/document_email_repository.dart';

class DocumentEmailController extends BaseController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  RxString userName = "".obs;

  var listEmail = List<AllEmailResponse?>.empty(growable: true).obs;


  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    userObject.value = await userRepo.retrieveUserInfo();
    userName.value = userObject.value?.username ?? "UserName";
    print("---------${userName}");
    loadEmailList();
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

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  void loadEmailList() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    DocumentEmailRepository repository = Get.find();
    var response = await repository.getEmailList(
      AllEmailRequest(iduser: "B10CCD3B-4C45-4191-A573-62EA82A84A80", startindex: 0 , length: 100, loai: 2, phanLoai: 0),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listEmail.value = data.result?.toList() ?? [];

          print("-------$listEmail");
        } else {
          isError.value = data.message;
        }
      },
      failure: (e) {
        isLoading.value = false;
        dismissLoadingIndicator();
        isError.value = e.toString();
      },
    );
  }


}