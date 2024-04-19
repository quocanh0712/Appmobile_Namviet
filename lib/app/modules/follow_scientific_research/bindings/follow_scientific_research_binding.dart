

import 'package:ftu_lms/app/modules/follow_scientific_research/controllers/follow_scientific_research_controller.dart';
import 'package:get/get.dart';

class FollowScientificResearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FollowScientificResearchController>(
            () => FollowScientificResearchController(), fenix: true
    );
  }
}