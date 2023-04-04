// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/elearning/controllers/elearning_controller.dart';
import 'package:ftu_lms/app/modules/elearning/repository/elearning_repository.dart';
import 'package:ftu_lms/app/modules/elearning/repository/impl/elearning_repository_impl.dart';
import 'package:get/get.dart';

class ElearningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ELearningRepository>(() => ELearningRepositoryImpl());
    Get.lazyPut<ElearningController>(() => ElearningController());
  }
}
