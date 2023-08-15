// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final workingProcessResponse = workingProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forward_document_response.freezed.dart';
part 'forward_document_response.g.dart';

ForwardDocumentResponse ForwardDocumentResponseFromJson(String str) =>
    ForwardDocumentResponse.fromJson(json.decode(str));

String ForwardDocumentResponseToJson(ForwardDocumentResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class ForwardDocumentResponse with _$ForwardDocumentResponse {
  const factory ForwardDocumentResponse({
    int? id,
    String? TrichYeu,
    String? NgayBanHanh,
    String? SoDi,
    String? TrangThai,
  }) = _ForwardDocumentResponse;

  factory ForwardDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$ForwardDocumentResponseFromJson(json);
}
