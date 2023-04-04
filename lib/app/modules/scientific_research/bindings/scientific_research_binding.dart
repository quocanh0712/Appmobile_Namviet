// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/scientific_research/repository/impl/scientitic_research_repository_impl.dart';
import 'package:ftu_lms/app/modules/scientific_research/repository/scientific_research_repository.dart';
import 'package:get/get.dart';

import '../controllers/scientific_research_controller.dart';

class ScientificResearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScientificResearchRepository>(() => ScientificResearchRepositoryImpl());
    Get.lazyPut<ScientificResearchController>(
      () => ScientificResearchController(),
    );
  }
}
