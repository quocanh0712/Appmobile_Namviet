// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final myRequestDocumentRequest = myRequestDocumentRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'my_request_document_request.freezed.dart';
part 'my_request_document_request.g.dart';

MyRequestDocumentRequest myRequestDocumentRequestFromJson(String str) =>
    MyRequestDocumentRequest.fromJson(json.decode(str));

String myRequestDocumentRequestToJson(MyRequestDocumentRequest data) => json.encode(data.toJson());

@freezed
class MyRequestDocumentRequest with _$MyRequestDocumentRequest {
  const factory MyRequestDocumentRequest({
    int? startindex,
    int? length,
    String? keyword,
    int? status,
  }) = _MyRequestDocumentRequest;

  factory MyRequestDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$MyRequestDocumentRequestFromJson(json);
}
