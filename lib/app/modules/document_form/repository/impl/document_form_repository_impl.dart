// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/document_form/model/delete_request_model.dart';
import 'package:ftu_lms/app/modules/document_form/model/detail_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/my_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/my_request_document_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/upload_file_request.dart';
import 'package:ftu_lms/app/modules/document_form/repository/document_form_repository.dart';
import 'package:ftu_lms/data/bean/service_request_object/service_request_object.dart';
import 'package:ftu_lms/data/remote/clients/document_form_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class DocumentFormRepositoryImpl extends DocumentFormRepository {
  @override
  Future<Result<BaseResponseObject<List<DocumentFormResponse?>?>, NetworkError>>
      getListDocumentForm(DocumentFormRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<DocumentFormResponse?>?>,
            BaseResponseObject<List<DocumentFormResponse?>?>>(
        route: DocumentFormClient.getDocumentForm(model),
        responseType: const BaseResponseObject<List<DocumentFormResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject, NetworkError>> getDetailRequestDocument(
      DetailRequestDocumentRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<DocumentFormResponse?>, BaseResponseObject>(
        route: DocumentFormClient.getDetailRequestDocument(model),
        responseType: const BaseResponseObject<DocumentFormResponse?>());
  }

  @override
  Future<Result<BaseResponseObject<List<ServiceRequestObject?>?>, NetworkError>>
      getMyRequestDocument(MyRequestDocumentRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<ServiceRequestObject?>?>,
            BaseResponseObject<List<ServiceRequestObject?>?>>(
        route: DocumentFormClient.getMyRequestDocument(model),
        responseType: const BaseResponseObject<List<ServiceRequestObject?>?>());
  }

  @override
  Future<Result<BaseResponseObject<String?>, NetworkError>> uploadFile(UploadFileRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<String?>, BaseResponseObject<String?>>(
        route: DocumentFormClient.uploadFile(model),
        responseType: const BaseResponseObject<String?>());
  }

  @override
  Future<Result<BaseResponseObject<String?>, NetworkError>> insertNewRequestDocument(
      DocumentFormResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<String?>, BaseResponseObject<String?>>(
        route: DocumentFormClient.insertNewRequestDocument(model),
        responseType: const BaseResponseObject<String?>());
  }

  @override
  Future<Result<BaseResponseObject<String?>, NetworkError>> deleteRequestDocument(
      DeleteRequestModel? model) {
    return NetworkExecutor.execute<BaseResponseObject<String?>, BaseResponseObject<String?>>(
        route: DocumentFormClient.deleteRequestDocument(model),
        responseType: const BaseResponseObject<String?>());
  }

  @override
  Future<Result<BaseResponseObject<String?>, NetworkError>> updateRequestDocument(
      DocumentFormResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<String?>, BaseResponseObject<String?>>(
        route: DocumentFormClient.updateRequestDocument(model),
        responseType: const BaseResponseObject<String?>());
  }
}
