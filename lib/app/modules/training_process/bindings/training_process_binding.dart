


import 'package:ftu_lms/app/modules/training_process/controllers/training_process_controller.dart';
import 'package:get/get.dart';

class TrainingProcessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrainingProcessController>(
            () => TrainingProcessController(), fenix: true
    );
  }
}