// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final certificateResponse = certificateResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_response.freezed.dart';
part 'certificate_response.g.dart';

CertificateResponse certificateResponseFromJson(String str) =>
    CertificateResponse.fromJson(json.decode(str));

String certificateResponseToJson(CertificateResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class CertificateResponse with _$CertificateResponse {
  const factory CertificateResponse({
    int? id,
    String? certificateName,
    int? graduationYear,
    String? degree,
    String? academicRank,
    String? studyPlace,
    String? fileName,
    int? status,
  }) = _CertificateResponse;

  factory CertificateResponse.fromJson(Map<String, dynamic> json) =>
      _$CertificateResponseFromJson(json);
}
