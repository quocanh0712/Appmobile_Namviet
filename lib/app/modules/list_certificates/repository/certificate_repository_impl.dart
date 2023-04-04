// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/list_certificates/model/certificate_request.dart';
import 'package:ftu_lms/app/modules/list_certificates/model/certificate_response.dart';
import 'package:ftu_lms/app/modules/list_certificates/repository/certificate_repository.dart';
import 'package:ftu_lms/data/remote/clients/certificate_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class CertificateRepositoryImpl extends CertificateRepository {
  @override
  Future<Result<BaseResponseObject<List<CertificateResponse?>?>, NetworkError>> getCertificateList(
      CertificateRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<CertificateResponse?>?>,
            BaseResponseObject<List<CertificateResponse?>?>>(
        route: CertificateClient.getCertificateList(model),
        responseType: const BaseResponseObject<List<CertificateResponse?>?>());
  }
}
