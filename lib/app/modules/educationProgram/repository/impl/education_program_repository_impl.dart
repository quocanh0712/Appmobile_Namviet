// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/educationProgram/model/education_program_request.dart';
import 'package:ftu_lms/app/modules/educationProgram/model/education_program_response.dart';
import 'package:ftu_lms/app/modules/educationProgram/repository/education_program_repository.dart';
import 'package:ftu_lms/data/remote/clients/education_program_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class EducationProgramRepositoryImpl extends EducationProgramRepository {
  @override
  Future<Result<BaseResponseObject<List<EducationProgramResponse?>?>, NetworkError>>
      getListEducationProgram(EducationProgramRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<EducationProgramResponse?>?>,
            BaseResponseObject<List<EducationProgramResponse?>?>>(
        route: EducationProgramClient.getEducationProgram(model),
        responseType: const BaseResponseObject<List<EducationProgramResponse?>?>());
  }
}
