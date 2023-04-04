// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/item_scientific_research/repository/impl/item_scientitic_research_repository_impl.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/repository/item_scientific_research_repository.dart';
import 'package:get/get.dart';

import '../controllers/item_scientific_research_controller.dart';

class ItemScientificResearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemScientificResearchRepository>(() => ItemScientificResearchRepositoryImpl());
    Get.lazyPut<ItemScientificResearchController>(
      () => ItemScientificResearchController(),
    );
  }
}
