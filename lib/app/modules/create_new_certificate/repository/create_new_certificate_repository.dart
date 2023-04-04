// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/create_new_certificate/model/certificate_insert_request.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class CreateNewCertificateRepository {
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertNewCertificate(
      CertificateInsertRequest? model);
}
