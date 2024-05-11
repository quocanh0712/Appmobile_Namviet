


import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/controllers/finance_teacher_controller.dart';
import 'package:ftu_lms/data/repositories/finance_repository.dart';
import 'package:ftu_lms/data/repositories/impl/finance_repository_impl.dart';
import 'package:get/get.dart';

class FinanceTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinanceTeacherController>(
          () => FinanceTeacherController(),
    );
    Get.lazyPut<FinanceRepository>(
          () => FinanceRepositoryImpl(), fenix: true
    );

  }
}