

import 'package:ftu_lms/app/modules/proof/controllers/proof_controller.dart';
import 'package:get/get.dart';

class ProofBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProofController>(
            () => ProofController(), fenix: true
    );
  }
}