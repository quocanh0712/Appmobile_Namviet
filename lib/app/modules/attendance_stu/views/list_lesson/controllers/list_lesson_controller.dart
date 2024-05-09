

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/repository/attendance_stu_repository.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/repository/list_lesson_repository.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';

import '../../../../../routes/app_pages.dart';

class ListLessonController extends BaseController<ListLessonResponse> {
  AttendanceStuResponse? attendanceStu;
  String title = "";
  var listLesson = List<ListLessonResponse?>.empty(growable: true).obs;
  DateTime timeDaily = DateTime.now();



  @override
  void onInit() {
    super.onInit();



  }





  @override
  void onReady() async {
    super.onReady();
    loadListLesson();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;

  void loadListLesson() async {
    if (isLoading.value == true) return;
    try {
      EasyLoading.show(status: ''); // Show loading indicator
      isLoading.value = true;
      ListLessonRepository repository = Get.find();
      var response = await repository.getLessonList(
        ListLessonRequest(idLopTc: 2576, hocKy: 1, namHoc: timeDaily.year.toString()),
      );
      response.when(
        success: (data) {
          isLoading.value = false;
          if (data.isSuccess()) {
            listLesson.value = data.result?.toList() ?? [];
            print("-------$listLesson");
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


  void navigateListStudentAttendance(int index) {
    Get.toNamed(Routes.LIST_STUDENT_ATTENDANCE);

  }


}