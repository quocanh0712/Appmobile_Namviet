


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


class DocumentEmailController extends BaseController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxString userName = "".obs;
  var listEmail = List<AllEmailResponse?>.empty(growable: true).obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  RxBool isLoading = false.obs;
  RxBool dataLoaded = false.obs;
  RxString isErrored = ''.obs;
  RxInt currentTab = 0.obs;
  RxInt loadingTabIndex = (-1).obs;  // Add this line

  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(_handleTabSelection);
    userObject.value = await userRepo.retrieveUserInfo();
    userName.value = userObject.value?.username ?? "UserName";
    print("---------${userName}");
    loadEmailList(1, 0);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void _handleTabSelection() {
    if (tabController.indexIsChanging) {
      currentTab.value = tabController.index;
      dataLoaded.value = false;
      loadingTabIndex.value = tabController.index;  // Set loading tab index
      switch (tabController.index) {
        case 0:
          loadEmailList(1, 0);
          break;
        case 1:
          loadEmailList(2, 0);
          break;
        case 2:
          loadEmailList(0, 1);
          break;
        case 3:
          loadEmailList(0, 0);
          break;
      }
    }
  }
  Future<void> refreshEmailList() async {
    switch (currentTab.value) {
      case 0:
        await loadEmailList(1, 0);
        break;
      case 1:
        await loadEmailList(2, 0);
        break;
      case 2:
        await loadEmailList(0, 1);
        break;
      case 3:
        await loadEmailList(0, 0);
        break;
    }
  }



  Future<void> loadEmailList(int loai, int phanLoai) async {
    if (isLoading.value) return;
    isLoading.value = true;
    // showLoadingIndicator();

    DocumentEmailRepository repository = Get.find();
    var response = await repository.getEmailList(
      AllEmailRequest(
        iduser: "B10CCD3B-4C45-4191-A573-62EA82A84A80",
        startindex: 0,
        length: 20,
        loai: loai,
        phanLoai: phanLoai,
      ),
    );

    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listEmail.value = data.result?.toList() ?? [];
          dataLoaded.value = true;
          loadingTabIndex.value = -1;  // Reset loading tab index
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

  Map<String, String> getUsernameForEmail(AllEmailResponse? email) {
    String fullName = '';
    switch (currentTab.value) {
      case 0: // Thư đến
        fullName = (email?.listNguoiGui != null && email!.listNguoiGui!.isNotEmpty)
            ? email.listNguoiGui!.first.username ?? ''
            : '';
        break;
      case 1: // Thư đi
        fullName = (email?.listNguoiNhan != null && email!.listNguoiNhan!.isNotEmpty)
            ? email.listNguoiNhan!.first.username ?? ''
            : '';
        break;
      case 2: // Nháp
        fullName = (email?.listNguoiNhan != null && email!.listNguoiNhan!.isNotEmpty)
            ? email.listNguoiNhan!.first.username ?? ''
            : '';
        break;
    }
    String initial = fullName.isNotEmpty ? fullName[0].toUpperCase() : '';
    return {'fullName': fullName, 'initial': initial};
  }


  void navigateToCreateEmail() {
    Fimber.d("navigateToCreateEmail()");
    Get.toNamed(Routes.CREATE_EMAIL);
  }

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }
}

