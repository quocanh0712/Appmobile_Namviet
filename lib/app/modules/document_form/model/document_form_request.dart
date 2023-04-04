// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final documentFormRequest = documentFormRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'document_form_request.freezed.dart';
part 'document_form_request.g.dart';

DocumentFormRequest documentFormRequestFromJson(String str) =>
    DocumentFormRequest.fromJson(json.decode(str));

String documentFormRequestToJson(DocumentFormRequest data) => json.encode(data.toJson());

@freezed
class DocumentFormRequest with _$DocumentFormRequest {
  const factory DocumentFormRequest({
    int? startindex,
    int? length,
    String? keyword,
  }) = _DocumentFormRequest;

  factory DocumentFormRequest.fromJson(Map<String, dynamic> json) =>
      _$DocumentFormRequestFromJson(json);
}
