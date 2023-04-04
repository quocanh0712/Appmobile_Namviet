// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final myRequestDocumentResponse = myRequestDocumentResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';

part 'my_request_document_response.freezed.dart';
part 'my_request_document_response.g.dart';

MyRequestDocumentResponse myRequestDocumentResponseFromJson(String str) =>
    MyRequestDocumentResponse.fromJson(json.decode(str));

String myRequestDocumentResponseToJson(MyRequestDocumentResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class MyRequestDocumentResponse with _$MyRequestDocumentResponse {
  const factory MyRequestDocumentResponse({
    String? id,
    String? idForm,
    String? formname,
    DateTime? updateTime,
    int? status,
    List<ValueModel>? listForm,
  }) = _MyRequestDocumentResponse;

  factory MyRequestDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$MyRequestDocumentResponseFromJson(json);
}
