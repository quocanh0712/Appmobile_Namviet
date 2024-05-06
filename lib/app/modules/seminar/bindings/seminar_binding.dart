

import 'package:ftu_lms/app/modules/seminar/controllers/seminar_controller.dart';
import 'package:ftu_lms/app/modules/seminar/repository/impl/seminar_repository_impl.dart';
import 'package:ftu_lms/app/modules/seminar/repository/seminar_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SeminarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeminarController>(
            () => SeminarController(), fenix: true
    );
    Get.lazyPut<SeminarRepository>(() => SeminarRepositoryImpl());
  }
}