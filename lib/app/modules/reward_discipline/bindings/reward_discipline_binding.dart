// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/reward_discipline/repository/reward_discipline_repository.dart';
import 'package:ftu_lms/app/modules/reward_discipline/repository/reward_discipline_repository_impl.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/discipline/controllers/discipline_controller.dart';
import 'package:ftu_lms/app/modules/reward_discipline/views/reward/controllers/reward_controller.dart';
import 'package:get/get.dart';

import '../controllers/reward_discipline_controller.dart';

class RewardDisciplineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RewardDisciplineRepository>(
      () => RewardDisciplineRepositoryImpl(),
    );
    Get.lazyPut<RewardController>(
      () => RewardController(),
    );
    Get.lazyPut<RewardDisciplineRepository>(
      () => RewardDisciplineRepositoryImpl(),
    );
    Get.lazyPut<DisciplineController>(
      () => DisciplineController(),
    );
    Get.lazyPut<RewardDisciplineController>(
      () => RewardDisciplineController(),
    );
  }
}
