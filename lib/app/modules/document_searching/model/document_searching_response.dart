



import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'document_searching_response.freezed.dart';
part 'document_searching_response.g.dart';


DocumentSearchingResponse documentSearchingResponseFromJson(String str) =>
    DocumentSearchingResponse.fromJson(json.decode(str));

String documentSearchingResponseToJson(DocumentSearchingResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class DocumentSearchingResponse with _$DocumentSearchingResponse {
  factory DocumentSearchingResponse({
    int? id,
    String? soKyHieu,
    int? soDiDen,
    String? trichYeu,
    String? ngayBanHanh,
    String? ngayNhanGui,
    String? coQuanBanHanh,
    String? fileUrl,
    int? trangThaiPhanPhoi,
  }) = _DocumentSearchingResponse;

  factory DocumentSearchingResponse.fromJson(Map<String, dynamic> json) => _$DocumentSearchingResponseFromJson(json);
}