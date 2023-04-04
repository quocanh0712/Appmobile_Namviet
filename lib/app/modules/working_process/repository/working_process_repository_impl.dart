// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/working_process/model/key_value_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/language_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_profile_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/data/remote/clients/category_config_client.dart';
import 'package:ftu_lms/data/remote/clients/learning_process_client.dart';
import 'package:ftu_lms/data/remote/clients/working_process_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class WorkingProcessRepositoryImpl extends WorkingProcessRepository {
  @override
  Future<Result<BaseResponseObject<List<LanguageProcessResponse?>?>, NetworkError>>
      getLanguageProcessResponseList(WorkingProcessRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<LanguageProcessResponse?>?>,
            BaseResponseObject<List<LanguageProcessResponse?>?>>(
        route: WorkingProcessClient.getLanguageProcessList(model),
        responseType: const BaseResponseObject<List<LanguageProcessResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<LearningProcessResponse?>?>, NetworkError>>
      getLearningProcessResponseList(WorkingProcessRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<LearningProcessResponse?>?>,
            BaseResponseObject<List<LearningProcessResponse?>?>>(
        route: LearningProcessClient.getLearningProcessList(model),
        responseType: const BaseResponseObject<List<LearningProcessResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<WorkingProcessResponse?>?>, NetworkError>>
      getWorkingProcessList(WorkingProcessRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<WorkingProcessResponse?>?>,
            BaseResponseObject<List<WorkingProcessResponse?>?>>(
        route: WorkingProcessClient.getWorkingProcessList(model),
        responseType: const BaseResponseObject<List<WorkingProcessResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<LearningProfileResponse?>, NetworkError>> getLearningProfile(
      WorkingProcessRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<LearningProfileResponse?>,
            BaseResponseObject<LearningProfileResponse?>>(
        route: LearningProcessClient.getLearningProfileList(model),
        responseType: const BaseResponseObject<LearningProfileResponse?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateLearningProfile(
      LearningProfileResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: LearningProcessClient.updateLearningProfileList(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>>
      getAcademicRankConfigList() {
    return NetworkExecutor.execute<BaseResponseObject<List<KeyValueResponse?>?>,
            BaseResponseObject<List<KeyValueResponse?>?>>(
        route: CategoryConfigClient.getAcademicRank(),
        responseType: const BaseResponseObject<List<KeyValueResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>>
      getDegreeConfigList() {
    return NetworkExecutor.execute<BaseResponseObject<List<KeyValueResponse?>?>,
            BaseResponseObject<List<KeyValueResponse?>?>>(
        route: CategoryConfigClient.getDegree(),
        responseType: const BaseResponseObject<List<KeyValueResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>>
      getPositionConfigList() {
    return NetworkExecutor.execute<BaseResponseObject<List<KeyValueResponse?>?>,
            BaseResponseObject<List<KeyValueResponse?>?>>(
        route: CategoryConfigClient.getTitle(),
        responseType: const BaseResponseObject<List<KeyValueResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<KeyValueResponse?>?>, NetworkError>> getTitleConfigList() {
    return NetworkExecutor.execute<BaseResponseObject<List<KeyValueResponse?>?>,
            BaseResponseObject<List<KeyValueResponse?>?>>(
        route: CategoryConfigClient.getPosition(),
        responseType: const BaseResponseObject<List<KeyValueResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteLanguageProcess(
      LanguageProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: WorkingProcessClient.deleteLanguageProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteLearningProcess(
      LearningProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: LearningProcessClient.deleteLearningProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteWorkingProcess(
      WorkingProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: WorkingProcessClient.deleteWorkingProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateLanguageProcess(
      LanguageProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: WorkingProcessClient.updateLanguageProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateLearningProcess(
      LearningProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: LearningProcessClient.updateLearningProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateWorkingProcess(
      WorkingProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: WorkingProcessClient.updateWorkingProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertLanguageProcess(
      LanguageProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: WorkingProcessClient.insertLanguageProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertLearningProcess(
      LearningProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: LearningProcessClient.updateLearningProcess(model),
        responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> insertWorkingProcess(
      WorkingProcessResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: WorkingProcessClient.insertWorkingProcess(model),
        responseType: const BaseResponseObject<int?>());
  }
}
