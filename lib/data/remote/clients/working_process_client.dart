// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/working_process/model/language_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'working_process_client.freezed.dart';

@freezed
class WorkingProcessClient extends BaseClientGenerator with _$WorkingProcessClient {
  WorkingProcessClient._() : super();

  factory WorkingProcessClient.getWorkingProcessList(WorkingProcessRequest? model) =
      _WorkingProcessList;

  factory WorkingProcessClient.getLanguageProcessList(WorkingProcessRequest? model) =
      _LanguageProcessList;

  factory WorkingProcessClient.deleteWorkingProcess(WorkingProcessResponse? model) =
      _DeleteWorkingProcess;

  factory WorkingProcessClient.deleteLanguageProcess(LanguageProcessResponse? model) =
      _DeleteLanguageProcess;

  factory WorkingProcessClient.updateWorkingProcess(WorkingProcessResponse? model) =
      _UpdateWorkingProcess;

  factory WorkingProcessClient.updateLanguageProcess(LanguageProcessResponse? model) =
      _UpdateLanguageProcess;

  factory WorkingProcessClient.insertWorkingProcess(WorkingProcessResponse? model) =
      _InsertWorkingProcess;

  factory WorkingProcessClient.insertLanguageProcess(LanguageProcessResponse? model) =
      _InsertLanguageProcess;

  @override
  String get baseURL => '${super.baseURL}/QTCT';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getWorkingProcessList: (model) => model?.toJson() ?? {},
        getLanguageProcessList: (model) => model?.toJson() ?? {},
        deleteWorkingProcess: (model) => model?.toJson() ?? {},
        deleteLanguageProcess: (model) => model?.toJson() ?? {},
        updateWorkingProcess: (model) => model?.toJson() ?? {},
        updateLanguageProcess: (model) => model?.toJson() ?? {},
        insertWorkingProcess: (model) => model?.toJson() ?? {},
        insertLanguageProcess: (model) => model?.toJson() ?? {},
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
      getWorkingProcessList: (data) => '/GetAllQTCT',
      getLanguageProcessList: (data) => '/GetAllTDNN',
      deleteWorkingProcess: (data) => '/DeleteQTCT',
      deleteLanguageProcess: (data) => '/DeleteTDNN',
      updateWorkingProcess: (data) => '/UpdateQTCT',
      updateLanguageProcess: (data) => '/UpdateTDNN',
      insertWorkingProcess: (data) => '/InsertQTCT',
      insertLanguageProcess: (data) => '/InsertTDNN',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
