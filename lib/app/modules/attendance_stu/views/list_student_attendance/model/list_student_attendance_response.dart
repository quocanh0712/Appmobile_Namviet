


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/annotations/lib/annotations.dart';

part 'list_student_attendance_response.freezed.dart';
part 'list_student_attendance_response.g.dart';


ListStudentAttendanceResponse listStudentAttendanceResponseFromJson(String str) =>
    ListStudentAttendanceResponse.fromJson(json.decode(str));

String attendanceStuResponseToJson(ListStudentAttendanceResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class ListStudentAttendanceResponse with _$ListStudentAttendanceResponse {
  factory ListStudentAttendanceResponse({
    @JsonKey(name: 'ma_sv') String? maSv,
    @JsonKey(name: 'ho_ten') String? hoTen,
    @JsonKey(name: 'ten_lop') String? tenLop,
    @JsonKey(name: 'iD_sv') String? idSv,
    @JsonKey(name: 'iD_lop_tc') int? idLopTc,
    int? tiet,
    @JsonKey(name: 'so_tiet') int? soTiet,
    @JsonKey(name: 'ngay_sinh') String? ngaySinh,
    int? tongSoTietNghi,
  }) = _ListStudentAttendanceResponse;

  factory ListStudentAttendanceResponse.fromJson(Map<String, dynamic> json) => _$ListStudentAttendanceResponseFromJson(json);
}