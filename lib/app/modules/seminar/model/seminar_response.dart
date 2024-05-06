

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'seminar_response.freezed.dart';
part 'seminar_response.g.dart';


SeminarResponse seminarResponseFromJson(String str) =>
    SeminarResponse.fromJson(json.decode(str));

String seminarResponseToJson(SeminarResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class SeminarResponse with _$SeminarResponse {
  factory SeminarResponse({
    int? id,
    int? namHanhChinh,
    String? namHoc,
    String? tenHoiThao,
    String? soQuyetDinh,
    String? ngayToChuc,
    String? ngayKetThuc,
    String? diaDiemToChuc,
    int? soLuongThamGia,
    String? mucDich,
    String? noiDung,
    String? ngonNgu,
    String? hinhThucTrinhBay,
    String? tenLoaiHoiThao,
}) = _SeminarResponse;

  factory SeminarResponse.fromJson(Map<String, dynamic> json) => _$SeminarResponseFromJson(json);
}