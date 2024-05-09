

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/repository/list_student_attendance_repository.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';

class ListStudentAttendanceController extends BaseController{
  String title = "";
  var listStuAttendance = List<ListStudentAttendanceResponse?>.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();


  }





  @override
  void onReady() async {
    super.onReady();
    loadListStuAttendance();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;

  void loadListStuAttendance() async {
    if (isLoading.value == true) return;
    try {
      EasyLoading.show(status: ''); // Show loading indicator
      isLoading.value = true;
      ListStudentAttendanceRepository repository = Get.find();
      var response = await repository.getStudentAttendanceList(
        ListStudentAttendanceRequest(idLopTc: 2576, idChiTiet: 4125, tuanThu: 2),
      );
      response.when(
        success: (data) {
          isLoading.value = false;
          if (data.isSuccess()) {
            listStuAttendance.value = data.result?.toList() ?? [];
            print("-------$listStuAttendance");
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