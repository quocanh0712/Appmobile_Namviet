// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/document_form/model/delete_request_model.dart';
import 'package:ftu_lms/app/modules/document_form/model/detail_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/my_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/upload_file_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'document_form_client.freezed.dart';

@freezed
class DocumentFormClient extends BaseClientGenerator with _$DocumentFormClient {
  DocumentFormClient._() : super();

  factory DocumentFormClient.getDocumentForm(DocumentFormRequest? model) = _DocumentFormClient;

  factory DocumentFormClient.uploadFile(UploadFileRequest? model) = _UploadFileClient;

  factory DocumentFormClient.getMyRequestDocument(MyRequestDocumentRequest? model) =
      _MyRequestClient;

  factory DocumentFormClient.getDetailRequestDocument(DetailRequestDocumentRequest? model) =
      _DetailRequestClient;

  factory DocumentFormClient.insertNewRequestDocument(DocumentFormResponse? model) =
      _InsertNewRequestClient;

  factory DocumentFormClient.deleteRequestDocument(DeleteRequestModel? model) =
      _DeleteRequestClient;

  factory DocumentFormClient.updateRequestDocument(DocumentFormResponse? model) =
      _UpdateRequestClient;

  @override
  String get baseURL => '${super.baseURL}/MotCua';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getDetailRequestDocument: (data) => data?.toJson() ?? {},
        getMyRequestDocument: (data) => data?.toJson() ?? {},
        uploadFile: (data) => data?.toJson() ?? {},
        getDocumentForm: (data) => data?.toJson() ?? {},
        insertNewRequestDocument: (data) => data?.toJson() ?? {},
        deleteRequestDocument: (data) => data?.toJson() ?? {},
        updateRequestDocument: (data) => data?.toJson() ?? {},
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
      uploadFile: (model) => '/UploadFile',
      getMyRequestDocument: (model) => '/GetAllRequest',
      getDetailRequestDocument: (model) => '/GetByIdForm',
      insertNewRequestDocument: (model) => '/InsertRequest',
      deleteRequestDocument: (model) => '/DeleteRequest',
      updateRequestDocument: (model) => '/UpdateRequest',
      orElse: () => '/GetAllForm',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
