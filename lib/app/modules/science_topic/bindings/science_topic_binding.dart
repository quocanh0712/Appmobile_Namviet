

import 'package:ftu_lms/app/modules/science_topic/controllers/science_topic_controller.dart';
import 'package:get/get.dart';

class ScienceTopicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScienceTopicController>(
            () => ScienceTopicController(), fenix: true
    );
  }
}