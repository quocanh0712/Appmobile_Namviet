

import 'package:ftu_lms/app/modules/domestic_news/controllers/domestic_news_controller.dart';
import 'package:get/get.dart';

class DomesticNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DomesticNewsController>(
            () => DomesticNewsController(), fenix: true
    );
  }
}