

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/models/finance_teacher_request.dart';
import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/models/finance_teacher_response.dart';
import 'package:get/get.dart';

import '../../../../../../data/bean/user_object/user_object.dart';
import '../../../../../../data/repositories/finance_repository.dart';
import '../../../../../../data/repositories/user_repository.dart';

class FinanceTeacherController extends BaseController {
  String title = "";
  var listSalary = List<FinanceTeacherResponse?>.empty(growable: true).obs;
  var expandedList = List<bool>.empty(growable: true).obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  DateTime timeDaily = DateTime.now();

  @override
  void onInit() {
    super.onInit();


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
      FinanceRepository repository = Get.find();
      var response = await repository.getSalary(
        FinanceTeacherRequest(
          startindex: 1,
          length: 10,
          year:"2024",
          month: 4,
          iduser: userObject.value?.iduser.toString(),
        ),
      );
      response.when(
        success: (data) {
          isLoading.value = false;
          if (data.isSuccess()) {
            listSalary.value = data.result?.toList() ?? [];
            print("-------$listSalary");
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
}