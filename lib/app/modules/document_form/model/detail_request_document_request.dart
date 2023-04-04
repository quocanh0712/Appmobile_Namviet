// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final detailRequestDocumentRequest = detailRequestDocumentRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_request_document_request.freezed.dart';
part 'detail_request_document_request.g.dart';

DetailRequestDocumentRequest detailRequestDocumentRequestFromJson(String str) =>
    DetailRequestDocumentRequest.fromJson(json.decode(str));

String detailRequestDocumentRequestToJson(DetailRequestDocumentRequest data) =>
    json.encode(data.toJson());

@freezed
class DetailRequestDocumentRequest with _$DetailRequestDocumentRequest {
  const factory DetailRequestDocumentRequest({
    int? id,
  }) = _DetailRequestDocumentRequest;

  factory DetailRequestDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$DetailRequestDocumentRequestFromJson(json);
}
