// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/working_process/model/language_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/learning_profile_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'learning_process_client.freezed.dart';

@freezed
class LearningProcessClient extends BaseClientGenerator with _$LearningProcessClient {
  LearningProcessClient._() : super();

  factory LearningProcessClient.getLearningProcessList(WorkingProcessRequest? model) =
      _LearningProcessList;

  factory LearningProcessClient.getLearningProfileList(WorkingProcessRequest? model) =
      _LearningProfileList;

  factory LearningProcessClient.updateLearningProfileList(LearningProfileResponse? model) =
      _UpdateLearningProfileList;

  factory LearningProcessClient.deleteLearningProcess(LearningProcessResponse? model) =
      _DeleteLearningProcess;

  factory LearningProcessClient.updateLearningProcess(LearningProcessResponse? model) =
      _UpdateLearningProcess;

  factory LearningProcessClient.insertLearningProcess(LearningProcessResponse? model) =
      _InsertLearningProcess;

  @override
  String get baseURL => '${super.baseURL}/QTDT';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getLearningProcessList: (model) => model?.toJson() ?? {},
        getLearningProfileList: (model) => model?.toJson() ?? {},
        updateLearningProfileList: (model) => model?.toJson() ?? {},
        deleteLearningProcess: (model) => model?.toJson() ?? {},
        updateLearningProcess: (model) => model?.toJson() ?? {},
        insertLearningProcess: (model) => model?.toJson() ?? {},
        orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getLearningProcessList: (data) => '/GetAllQTDT',
      getLearningProfileList: (data) => '/GetAllQTDT_Lylich',
      updateLearningProfileList: (data) => '/UpdateQTDT_Lylich',
      deleteLearningProcess: (data) => '/DeleteQTDT',
      updateLearningProcess: (data) => '/UpdateQTDT',
      insertLearningProcess: (data) => '/InsertQTDT',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
