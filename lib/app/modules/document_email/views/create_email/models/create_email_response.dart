


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/annotations/lib/annotations.dart';

part 'create_email_response.freezed.dart';
part 'create_email_response.g.dart';

CreateEmailResponse createEmailResponseFromJson(String str) =>
    CreateEmailResponse.fromJson(json.decode(str));

String createEmailResponseToJson(CreateEmailResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class CreateEmailResponse with _$CreateEmailResponse {
  factory CreateEmailResponse({
    String? iduser,
    List<int>? listNguoiNhan,
    String? tieuDe,
    String? noiDung,
    List<String>? listFile,
    int? phanLoai,
  }) = _CreateEmailResponse;

  factory CreateEmailResponse.fromJson(Map<String, dynamic> json) => _$CreateEmailResponseFromJson(json);
}