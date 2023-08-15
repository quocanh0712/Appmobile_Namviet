// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final documentFormResponse = documentFormResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';

part 'edit_assign_document_response.freezed.dart';
part 'edit_assign_document_response.g.dart';

EditAssignDocumentResponse editAssignDocumentFromJson(String str) =>
    EditAssignDocumentResponse.fromJson(json.decode(str));

String editAssignDocumentToJson(EditAssignDocumentResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class EditAssignDocumentResponse with _$EditAssignDocumentResponse {
  const factory EditAssignDocumentResponse({
    List<FormFieldData>? listForm,
  }) = _EditAssignDocumentResponse;

  factory EditAssignDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$EditAssignDocumentResponseFromJson(json);
}
