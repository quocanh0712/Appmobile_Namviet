// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final workingProcessResponse = workingProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_response.freezed.dart';
part 'email_response.g.dart';

EmailResponse EmailResponseFromJson(String str) =>
    EmailResponse.fromJson(json.decode(str));

String EmailResponseToJson(EmailResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class EmailResponse with _$EmailResponse {
  const factory EmailResponse({
    int? id,
    String? NguoiGui,
    String? TieuDe,
    String? ThoiGian,
  }) = _EmailResponse;

  factory EmailResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailResponseFromJson(json);
}
