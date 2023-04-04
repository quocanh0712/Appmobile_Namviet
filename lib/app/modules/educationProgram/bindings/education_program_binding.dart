// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/educationProgram/repository/education_program_repository.dart';
import 'package:ftu_lms/app/modules/educationProgram/repository/impl/education_program_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/education_program_controller.dart';

class EducationProgramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EducationProgramRepository>(() => EducationProgramRepositoryImpl());
    Get.lazyPut<EducationProgramController>(
      () => EducationProgramController(),
    );
  }
}
