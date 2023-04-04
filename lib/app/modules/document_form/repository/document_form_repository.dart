// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/document_form/model/delete_request_model.dart';
import 'package:ftu_lms/app/modules/document_form/model/detail_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/document_form_response.dart';
import 'package:ftu_lms/app/modules/document_form/model/my_request_document_request.dart';
import 'package:ftu_lms/app/modules/document_form/model/upload_file_request.dart';
import 'package:ftu_lms/data/bean/service_request_object/service_request_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class DocumentFormRepository {
  Future<Result<BaseResponseObject<List<DocumentFormResponse?>?>, NetworkError>>
      getListDocumentForm(DocumentFormRequest? model);

  Future<Result<BaseResponseObject<List<ServiceRequestObject?>?>, NetworkError>>
      getMyRequestDocument(MyRequestDocumentRequest? model);

  Future<Result<BaseResponseObject<String?>, NetworkError>> uploadFile(UploadFileRequest? model);

  Future<Result<BaseResponseObject, NetworkError>> getDetailRequestDocument(
      DetailRequestDocumentRequest? model);

  Future<Result<BaseResponseObject<String?>, NetworkError>> insertNewRequestDocument(
      DocumentFormResponse? model);

  Future<Result<BaseResponseObject<String?>, NetworkError>> updateRequestDocument(
      DocumentFormResponse? model);

  Future<Result<BaseResponseObject<String?>, NetworkError>> deleteRequestDocument(
      DeleteRequestModel? model);
}
