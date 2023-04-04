// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final uploadFileRequest = uploadFileRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'upload_file_request.freezed.dart';
part 'upload_file_request.g.dart';

UploadFileRequest uploadFileRequestFromJson(String str) =>
    UploadFileRequest.fromJson(json.decode(str));

String uploadFileRequestToJson(UploadFileRequest data) => json.encode(data.toJson());

@freezed
class UploadFileRequest with _$UploadFileRequest {
  const factory UploadFileRequest({
    String? name,
    String? strBase64,
  }) = _UploadFileRequest;

  factory UploadFileRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadFileRequestFromJson(json);
}
