

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../item_scientific_research/repository/impl/item_scientitic_research_repository_impl.dart';
import '../../item_scientific_research/repository/item_scientific_research_repository.dart';
import '../controllers/add_item_scientific_research_controller.dart';

class AddItemScientificResearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemScientificResearchRepository>(() => ItemScientificResearchRepositoryImpl());
    Get.lazyPut<AddItemScientificResearchController>(
          () => AddItemScientificResearchController(),
    );
  }
}