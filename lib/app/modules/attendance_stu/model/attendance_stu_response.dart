



import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'attendance_stu_response.freezed.dart';
part 'attendance_stu_response.g.dart';


AttendanceStuResponse attendanceStuResponseFromJson(String str) =>
    AttendanceStuResponse.fromJson(json.decode(str));

String attendanceStuResponseToJson(AttendanceStuResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class AttendanceStuResponse with _$AttendanceStuResponse {
  factory AttendanceStuResponse({
    @JsonKey(name: 'iD_mon_tc') int? idMonTc,
    @JsonKey(name: 'iD_mon') int? idMon,
    @JsonKey(name: 'iD_lop_tc') int? idLopTc,
    @JsonKey(name: 'ten_lop_hp') String? tenLopHp,
    @JsonKey(name: 'ten_mon') String? tenMon,
    @JsonKey(name: 'ky_dang_ky') int? kyDangKy,
    @JsonKey(name: 'iD_lop_lt') int? idLopLt,
    @JsonKey(name: 'iD_hinh_thuc_thi') int? idHinhThucThi,
    @JsonKey(name: 'ky_hieu') int? kyHieu,
    @JsonKey(name: 'so_tin_chi') int? soTinChi,
    int? stt,
    @JsonKey(name: 'ho_ten') String? hoTen,
    @JsonKey(name: 'siso_lop_tc') int? siSoLopTc,
    @JsonKey(name: 'ten_lop') String? tenLop,
  }) = _AttendanceStuResponse;

  factory AttendanceStuResponse.fromJson(Map<String, dynamic> json) => _$AttendanceStuResponseFromJson(json);
}