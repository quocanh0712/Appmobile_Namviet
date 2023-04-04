// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/create_new_certificate/repository/create_new_certificate_repository.dart';
import 'package:ftu_lms/app/modules/create_new_certificate/repository/create_new_certificate_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/create_new_certificate_controller.dart';

class CreateNewCertificateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewCertificateRepository>(
      () => CreateNewCertificateRepositoryImpl(),
    );
    Get.lazyPut<CreateNewCertificateController>(
      () => CreateNewCertificateController(),
    );
  }
}
