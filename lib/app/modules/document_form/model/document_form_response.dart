// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final documentFormResponse = documentFormResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';

part 'document_form_response.freezed.dart';
part 'document_form_response.g.dart';

DocumentFormResponse documentFormResponseFromJson(String str) =>
    DocumentFormResponse.fromJson(json.decode(str));

String documentFormResponseToJson(DocumentFormResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class DocumentFormResponse with _$DocumentFormResponse {
  const factory DocumentFormResponse({
    String? id,
    String? idForm,
    String? formname,
    String? filename,
    DateTime? updateTime,
    int? status,
    String? linkImageOnl,
    String? linkDownload,
    List<FormFieldData>? listForm,
  }) = _DocumentFormResponse;

  factory DocumentFormResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentFormResponseFromJson(json);
}
