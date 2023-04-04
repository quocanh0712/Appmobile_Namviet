// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/app/modules/list_certificates/repository/certificate_repository.dart';
import 'package:ftu_lms/app/modules/list_certificates/repository/certificate_repository_impl.dart';
import 'package:get/get.dart';

import '../controllers/list_certificates_controller.dart';

class ListCertificatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CertificateRepository>(
      () => CertificateRepositoryImpl(),
    );
    Get.lazyPut<ListCertificatesController>(
      () => ListCertificatesController(),
    );
  }
}
