


import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/repository/impl/list_lesson_repository_impl.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/repository/list_lesson_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/list_lesson_controller.dart';

class ListLessonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListLessonController>(
            () => ListLessonController(), fenix: true
    );
    Get.lazyPut<ListLessonRepository>(() => ListLessonRepositoryImpl());
  }
}