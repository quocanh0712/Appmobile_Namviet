import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../../../../utils/annotations/lib/annotations.dart';

part 'upload_file_response.freezed.dart';
part 'upload_file_response.g.dart';

UploadFileResponse uploadFileResponseFromJson(String str) =>
    UploadFileResponse.fromJson(json.decode(str));

String uploadFileResponseToJson(UploadFileResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class UploadFileResponse with _$UploadFileResponse {
  factory UploadFileResponse({
    String? fullPath,
    String? filename,
  }) = _UploadFileResponse;

  factory UploadFileResponse.fromJson(Map<String, dynamic> json) => _$UploadFileResponseFromJson(json);
}