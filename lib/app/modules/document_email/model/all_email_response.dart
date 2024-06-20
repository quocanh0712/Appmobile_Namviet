import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'all_email_response.freezed.dart';
part 'all_email_response.g.dart';

AllEmailResponse allEmailResponseFromJson(String str) =>
    AllEmailResponse.fromJson(json.decode(str));

String allEmailResponseToJson(AllEmailResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class AllEmailResponse with _$AllEmailResponse {
  factory AllEmailResponse({
    int? id,
    String? noiDung,
    String? tieuDe,
    int? idTrangThai,
    String? createdDate,
    String? listNguoiNhan,
    String? listFile,
    String? listNguoiGui,
    String? emailType,
  }) = _AllEmailResponse;

  factory AllEmailResponse.fromJson(Map<String, dynamic> json) => _$AllEmailResponseFromJson(json);
}

