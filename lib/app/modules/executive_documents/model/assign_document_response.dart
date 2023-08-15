// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final workingProcessResponse = workingProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assign_document_response.freezed.dart';
part 'assign_document_response.g.dart';

AssignDocumentResponse AssignDocumentResponseFromJson(String str) =>
    AssignDocumentResponse.fromJson(json.decode(str));

String AssignDocumentResponseToJson(AssignDocumentResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class AssignDocumentResponse with _$AssignDocumentResponse {
  const factory AssignDocumentResponse({
    int? id,
    String? TrichYeu,
    String? NgayBanHanh,
    String? DonVi,
    String? TrangThai,
  }) = _AssignDocumentResponse;

  factory AssignDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$AssignDocumentResponseFromJson(json);
}
