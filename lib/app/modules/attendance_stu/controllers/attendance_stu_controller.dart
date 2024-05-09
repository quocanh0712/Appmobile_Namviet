


import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/repository/attendance_stu_repository.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/result.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../base/base_list_controller.dart';
import '../model/attendance_stu_request.dart';



class AttendanceStuController extends BaseController<AttendanceStuResponse> {
  String title = "";
  var listClass = List<AttendanceStuResponse?>.empty(growable: true).obs;
  var expandedList = List<bool>.empty(growable: true).obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  DateTime timeDaily = DateTime.now();

  @override
  void onInit() {
    super.onInit();

    expandedList.assignAll(List.generate(listClass.length, (_) => false));
  }

  bool isExpanded(int index) {
    return expandedList.length > index ? expandedList[index] : false;
  }

  void setExpanded(int index, bool expanded) {
    if (index < expandedList.length) {
      expandedList[index] = expanded;
      update(); // Notify listeners
    }
  }

  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false;
  }



  @override
  void onReady() async {
    super.onReady();
    userObject.value = await userRepo.retrieveUserInfo();
    loadClassList();
    configLoading();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;

  void loadClassList() async {
    if (isLoading.value == true) return;
    try {
      EasyLoading.show(status: '');
      isLoading.value = true;
      AttendanceStuRepository repository = Get.find();
      var response = await repository.getClassList(
        AttendanceStuRequest(
          startindex: 0,
          length: 10,
          hocKy: 1,
          namHoc: timeDaily.year.toString(),
          userGroup: 3,
          idUser: userObject.value?.iduser.toString(),
        ),
      );
      response.when(
        success: (data) {
          isLoading.value = false;
          if (data.isSuccess()) {
            listClass.value = data.result?.toList() ?? [];
            print("-------$listClass");
          } else {
            isError.value = data.message;
          }
        },
        failure: (e) {
          isLoading.value = false;
          isError.value = e.toString();
        },
      );
    } finally {
      EasyLoading.dismiss(); // Dismiss loading indicator
    }
  }


  void navigateListLesson(int index) {
    Get.toNamed(Routes.LIST_LESSON);

  }
}




