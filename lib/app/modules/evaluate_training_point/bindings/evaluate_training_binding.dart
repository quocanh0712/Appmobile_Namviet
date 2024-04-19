

import 'package:ftu_lms/app/modules/evaluate_training_point/controllers/evaluate_training_controller.dart';
import 'package:get/get.dart';

class EvaluateTrainingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EvaluateTrainingController>(
            () => EvaluateTrainingController(), fenix: true
    );
  }
}