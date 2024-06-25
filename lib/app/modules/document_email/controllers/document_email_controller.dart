


import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/document_email/model/all_email_response.dart';
import 'package:ftu_lms/app/modules/document_email/model/delete_email_request.dart';
import 'package:ftu_lms/app/modules/document_email/model/restore_email_request.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_color/random_color.dart';

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
  var filteredEmail = List<AllEmailResponse?>.empty(growable: true).obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  RxBool isLoading = false.obs;
  RxBool dataLoaded = false.obs;
  RxString isErrored = ''.obs;
  RxInt currentTab = 0.obs;
  RxInt loadingTabIndex = (-1).obs;

  bool isSearching = false;
  final TextEditingController searchController = TextEditingController();

  var emailColors = <Color>[].obs;
  final RandomColor randomColor = RandomColor();


  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(_handleTabSelection);
    userObject.value = await userRepo.retrieveUserInfo();
    userName.value = userObject.value?.username ?? "UserName";
    print("---------${userName}");
    loadEmailList(1, 0);
    _initializeColors();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  // void _handleTabSelection() {
  //   if (tabController.indexIsChanging) {
  //     currentTab.value = tabController.index;
  //     dataLoaded.value = false;
  //     loadingTabIndex.value = tabController.index;
  //     switch (tabController.index) {
  //       case 0:
  //         loadEmailList(1, 0);
  //         break;
  //       case 1:
  //         loadEmailList(2, 0);
  //         break;
  //       case 2:
  //         loadEmailList(0, 1);
  //         break;
  //       case 3:
  //         loadEmailList(0, 0);
  //         break;
  //     }
  //   }
  // }

  void _handleTabSelection() {
    if (isLoading.value) {

      tabController.index = currentTab.value;
      return;
    }

    if (tabController.indexIsChanging) {
      currentTab.value = tabController.index;
      dataLoaded.value = false;
      loadingTabIndex.value = tabController.index;
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

  void _initializeColors() {

    emailColors.value = List<Color>.generate(listEmail.length, (index) => randomColor.randomColor());
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
          filteredEmail.value = listEmail;
          _initializeColors();
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

  void filterEmailList(String query) {
    if (query.isEmpty) {
      filteredEmail.value = listEmail;
    } else {
      filteredEmail.value = listEmail.where((email) {
        return (email?.tieuDe?.toLowerCase().contains(query) ?? false) ||
            (email?.noiDung?.toLowerCase().contains(query) ?? false) ||
            (email?.createdDate?.toLowerCase().contains(query) ?? false) ||
            (email?.listNguoiNhan?.toLowerCase().contains(query) ?? false) ||
            (email?.listFile?.toLowerCase().contains(query) ?? false) ||
            (email?.listNguoiGui?.toLowerCase().contains(query) ?? false);
      }).toList();
    }
  }


  Future<void> deleteEmail(int? emailId) async {
    if (isLoading.value) return;
    isLoading.value = true;

    String loaiDelete;
    switch (currentTab.value) {
      case 0: // Thư đến
        loaiDelete = "1";
        break;
      case 1: // Thư đi
      case 2: // Nháp
        loaiDelete = "2";
        break;
      default:
        loaiDelete = "1";
    }

    DocumentEmailRepository repository = Get.find();
    var response = await repository.deleteEmail(
      DeleteEmailRequest(
        idUser: "B10CCD3B-4C45-4191-A573-62EA82A84A80",
        id: emailId,
        loaiDelete: loaiDelete,
      ),
    );

    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          print("------Day la ${emailId}");
          print("-------XOA THANH CONG");
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

  Future<void> restoreEmail(AllEmailResponse? email) async {
    if (isLoading.value) return;
    isLoading.value = true;

    String loaiDelete;
    if (email?.emailType == "Thư đến") {
      loaiDelete = "1";
    } else if (email?.emailType == "Thư đi" || email?.emailType == "Thư nháp") {
      loaiDelete = "2";
    } else {
      loaiDelete = "1";
    }

    DocumentEmailRepository repository = Get.find();
    var response = await repository.restoreEmail(
      RestoreEmailRequest(
        idUser: "B10CCD3B-4C45-4191-A573-62EA82A84A80",
        id: email?.id,
        loaiDelete: loaiDelete,
      ),
    );

    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          print("------Day la ${email?.id}");
          print("-------KHÔI PHỤC THÀNH CÔNG");
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


  Map<String, dynamic> getUsernameForEmail(AllEmailResponse? email) {
    String fullName = '';
    Widget? displayNameWidget;

    switch (currentTab.value) {
      case 0: // Thư đến
        fullName = (email?.listNguoiGui != null && email!.listNguoiGui!.isNotEmpty)
            ? email.listNguoiGui ?? ''
            : '';
        break;
      case 1: // Thư đi
        fullName = (email?.listNguoiNhan != null && email!.listNguoiNhan!.isNotEmpty)
            ? 'Đến: ${formatListNguoiNhan(email.listNguoiNhan ?? '')}'
            : '';
        break;
      case 2: // Nháp
        displayNameWidget = Text(
          'Thư nháp',
          style: GoogleFonts.openSans(color: Colors.red , fontWeight: FontWeight.w600),
        );
        break;
      case 3: // Thư rác
        if (email?.emailType == "Thư đến") {
          fullName = email?.listNguoiGui ?? '';
        } else if (email?.emailType == "Thư đi") {
          fullName = 'Tôi';
        } else if (email?.emailType == "Thư nháp") {
          displayNameWidget = Text(
            'Thư nháp',
            style: GoogleFonts.openSans(color: Colors.red , fontWeight: FontWeight.w600),
          );
        }
        break;
    }

    String initial = fullName.replaceFirst('Đến: ', '').isNotEmpty
        ? fullName.replaceFirst('Đến: ', '')[0].toUpperCase()
        : '';

    return {'fullName': fullName, 'initial': initial, 'displayNameWidget': displayNameWidget};
  }

  String formatListNguoiNhan(String listNguoiNhan) {
    List<String> recipients = listNguoiNhan.split(',');
    if (recipients.length <= 2) {
      return recipients.join(', ');
    } else {
      int remaining = recipients.length - 2;
      return '${recipients[0]}, ${recipients[1]} và $remaining người khác';
    }
  }


  void navigateToCreateEmail() {
    Fimber.d("navigateToCreateEmail()");
    Get.toNamed(Routes.CREATE_EMAIL);
  }

  void navigateToDetailEmail(int index) {
    Fimber.d("navigateToDetailEmail()");
    Get.toNamed(Routes.DETAIL_EMAIL , arguments: listEmail[index]);
  }

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }
}

