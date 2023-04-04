// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/list_teacher_info/repository/list_teacher_info_repository.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/repository/list_teacher_info_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/list_teacher_info_controller.dart';

class ListTeacherInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListTeacherInfoRepository>(() => ListTeacherInfoRepositoryImpl());
    Get.lazyPut<ListTeacherInfoController>(() => ListTeacherInfoController());
  }
}
