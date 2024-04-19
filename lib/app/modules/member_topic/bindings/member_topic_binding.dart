

import 'package:ftu_lms/app/modules/member_topic/controllers/member_topic_controller.dart';
import 'package:get/get.dart';

class MemberTopicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberTopicController>(
            () => MemberTopicController(), fenix: true
    );
  }
}