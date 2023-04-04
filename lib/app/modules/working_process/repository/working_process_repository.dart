// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/working_process/model/key_value_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/language_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_profile_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class WorkingProcessRepository {
  Future<Result<BaseResponseObject<List<WorkingProcessResponse?>?>, NetworkError>>
      getWorkingProcessList(WorkingProcessRequest? model);

  Future<Result<BaseResponseObject<List<LanguageProcessResponse?>?>, NetworkError>>
      getLanguageProcessResponseList(WorkingProcessRequest? model);

  Future<Result<BaseResponseObject<List<LearningProcessResponse?>?>, NetworkError>>
      getLearningProcessResponseList(WorkingProcessRequest? model);

  Future<Result<BaseResponseObject<LearningProfileResponse?>, NetworkError>> getLearningProfile(
      WorkingProcessRequest? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> updateLearningProfile(
      LearningProfileResponse? model);

  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>>
      getAcademicRankConfigList();

  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>> getDegreeConfigList();

  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>> getTitleConfigList();

  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>>
      getPositionConfigList();

  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteWorkingProcess(
      WorkingProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteLanguageProcess(
      LanguageProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteLearningProcess(
      LearningProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> updateWorkingProcess(
      WorkingProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> updateLanguageProcess(
      LanguageProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> updateLearningProcess(
      LearningProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> insertWorkingProcess(
      WorkingProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> insertLanguageProcess(
      LanguageProcessResponse? model);

  Future<Result<BaseResponseObject<int?>, NetworkError>> insertLearningProcess(
      LearningProcessResponse? model);
}
