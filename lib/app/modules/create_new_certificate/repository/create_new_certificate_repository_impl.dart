// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/create_new_certificate/model/certificate_insert_request.dart';
import 'package:ftu_lms/app/modules/create_new_certificate/repository/create_new_certificate_repository.dart';
import 'package:ftu_lms/data/remote/clients/certificate_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class CreateNewCertificateRepositoryImpl extends CreateNewCertificateRepository {
  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertNewCertificate(
      CertificateInsertRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: CertificateClient.insertNewCertificate(model),
        responseType: const BaseResponseObject<int?>());
  }
}
