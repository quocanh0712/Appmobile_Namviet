

import 'package:ftu_lms/app/modules/international_news/controllers/international_news_controller.dart';
import 'package:get/get.dart';

class InternationalNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternationalNewsController>(
            () => InternationalNewsController(), fenix: true
    );
  }
}