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
    List<NguoiNhan>? listNguoiNhan,
    List<dynamic>? listFile,
    List<NguoiGui>? listNguoiGui,
  }) = _AllEmailResponse;

  factory AllEmailResponse.fromJson(Map<String, dynamic> json) => _$AllEmailResponseFromJson(json);
}

@freezed
@genJsonT4ThisOne
class NguoiNhan with _$NguoiNhan {
  factory NguoiNhan({
    int? id,
    String? username,
    String? fullName,
    String? email,
  }) = _NguoiNhan;

  factory NguoiNhan.fromJson(Map<String, dynamic> json) => _$NguoiNhanFromJson(json);
}

@freezed
@genJsonT4ThisOne
class NguoiGui with _$NguoiGui {
  factory NguoiGui({
    int? id,
    String? username,
    String? fullName,
    String? email,
  }) = _NguoiGui;

  factory NguoiGui.fromJson(Map<String, dynamic> json) => _$NguoiGuiFromJson(json);
}