// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/data/repositories/impl/user_repository_impl.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:get/get.dart';

import '../../personal/controllers/personal_controller.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
