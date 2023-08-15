// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final documentFormResponse = documentFormResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';

part 'add_email_response.freezed.dart';
part 'add_email_response.g.dart';

AddEmailResponse AddEmailResponseFromJson(String str) =>
    AddEmailResponse.fromJson(json.decode(str));

String AddEmailResponseToJson(AddEmailResponse data) =>
    json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
abstract class AddEmailResponse with _$AddEmailResponse {
  const factory AddEmailResponse({
    List<FormFieldData>? listForm,
  }) = _AddEmailResponse;

  factory AddEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$AddEmailResponseFromJson(json);
}
