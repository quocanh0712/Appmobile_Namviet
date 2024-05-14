

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/repository/attendance_stu_repository.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/repository/list_lesson_repository.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:get/get.dart';

import '../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../data/remote/wrappers/result.dart';
import '../../../../../routes/app_pages.dart';

class ListLessonController extends BaseController<ListLessonResponse> {
  String title = "";
  var listLesson = List<ListLessonResponse?>.empty(growable: true).obs;
  DateTime timeDaily = DateTime.now();
  int idLopTc = 0;



  @override
  void onInit() async{

    super.onInit();
    var data = Get.arguments;
  }


  @override
  void onReady() async {
    super.onReady();

    final List<dynamic> arguments = Get.arguments;


     idLopTc = arguments[0] ?? 0;
    String namHienTai = arguments[1] ?? "0";
    int hocKyHienTai = arguments[2] ?? 0;

    loadListLesson(idLopTc, namHienTai, hocKyHienTai);

  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;

  void loadListLesson(int idLopTc, String namHienTai , int hocKyHienTai) async {
    if (isLoading.value == true) return;
    try {
      EasyLoading.show(status: ''); // Show loading indicator
      isLoading.value = true;
      ListLessonRepository repository = Get.find();
      var response = await repository.getLessonList(
        ListLessonRequest(idLopTc: idLopTc , hocKy: hocKyHienTai, namHoc: namHienTai),
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
    Get.toNamed(Routes.LIST_STUDENT_ATTENDANCE, arguments: [idLopTc, listLesson[0]?.id, listLesson[0]?.tuanThu]);
  }
}

