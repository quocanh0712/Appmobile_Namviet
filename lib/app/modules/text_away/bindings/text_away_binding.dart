

import 'package:ftu_lms/app/modules/text_away/controllers/text_away_controller.dart';
import 'package:get/get.dart';

class TextAwayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextAwayController>(
            () => TextAwayController(), fenix: true
    );
  }
}