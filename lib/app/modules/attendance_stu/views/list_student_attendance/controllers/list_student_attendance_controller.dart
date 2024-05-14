

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/repository/list_student_attendance_repository.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';

import '../../../model/year_time_response.dart';

class ListStudentAttendanceController extends BaseController{

  YearTimeResponse? yearTime;
  String title = "";
  var listStuAttendance = List<ListStudentAttendanceResponse?>.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();


  }





  @override
  void onReady() async {
    super.onReady();
    final List<dynamic> arguments = Get.arguments;

    int idLopTc = arguments[0] ?? 0;
    String idChiTiet = arguments[1] ?? 0;
    int tuanThu = arguments[2] ?? 0;

    loadListStuAttendance(idLopTc, idChiTiet, tuanThu);
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;

  void loadListStuAttendance(int idLopTc, String idChiTiet, int tuanThu) async {
    if (isLoading.value == true) return;
    try {
      EasyLoading.show(status: ''); // Show loading indicator
      isLoading.value = true;
      ListStudentAttendanceRepository repository = Get.find();
      var response = await repository.getStudentAttendanceList(
        ListStudentAttendanceRequest(idLopTc: idLopTc, idChiTiet: idChiTiet.toIntOrNull(), tuanThu: tuanThu),
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