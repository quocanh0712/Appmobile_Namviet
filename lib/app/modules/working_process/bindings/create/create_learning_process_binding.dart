// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository_impl.dart';
import 'package:get/get.dart';

import '../../controllers/create/create_learning_process_controller.dart';

class CreateLearningProcessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkingProcessRepository>(
      () => WorkingProcessRepositoryImpl(),
    );
    Get.lazyPut<CreateLearningProcessController>(
      () => CreateLearningProcessController(),
    );
  }
}
