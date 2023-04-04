// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final certificateInsertRequest = certificateInsertRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'certificate_insert_request.freezed.dart';
part 'certificate_insert_request.g.dart';

CertificateInsertRequest certificateInsertRequestFromJson(String str) =>
    CertificateInsertRequest.fromJson(json.decode(str));

String certificateInsertRequestToJson(CertificateInsertRequest data) => json.encode(data.toJson());

@freezed
class CertificateInsertRequest with _$CertificateInsertRequest {
  const factory CertificateInsertRequest({
    String? certificateName,
    int? graduationYear,
    String? degree,
    String? academicRank,
    String? studyPlace,
    String? fileName,
  }) = _CertificateInsertRequest;

  factory CertificateInsertRequest.fromJson(Map<String, dynamic> json) =>
      _$CertificateInsertRequestFromJson(json);
}
