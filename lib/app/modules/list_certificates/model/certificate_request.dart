// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final scientificResearchRequest = scientificResearchRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'certificate_request.freezed.dart';
part 'certificate_request.g.dart';

CertificateRequest certificateRequestFromJson(String str) =>
    CertificateRequest.fromJson(json.decode(str));

String certificateRequestToJson(CertificateRequest data) => json.encode(data.toJson());

@freezed
abstract class CertificateRequest with _$CertificateRequest {
  const factory CertificateRequest({
    int? startindex,
    int? length,
  }) = _CertificateRequest;

  factory CertificateRequest.fromJson(Map<String, dynamic> json) =>
      _$CertificateRequestFromJson(json);
}
